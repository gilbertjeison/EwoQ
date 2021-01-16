using EwoQ.Database;
using EwoQ.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class DaoUsuarios
    {
        private static DaoUsuarios daoInstance = null;

        public static DaoUsuarios DaoInstance { 
            get 
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoUsuarios();
                }                    

                return daoInstance;                
            } 
        }

        public AspNetUsers GetUser(string id)
        {
            AspNetUsers user = new AspNetUsers();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = (from u in context.AspNetUsers
                                 where u.Id.Equals(id)
                                 select u).FirstOrDefault();

                    user = query;
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return user;
        }

        public AspNetUsers GetUserByMail(string email)
        {
            AspNetUsers user = new AspNetUsers();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = (from u in context.AspNetUsers
                                 where u.Email.Equals(email)                             
                                 select u).FirstOrDefault();

                    user = query;
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return user;
        }

        public List<AspNetUsers> GetUserByRole(string id_rol)
        {
            List<AspNetUsers> list = new List<AspNetUsers>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    // Query for all
                    var als = from b in context.AspNetUsers
                              where b.IdRol == id_rol
                              select b;
                    
                    list = als.ToList();
                }
            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine("Error al seleccionar usuarios por rol "+e.ToString());
            }

            return list;
        }

        public async Task<List<UserToApprove>> GetUserWOApprv()
        {
            List<UserToApprove> list = new List<UserToApprove>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    // Query for all
                    var als = from b in context.AspNetUsers
                              join r in context.AspNetRoles
                              on b.IdRol equals r.Id
                              where b.EmailConfirmed == false
                              select new {b,r };

                    var lista = als.ToList();

                    await Task.Run(() => Parallel.ForEach(lista, s =>
                    {
                        list.Add(new UserToApprove()
                        {
                            Id = s.b.Id,
                            Nombres = s.b.Nombres,
                            Apellidos = s.b.Apellidos,
                            Email = s.b.Email,
                            Usuario = s.b.UserName,
                            Registro = (DateTime)s.b.Registrado,
                            IdRol = s.r.Id,                            
                            DesRol = s.r.Name
                        });

                    }));
                }
            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine("Error al seleccionar usuarios por aprobar " + e.ToString());
            }

            return list;
        }

        public async Task<List<UsersUI>> GetUsersByRole(string role)
        {
            List<UsersUI> list = new List<UsersUI>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    // Query for all
                    var als = from b in context.AspNetUsers   
                              where b.EmailConfirmed == true
                              && b.IdRol.Equals(role)
                              select b;

                    var listT = await als.ToListAsync();

                    await Task.Run(() => Parallel.ForEach(listT, s =>
                    {
                        list.Add(new UsersUI()
                        {
                            Id = s.Id,
                            Nombres = s.Nombres,
                            Apellidos = s.Apellidos,
                            Email = s.Email,
                            Usuario = s.UserName,
                            IdRol = s.IdRol,
                            NombresCommpletos = s.Nombres + " " + s.Apellidos
                        });

                    }));
                }
            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine("Error al seleccionar usuarios por rol " + e.ToString());
            }

            return list;
        }

        public async Task<int> ApproveUser(string id)
        {
            AspNetUsers usere;
            int regs = 0;

            try
            {
                //1. Get row from DB
                using (var context = new EwoQEntities())
                {
                    usere = context.AspNetUsers.Where(s => s.Id == id).FirstOrDefault();
                }

                //2. change data in disconnected mode (out of ctx scope)
                if (usere != null)
                {
                    usere.EmailConfirmed = true;                    
                }

                //save modified entity using new Context
                using (var context = new EwoQEntities())
                {
                    //3. Mark entity as modified
                    context.Entry(usere).State = EntityState.Modified;

                    //4. call SaveChanges
                    regs = await context.SaveChangesAsync();

                    return regs;
                }
            }
            catch (Exception e)
            {
               Debug.WriteLine("Excepción al aprobar usuario: " + e.ToString());
            }

            return 0;
        }

        public async Task<string> SetSign(string id, string sign)
        {
            AspNetUsers usere;
            int regs =  0;
            string fileName = null;

            //1. Get row from DB
            using (var context = new EwoQEntities())
            {
                usere = context.AspNetUsers.Where(s => s.Id == id).FirstOrDefault();
                if (usere != null)
                {
                    fileName = usere.SingUrl;
                }                
            }

            //2. change data in disconnected mode (out of ctx scope)
            if (usere != null)
            {
                usere.SingUrl = sign;
            }

            //save modified entity using new Context
            using (var context = new EwoQEntities())
            {
                //3. Mark entity as modified
                context.Entry(usere).State = EntityState.Modified;

                //4. call SaveChanges
                regs = await context.SaveChangesAsync();

                return fileName;
            }            
        }

        public async Task<List<UsersUI>> GetAllUsers()
        {
            List<UsersUI> listUsers = new List<UsersUI>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.AspNetUsers
                                select td;

                    var listT = await query.ToListAsync();

                    foreach (var s in listT)
                    {
                        listUsers.Add(new UsersUI()
                        {
                            Id = s.Id,
                            Nombres = s.Nombres,
                            Apellidos = s.Apellidos,
                            Email = s.Email,
                            Usuario = s.UserName,
                            IdRol = s.IdRol,
                            NombresCommpletos = s.Nombres + " " + s.Apellidos
                        });
                    }                                        
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return listUsers;
        }

        public async Task<List<string>> GetAllUsersNames()
        {
            List<string> listUsers = new List<string>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.AspNetUsers
                                select td;

                    var listT = await query.ToListAsync();

                    foreach (var s in listT)
                    {
                        listUsers.Add(s.Nombres + " " + s.Apellidos);
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return listUsers;
        }
    }
}
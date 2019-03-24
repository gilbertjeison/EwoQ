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
    public class DaoEwo
    {
        public async Task<int> GetLastConsecutive()
        {
            int max = 0;
            
            try
            {
                using (var context = new EwoQEntities())
                {
                    var maxv = await context.ewo.OrderByDescending(u => u.id).FirstOrDefaultAsync();
                    if (maxv != null)
                    {
                        max = (int)maxv.consecutivo + 1;
                    }
                    else
                    {
                        max = 1;
                    }
                    
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar consecutivo de línea: " + e.ToString());
                max = -1;
            }

            return max;
        }

        public int GetCount()
        {
            int max = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    var maxv = context.ewo.Count();
                                        
                    max = maxv;                   
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar cantidad de ewos: " + e.ToString());
                max = -1;
            }

            return max;
        }

        public async Task<long> AddEwo(ewo ewo)
        {
            long regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.ewo.Add(ewo);
                    await context.SaveChangesAsync();
                    regs = ewo.id;
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al agregar ewo: "+e.ToString());
                regs = -1;
            }
            return regs;
        }

        public List<DonutViewModel> GetEwoPercents()
        {
            List<DonutViewModel> list = new List<DonutViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {

                    var query = (from e in context.ewo
                                 join td in context.tipos_data
                                 on e.tipo_incidente equals td.id
                                 group e by new { e.tipo_incidente,td.descripcion } into g
                                 select new
                                 {
                                     g.Key.descripcion,
                                     Count = g.Count()                                     
                                 }).AsEnumerable()
                                .Select(g => new
                                {
                                    g.descripcion,
                                    g.Count                                 
                                });

                    if (query != null)
                    {
                        foreach (var item in query)
                        {
                            list.Add(new DonutViewModel()
                            {
                                label = item.descripcion,
                                value = (double)item.Count / GetCount() * 100
                            });
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar porcentajes de tipos de incidentes: " + e.ToString());
            }

            return list;
        }
    }
}
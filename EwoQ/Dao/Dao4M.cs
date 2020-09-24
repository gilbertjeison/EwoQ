using EwoQ.Database;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class Dao4M
    {
        private static Dao4M daoInstance = null;

        public static Dao4M DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new Dao4M();
                }

                return daoInstance;
            }
        }
        public async Task<List<preguntas_4m>> Get4mQuestionsByType(long id)
        {
            List<preguntas_4m> p4m = new List<preguntas_4m>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from p in context.preguntas_4m                                
                                where p.codigo_tipo4m == id
                                select p;

                    var p4 = await query.ToListAsync();

                    foreach (var item in p4)
                    {
                        p4m.Add(new preguntas_4m()
                        {
                            id = item.id,
                            codigo_tipo4m = item.codigo_tipo4m,
                            descripcion = item.descripcion
                        });
                    }
                    
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine("Error al obtener preguntas 4M : " + e.ToString());
            }

            return p4m;
        }
    }
}
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
    public class DaoAcciones
    {
        public async Task<int> AddAcciones(List<acciones_inmediatas> ai)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.acciones_inmediatas.AddRange(ai);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando lista de acciones: " + e.ToString());
                regs = -1;
            }

            return regs;
        }

        public async Task<List<acciones_inmediatas>> GetActionsList(long id_ewo)
        {
            List<acciones_inmediatas> list = new List<acciones_inmediatas>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from ru in context.acciones_inmediatas
                                where ru.codigo_ewo == id_ewo
                                select ru;

                    list = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Excepción al momento de consultar acciones inmediatas: " + e.ToString());
            }

            return list;
        }
    }
}
using EwoQ.Database;
using System;
using System.Collections.Generic;
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
    }
}
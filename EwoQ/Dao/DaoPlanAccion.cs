using EwoQ.Database;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class DaoPlanAccion
    {
        private static DaoPlanAccion daoInstance = null;

        public static DaoPlanAccion DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoPlanAccion();
                }

                return daoInstance;
            }
        }      

        public async Task<int> AddPlanAccionAsync(List<plan_accion> pa)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.plan_accion.AddRange(pa);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando plan de acción: " + e.ToString());
                regs = -1;
            }

            return regs;
        }
    }
}
using EwoQ.Database;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class DaoPorque
    {
        private static DaoPorque daoInstance = null;

        public static DaoPorque DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoPorque();
                }

                return daoInstance;
            }
        }

        public async Task<int> AddPorqueAsync(List<porque_porque> pq)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.porque_porque.AddRange(pq);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando por que : " + e.ToString());
                regs = -1;
            }

            return regs;
        }
    }
}
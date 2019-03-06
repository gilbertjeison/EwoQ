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
    }
}
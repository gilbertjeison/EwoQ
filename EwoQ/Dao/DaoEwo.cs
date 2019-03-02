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
                Debug.WriteLine("Error al cinsultar consecutivo de línea: " + e.ToString());
                max = -1;
            }

            return max;
        }
    }
}
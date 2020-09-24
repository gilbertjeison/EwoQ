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
    public class DaoPlantas
    {
        private static DaoPlantas daoInstance = null;

        public static DaoPlantas DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoPlantas();
                }

                return daoInstance;
            }
        }
        public async Task<List<plantas>> GetPlantasAsync()
        {
            List<plantas> plantas = new List<plantas>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.plantas
                                select td;
                    plantas = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return plantas;
        }
    }
}
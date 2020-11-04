using EwoQ.Database;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class Dao5GResultados
    {
        private static Dao5GResultados daoInstance = null;

        public static Dao5GResultados DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new Dao5GResultados();
                }

                return daoInstance;
            }
        }

        public async Task<int> Add5GResultadosAsync(List<fiveg_resultados> fr)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.fiveg_resultados.AddRange(fr);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando resultados 5G: " + e.ToString());
                regs = -1;
            }

            return regs;
        }
    }
}
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

            using (var context = new EwoQEntities())
            {
                context.fiveg_resultados.AddRange(fr);
                regs = await context.SaveChangesAsync();
            }
            

            return regs;
        }

        public async Task<List<fiveg_resultados>> Get5GAsync(long idEwo, long id5G)
        {
            List<fiveg_resultados> areas = null;

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from fg in context.fiveg_resultados
                                join e in context.ewo
                                on fg.codigo_ewo equals e.id 
                                join td in context.tipos_data
                                on fg.codigo_5fv_opcion equals td.id
                                where fg.codigo_5fv_opcion == id5G
                                && fg.codigo_ewo == idEwo
                                select fg;
                    areas = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return areas;
        }

        public async Task<List<fiveg_resultados>> Get5GAsync(long idEwo)
        {
            List<fiveg_resultados> areas = null;

            using (var context = new EwoQEntities())
            {
                var query = from fg in context.fiveg_resultados
                            join e in context.ewo
                            on fg.codigo_ewo equals e.id
                            where fg.codigo_ewo == idEwo
                            select fg;
                areas = await query.ToListAsync();
            }          

            return areas;
        }
    }
}
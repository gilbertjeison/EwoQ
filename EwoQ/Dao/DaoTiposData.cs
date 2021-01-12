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
    public class DaoTiposData
    {
        private static DaoTiposData daoInstance = null;

        public static DaoTiposData DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoTiposData();
                }

                return daoInstance;
            }
        }

        public async Task<List<tipos_data>> GetTypesAsync(int type)
        {
            List<tipos_data> tiposData = new List<tipos_data>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.tipos_data
                                where td.codigo_tipo == type
                                select td;
                    tiposData = await query.OrderBy(x => x.descripcion).ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return tiposData;
        }

        public List<tipos_data> GetTypes(int type)
        {
            List<tipos_data> tiposData = new List<tipos_data>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.tipos_data
                                where td.codigo_tipo == type
                                select td;

                    tiposData = query.ToList();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return tiposData;
        }
    }
}
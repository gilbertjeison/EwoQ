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
    public class DaoAreas
    {

        private static DaoAreas daoInstance = null;

        public static DaoAreas DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoAreas();
                }

                return daoInstance;
            }
        }

        public async Task<List<areas_productivas>> GetAreasAsync(int id)
        {
            List<areas_productivas> areas = new List<areas_productivas>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.areas_productivas
                                where td.codigo_planta == id
                                select td;
                    areas = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return areas;
        }
    }
}
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
    public class DaoLineas
    {
        public async Task<List<lineas>> GetLinesAsync(int id)
        {
            List<lineas> lineas = new List<lineas>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.lineas
                                where td.codigo_area == id
                                select td;
                    lineas = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return lineas;
        }
    }
}
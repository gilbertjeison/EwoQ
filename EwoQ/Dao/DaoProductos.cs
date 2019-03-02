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
    public class DaoProductos
    {
        public async Task<List<string>> GetProductsAsync()
        {
            List<string> listPro = new List<string>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from td in context.productos
                                select td.nombre;

                    listPro = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.ToString());
            }

            return listPro;
        }
    }
}
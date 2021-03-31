using EwoQ.Database;
using EwoQ.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class DaoDisposiciones
    {
        private static DaoDisposiciones daoInstance = null;

        public static DaoDisposiciones DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoDisposiciones();
                }

                return daoInstance;
            }
        }

        public async Task<int> AddDisposiciones(List<disposiciones> d)
        {

            using (var context = new EwoQEntities())
            {
                context.disposiciones.AddRange(d);
                return await context.SaveChangesAsync();
            }
             
        }

        public async Task<List<Disposiciones>> GetDisposiciones(long idEwo)
        {
            List<Disposiciones> listDisp;

            using (var context = new EwoQEntities())
            {
                var query = from e in context.ewo
                            join d in context.disposiciones
                            on e.id equals d.codigo_ewo
                            join td in context.tipos_data
                            on d.codigo_disposicion equals td.id
                            join um in context.tipos_data
                            on d.codigo_unidad_medida equals um.id
                            where e.id == idEwo
                            select new Disposiciones 
                            {
                                Cantidad = d.cantidad.Value,
                                TipoDisposicion = d.codigo_disposicion.Value,
                                UnidadMedida = um.descripcion
                            };

                listDisp = await query.ToListAsync();                
            }

            return listDisp;
        }
    }
}
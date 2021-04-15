using EwoQ.Database;
using EwoQ.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class DaoPlanAccion
    {
        private static DaoPlanAccion daoInstance = null;

        public static DaoPlanAccion DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoPlanAccion();
                }

                return daoInstance;
            }
        }      

        public async Task<int> AddPlanAccionAsync(List<plan_accion> pa)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.plan_accion.AddRange(pa);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando plan de acción: " + e.ToString());
                regs = -1;
            }

            return regs;
        }

        public async Task<List<PlanAccionModel>> GetPlanAccionAsync(long idEwo)
        {
            List<PlanAccionModel> planes = null;

            using (var context = new EwoQEntities())
            {
                var query = from pa in context.plan_accion
                            join e in context.ewo
                            on pa.codigo_ewo equals e.id
                            join u in context.AspNetUsers
                            on pa.codigo_responsable equals u.Id
                            join td in context.tipos_data
                            on pa.codigo_area equals td.id
                            where pa.codigo_ewo == idEwo
                            select new PlanAccionModel
                            {
                                Id = pa.id,
                                After = e.after ?? decimal.Zero,
                                Area = td.descripcion,
                                Before = e.before ?? decimal.Zero,
                                Contramedida = pa.contramedida,
                                FechaCompromiso = pa.fecha_compromiso ?? DateTime.Now,
                                Pokayoke = pa.pokayoke ?? false,
                                RequiereCapex = pa.requiere_capex ?? false,
                                Responsable = u.Nombres + " " + u.Apellidos,
                                Tipo = pa.codigo_tipo

                            };

                planes = await query.ToListAsync();
            }

            return planes;
        }
    }
}
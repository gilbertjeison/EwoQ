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
    public class DaoAcciones
    {
        private static DaoAcciones daoInstance = null;

        public static DaoAcciones DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoAcciones();
                }

                return daoInstance;
            }
        }

        public async Task<int> AddAcciones(List<acciones_inmediatas> ai)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.acciones_inmediatas.AddRange(ai);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando lista de acciones: " + e.ToString());
                regs = -1;
            }

            return regs;
        }

        public async Task<int> AddAccionesProcess(List<acciones_inmediatas> ai, long cod_ewo)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.acciones_inmediatas.RemoveRange(context.acciones_inmediatas.Where(x => x.codigo_ewo == cod_ewo));
                    context.acciones_inmediatas.AddRange(ai);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando lista de acciones: " + e.ToString());
                regs = -1;
            }

            return regs;
        }

        public async Task<List<AccionesInmediatas>> GetActionsList(long id_ewo)
        {
            List<AccionesInmediatas> list = null;

            using (var context = new EwoQEntities())
            {
                var query = from ru in context.acciones_inmediatas
                            join u in context.AspNetUsers
                            on ru.codigo_responsable equals u.Id
                            where ru.codigo_ewo == id_ewo
                            select new AccionesInmediatas
                            {
                                accion = ru.accion,
                                codigo_ewo = ru.codigo_ewo ?? 0,
                                codigo_responsable = ru.codigo_responsable,
                                evidencia_efectividad = ru.evidencia_efectividad,
                                fecha_compromiso = ru.fecha_compromiso,
                                Id = ru.id,
                                Responsable = u.Nombres + " " + u.Apellidos,                               
                            };

                list = await query.ToListAsync();
                list.ForEach(x => x.FechaCompromisoS =
                x.fecha_compromiso.Value.ToString("MM/dd/yyyy"));
            }

            return list;
        }
    }
}
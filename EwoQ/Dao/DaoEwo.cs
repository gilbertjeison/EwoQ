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
    public class DaoEwo
    {
        public async Task<int> GetLastConsecutive()
        {
            int max = 0;
            
            try
            {
                using (var context = new EwoQEntities())
                {
                    var maxv = await context.ewo.OrderByDescending(u => u.id).FirstOrDefaultAsync();
                    if (maxv != null)
                    {
                        max = (int)maxv.consecutivo + 1;
                    }
                    else
                    {
                        max = 1;
                    }
                    
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar consecutivo de línea: " + e.ToString());
                max = -1;
            }

            return max;
        }

        public int GetCount()
        {
            int max = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    var maxv = context.ewo.Count();
                                        
                    max = maxv;                   
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar cantidad de ewos: " + e.ToString());
                max = -1;
            }

            return max;
        }

        public async Task<long> AddEwo(ewo ewo)
        {
            long regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.ewo.Add(ewo);
                    await context.SaveChangesAsync();
                    regs = ewo.id;
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al agregar ewo: "+e.ToString());
                regs = -1;
            }
            return regs;
        }

        public List<DonutViewModel> GetEwoPercents()
        {
            List<DonutViewModel> list = new List<DonutViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {

                    var query = (from e in context.ewo
                                 join td in context.tipos_data
                                 on e.tipo_incidente equals td.id
                                 group e by new { e.tipo_incidente,td.descripcion } into g
                                 select new
                                 {
                                     g.Key.descripcion,
                                     Count = g.Count()                                     
                                 }).AsEnumerable()
                                .Select(g => new
                                {
                                    g.descripcion,
                                    g.Count                                 
                                });

                    if (query != null)
                    {
                        foreach (var item in query)
                        {
                            list.Add(new DonutViewModel()
                            {
                                label = item.descripcion,
                                value = (double)item.Count / GetCount() * 100
                            });
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar porcentajes de tipos de incidentes: " + e.ToString());
            }

            return list;
        }

        public async Task<IndexAdminViewModel> GetIndexData()
        {
            IndexAdminViewModel iavm = new IndexAdminViewModel();

            try
            {

                using (var context = new EwoQEntities())
                {
                    await Task.Run(() => 
                    {
                        iavm.IncidentesReportados = (from e in context.ewo select e).Count();
                        iavm.IncidentespProceso = (from e in context.ewo
                                                   join td in context.tipos_data
                                                   on e.codigo_estado equals td.id
                                                   where e.codigo_estado == 1
                                                   || e.codigo_estado == 2
                                                   select e).Count();
                        iavm.IncidentesCerrados = (from e in context.ewo
                                                   join td in context.tipos_data
                                                   on e.codigo_estado equals td.id
                                                   where e.codigo_estado == 3
                                                   select e).Count();
                        iavm.TiempoLinParada = (from e in context.ewo                                                  
                                                   select e).Sum(x => x.tiempo_linea_parada.Value);
                        iavm.UsuariosRegistrados = (from e in context.AspNetUsers                                                  
                                                   select e).Count();

                    });
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar porcentajes de tipos de incidentes: " + e.ToString());
            }

            return iavm;
        }

        public async Task<List<ReporteIncidentesViewModel>> GetEwoList(string id_autor)
        {
            List<ReporteIncidentesViewModel> list = new List<ReporteIncidentesViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from e in context.ewo
                                join l in context.tipos_data
                                on e.codigo_linea equals l.id
                                join a in context.tipos_data
                                on e.codigo_area equals a.id
                                join ti in context.tipos_data
                                on e.tipo_incidente equals ti.id
                                join es in context.tipos_data
                                on e.codigo_estado equals es.id
                                join t in context.AspNetUsers
                                on e.autor equals t.Id
                                where e.autor == id_autor
                                select new { e, l, a, t, ti,es };

                    var data = await query.ToListAsync();

                    foreach (var item in data.ToList())
                    {
                        list.Add(new ReporteIncidentesViewModel()
                        {
                            Id = item.e.id,
                            AreaDesc = item.a.descripcion,
                            LineaDesc = item.l.descripcion,
                            Autor = item.t.Id,
                            AutorDesc = item.t.Nombres + " " + item.t.Apellidos,
                            TipoIncidente = item.e.tipo_incidente.Value,
                            TipoIncidenteDesc = item.ti.descripcion,
                            DescripcionProblema = item.e.descripcion_general_problema,
                            TiempoLineaParada = item.e.tiempo_linea_parada.Value,
                            Fecha = item.e.fecha_apertura_investigacion.Value,
                            Estado = item.e.codigo_estado.Value,
                            EstadoDesc = item.es.descripcion
                        });
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Excepción al momento de consultar consildado de incidentes reportados: " + e.ToString());
            }

            return list;
        }

        public async Task<List<ReporteIncidentesViewModel>> GetEwoList()
        {
            List<ReporteIncidentesViewModel> list = new List<ReporteIncidentesViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from e in context.ewo
                                join l in context.tipos_data
                                on e.codigo_linea equals l.id
                                join a in context.tipos_data
                                on e.codigo_area equals a.id
                                join ti in context.tipos_data
                                on e.tipo_incidente equals ti.id
                                join es in context.tipos_data
                                on e.codigo_estado equals es.id
                                join t in context.AspNetUsers
                                on e.autor equals t.Id
                                select new { e, l, a, t, ti, es };

                    var data = await query.ToListAsync();

                    foreach (var item in data.ToList())
                    {
                        list.Add(new ReporteIncidentesViewModel()
                        {
                            Id = item.e.id,
                            AreaDesc = item.a.descripcion,
                            LineaDesc = item.l.descripcion,
                            Autor = item.t.Id,
                            AutorDesc = item.t.Nombres + " " + item.t.Apellidos,
                            TipoIncidente = item.e.tipo_incidente.Value,
                            TipoIncidenteDesc = item.ti.descripcion,
                            DescripcionProblema = item.e.descripcion_general_problema,
                            TiempoLineaParada = item.e.tiempo_linea_parada.Value,
                            Fecha = item.e.fecha_apertura_investigacion.Value,
                            Estado = item.e.codigo_estado.Value,
                            EstadoDesc = item.es.descripcion
                        });
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Excepción al momento de consultar consildado de incidentes reportados: " + e.ToString());
            }

            return list;
        }
    }
}
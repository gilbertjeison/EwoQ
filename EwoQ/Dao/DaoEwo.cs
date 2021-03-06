﻿using EwoQ.Database;
using EwoQ.Models;
using EwoQ.Utils;
using Microsoft.AspNet.Identity;
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
        private static DaoEwo daoInstance = null;

        public static DaoEwo DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoEwo();
                }

                return daoInstance;
            }
        }

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

        public async Task<string> GetConsecutiveAsync(int id)
        {
            string max = "0";

            try
            {
                await Task.Run(() => 
                {
                    using (var context = new EwoQEntities())
                    {
                        var maxv = context.ewo.Where(x => x.id == id)
                            .FirstOrDefault().consecutivo;
                        if (maxv != null)
                        {
                            max = maxv.Value.ToString();
                        }
                        else
                        {
                            max = "0";
                        }
                    }
                });
                
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar consecutivo de ewo: " + e.ToString());
                max = "-1";
            }

            return max;
        }

        public async Task<string> GetAutorAsync(long id)
        {
            string auth = "-";

            try
            {
                await Task.Run(() =>
                {
                    using (var context = new EwoQEntities())
                    {
                        var authv = context.ewo.Where(x => x.id == id)
                            .FirstOrDefault().autor;
                        if (authv != null)
                        {
                            auth = authv;
                        }
                    }
                });

            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar autor de ewo: " + e.ToString());
                auth = "-1";
            }

            return auth;
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

        public int GetCountClosed()
        {
            int max = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    var maxv = context.ewo.Where(x=> x.codigo_estado == 2).Count();

                    max = maxv;
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar cantidad de ewos cerrados: " + e.ToString());
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
                                label = item.descripcion + " ("+item.Count+")",
                                value = ((double)item.Count / GetCountClosed() * 100).ToString("F2")
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

        public List<DonutViewModel> GetEwoMPercents()
        {
            List<DonutViewModel> list = new List<DonutViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {

                    var query = (from e in context.ewo
                                 join td in context.tipos_data
                                 on e.codigo_m equals td.id
                                 group e by new { e.codigo_m, td.descripcion } into g
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
                                label = item.descripcion + " (" + item.Count + ")",
                                value = ((double)item.Count / GetCountClosed() * 100).ToString("F2")
                            });
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar porcentajes de tipos Ms: " + e.ToString());
            }

            return list;
        }

        public List<DonutViewModel> GetEwoTFFZPercents()
        {
            List<DonutViewModel> list = new List<DonutViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {

                    var query = (from e in context.ewo
                                 join td in context.tipos_data
                                 on e.codigo_top_five_fzero equals td.id
                                 group e by new { e.codigo_top_five_fzero, td.descripcion } into g
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
                                label = item.descripcion + " (" + item.Count + ")",
                                value = ((double)item.Count / GetCountClosed() * 100).ToString("F2")
                            });
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar porcentajes de top five for zero: " + e.ToString());
            }

            return list;
        }

        public List<DonutViewModel> GetEwoPlantsPercents()
        {
            List<DonutViewModel> list = new List<DonutViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {

                    var query = (from e in context.ewo
                                 join l in context.lineas
                                 on e.codigo_linea equals l.id
                                 join a in context.areas_productivas
                                 on l.codigo_area equals a.id
                                 join p in context.plantas
                                 on a.codigo_planta equals p.id
                                 group e by new { p.id, p.descripcion } into g
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
                                label = item.descripcion + " (" + item.Count + ")",
                                value = ((double)item.Count / GetCount() * 100).ToString("F2")
                            });
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error al consultar porcentajes de plantas: " + e.ToString());
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
                                                   || e.codigo_estado == 3
                                                   select e).Count();
                        iavm.IncidentesCerrados = (from e in context.ewo
                                                   join td in context.tipos_data
                                                   on e.codigo_estado equals td.id
                                                   where e.codigo_estado == 2
                                                   select e).Count();
                        iavm.TiempoLinParada = (from e in context.ewo                                                  
                                                   select e).Sum(x => x.tiempo_linea_parada.HasValue ? (int?)x.tiempo_linea_parada.Value  : 0) ?? 0;

                        iavm.UnidadesAfectadas = (from e in context.ewo
                                                select e).Sum(x => x.unidades.HasValue ? (int?)x.unidades.Value : 0) ?? 0;

                        iavm.CostosTotales = (from e in context.ewo
                                                  select e).Sum(x => x.costo_incidente.HasValue ? (int?)x.costo_incidente.Value : 0) ?? 0;

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
                                join ti in context.tipos_data
                                on e.tipo_incidente equals ti.id
                                join es in context.tipos_data
                                on e.codigo_estado equals es.id
                                join t in context.AspNetUsers
                                on e.autor equals t.Id
                                where e.autor == id_autor
                                select new { e, l, t, ti,es };

                    var data = await query.ToListAsync();

                    foreach (var item in data.ToList())
                    {
                        list.Add(new ReporteIncidentesViewModel()
                        {
                            Id = item.e.id,                            
                            LineaDesc = item.l.descripcion,
                            Autor = item.t.Id,
                            AutorDesc = item.t.Nombres + " " + item.t.Apellidos,
                            TipoIncidente = item.e.tipo_incidente.Value,
                            TipoIncidenteDesc = item.ti.descripcion,
                            DescripcionProblema = item.e.descripcion_general_problema,
                            DescripcionProblemax2 = item.e.descripcion_general_problema,
                            TiempoLineaParada = item.e.tiempo_linea_parada.Value,
                            Fecha = item.e.fecha_apertura_investigacion.Value,
                            Estado = item.e.codigo_estado.Value,
                            EstadoDesc = item.es.descripcion,
                            NumAirsweb = item.e.numero_airsweb.HasValue ? item.e.numero_airsweb.Value : 0
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

        public async Task<List<ReporteIncidentesViewModel>> GetEwoListOperario(string id_autor)
        {
            List<ReporteIncidentesViewModel> list = new List<ReporteIncidentesViewModel>();

            using (var context = new EwoQEntities())
            {
                var query = from e in context.ewo
                            join l in context.lineas
                            on e.codigo_linea equals l.id
                            join a in context.areas_productivas
                            on l.codigo_area equals a.id
                            join es in context.tipos_data
                            on e.codigo_estado equals es.id
                            join t in context.AspNetUsers
                            on e.autor equals t.Id
                            where e.autor == id_autor
                            orderby e.consecutivo descending
                            select new { e, l, t, es, a };

                var data = await query.ToListAsync();

                foreach (var item in data.ToList())
                {
                    list.Add(new ReporteIncidentesViewModel()
                    {
                        Id = item.e.id,
                        LineaDesc = item.l.descripcion,
                        AreaDesc = item.a.descripcion,
                        Autor = item.t.Id,
                        AutorDesc = item.t.Nombres + " " + item.t.Apellidos,                           
                        DescripcionProblema = item.e.descripcion_general_problema,
                        TiempoLineaParada = item.e.tiempo_linea_parada.Value,
                        Fecha = item.e.fecha_apertura_investigacion.Value,
                        Estado = item.e.codigo_estado.Value,
                        EstadoDesc = item.es.descripcion,
                        NumAirsweb = item.e.numero_airsweb.HasValue ? item.e.numero_airsweb.Value : 0
                    });
                }
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
                                join l in context.lineas
                                on e.codigo_linea equals l.id
                                join a in context.areas_productivas
                                on l.codigo_area equals a.id
                                join ti in context.tipos_data
                                on e.tipo_incidente equals ti.id into gj
                                from x in gj.DefaultIfEmpty()
                                join es in context.tipos_data
                                on e.codigo_estado equals es.id
                                join t in context.AspNetUsers
                                on e.autor equals t.Id
                                orderby e.consecutivo descending
                                select new ReporteIncidentesViewModel()
                                {
                                    Id = e.id,
                                    LineaDesc = l.descripcion,
                                    AreaDesc = a.descripcion,
                                    Autor = t.Id,
                                    AutorDesc = t.Nombres + " " + t.Apellidos,
                                    TipoIncidente = e.tipo_incidente ?? 0,
                                    TipoIncidenteDesc =  (x == null ? String.Empty : x.descripcion),
                                    DescripcionProblema = e.descripcion_general_problema,
                                    DescripcionProblemax2 = e.descripcion_general_problema,
                                    TiempoLineaParada = e.tiempo_linea_parada.Value,
                                    Fecha = e.fecha_apertura_investigacion.Value,
                                    Estado = e.codigo_estado ?? 0,
                                    EstadoDesc = es.descripcion,
                                    NumAirsweb = e.numero_airsweb ?? 0,
                                    Consecutivo = e.consecutivo.ToString() ?? "0"
                                } ;

                    list = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Excepción al momento de consultar consildado de incidentes reportados: " + e.ToString());
            }

            return list;
        }

        public async Task<List<ReporteIncidentesViewModel>> GetEwoList(List<long> ids)
        {
            List<ReporteIncidentesViewModel> list = null;

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from e in context.ewo
                                join l in context.lineas
                                on e.codigo_linea equals l.id
                                join a in context.areas_productivas
                                on l.codigo_area equals a.id
                                join ti in context.tipos_data
                                on e.tipo_incidente equals ti.id into gj
                                from x in gj.DefaultIfEmpty()
                                join p in context.plantas
                                on a.codigo_planta equals p.id
                                join es in context.tipos_data
                                on e.codigo_estado equals es.id
                                join m in context.tipos_data
                                on e.codigo_m equals m.id
                                join tf in context.tipos_data
                                on e.codigo_top_five_fzero equals tf.id
                                join t in context.AspNetUsers
                                on e.autor equals t.Id
                                join or in context.AspNetUsers
                                on e.codigo_operario_responsable equals or.Id
                                join cst in context.AspNetUsers
                                on e.codigo_coordinador_turno equals cst.Id
                                join ra in context.AspNetUsers
                                on e.codigo_responsable_area equals ra.Id
                                join li in context.AspNetUsers
                                on e.codigo_lider_investigacion equals li.Id
                                where ids.Contains(e.id)
                                && e.codigo_estado == 2//CERRADO
                                orderby e.consecutivo descending
                                select new ReporteIncidentesViewModel()
                                {
                                    Id = e.id,
                                    LineaDesc = l.descripcion,
                                    AreaDesc = a.descripcion,
                                    Autor = t.Id,
                                    AutorDesc = t.Nombres + " " + t.Apellidos,
                                    TipoIncidente = e.tipo_incidente ?? 0,
                                    TipoIncidenteDesc = (x == null ? String.Empty : x.descripcion),
                                    DescripcionProblema = e.descripcion_general_problema,
                                    DescripcionProblemax2 = e.descripcion_general_problema,                                    
                                    TiempoLineaParada = e.tiempo_linea_parada.Value,
                                    Fecha = e.fecha_apertura_investigacion.Value,
                                    Estado = e.codigo_estado ?? 0,
                                    EstadoDesc = es.descripcion,
                                    NumAirsweb = e.numero_airsweb ?? 0,
                                    Consecutivo = e.consecutivo.ToString() ?? "0",
                                    PlantaDesc = p.descripcion,
                                    Lote = e.lote_producto,
                                    CodigoSAP = e.codigo_sap_producto,
                                    Toneladas = e.toneladas_producto.Value,
                                    NumCajas = e.numero_cajas.Value,
                                    Unidades = e.unidades.Value,
                                    OpeResDesc = or.Nombres + " " + or.Apellidos,
                                    MDesc = m.descripcion,
                                    ArbPerd1 = e.ap_nivel_1,
                                    ArbPerd2 = e.ap_nivel_2,
                                    ArbPerd3 = e.ap_nivel_3,
                                    ArbPerd4 = e.ap_nivel_4,
                                    ArbPerdO = e.ap_nivel_otro,
                                    TopFFZDesc = tf.descripcion,
                                    HrApertInvestigacionTS = e.hora_apertura_investigacion ?? new TimeSpan(0, 0, 0),
                                    HrEventoTS = e.hora_evento ?? new TimeSpan(0, 0, 0),
                                    Recurrente = e.recurrente ? "Si" : "No",
                                    EtapaProceso = e.etapa,
                                    CoorSupDesc = cst.Nombres + " " + cst.Apellidos,
                                    RespAreaDesc = ra.Nombres + " " + ra.Apellidos,
                                    LidInvDesc = li.Nombres + " " + li.Apellidos,
                                    TiempoAirsWeb = e.tiempo_ingresado_airsweb ?? 0,
                                    NombreProducto = e.producto,
                                    NumPallet = e.numero_pallet,
                                    CostoIncidente = e.costo_incidente != null ? (double)e.costo_incidente : 0,
                                    TamanoFormato = e.tamano_formato,
                                    TiempoInpeccion = e.tiempo_inspeccion ?? 0,
                                    Gemba = e.gemba ?? e.gemba.Value,
                                    Gembutsu = e.gembutsu ?? false,
                                    Genjitsu = e.genjitsu ?? false,
                                    PathImageGs = e.five_g_image ?? string.Empty,
                                    QueDesc = e.que,
                                    ComoDesc = e.como,
                                    QuienDesc = e.quien,
                                    CualDesc = e.cual,
                                    DondeDesc = e.donde,
                                    CuandoDesc = e.cuando,
                                    FenomenoDesc = e.descripcion_fenomeno,
                                    ManoObra = e.manoobra4m ?? decimal.Zero,
                                    Maquina = e.maquina4m ?? decimal.Zero,
                                    Material = e.material4m ?? decimal.Zero,
                                    Metodo = e.metodo4m ?? decimal.Zero,
                                    TopFiveForZero = e.codigo_top_five_fzero ?? 0,
                                    MaxMId = e.codigo_m ?? 0
                                };

                    list = await query.ToListAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Excepción al momento de consultar consoldado de incidentes reportados: " + e.ToString());
            }

            return list;
        }

        public async Task<ReporteIncidentesViewModel> GetEwoDesc(long id)
        {
            ReporteIncidentesViewModel lDecs = null;

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from e in context.ewo                                
                                join l in context.lineas
                                on e.codigo_linea equals l.id
                                join a in context.areas_productivas
                                on l.codigo_area equals a.id
                                join p in context.plantas
                                on a.codigo_planta equals p.id
                                join es in context.tipos_data
                                on e.codigo_estado equals es.id
                                join t in context.AspNetUsers
                                on e.autor equals t.Id
                                join ti in context.tipos_data
                                on e.tipo_incidente equals ti.id into gj
                                from x in gj.DefaultIfEmpty()
                                where e.id == id
                                select new { e, l, x,t,es, a, p };

                    var data = await query.ToListAsync();

                    foreach (var i in data.ToList())
                    {
                        lDecs = new ReporteIncidentesViewModel()
                        {
                            Id = i.e.id,
                            LineaDesc = i.l.descripcion,
                            IdLinea = i.e.codigo_linea.Value,
                            IdPlanta = i.p.id,
                            IdArea = i.a.id,
                            Autor = i.t.Nombres + " " + i.t.Apellidos,
                            TipoIncidente = i.x != null ?  i.e.tipo_incidente.Value : 0,
                            TipoIncidenteDesc = i.x != null ? i.x.descripcion : "",
                            Consecutivo = i.e.consecutivo.Value.ToString(),
                            Fecha = i.e.fecha_apertura_investigacion.Value,
                            FchApertInvestigacion = i.e.fecha_apertura_investigacion.Value.ToString("dd-MM-yyyy"),
                            EstadoDesc = i.es.descripcion,
                            HrEventoTS = i.e.hora_evento.Value,
                            HrEvento = i.e.hora_evento.Value.ToString(@"hh\:mm"),
                            FchEntregaInvestigacion = i.e.fecha_entrega_investigacion.Value.ToString("dd-MM-yyyy"),
                            HrEntregaInvestigacion = i.e.hora_entrega_investigacion.Value.ToString(@"hh\:mm"),
                            HrEntregaInvestigacionTS = i.e.hora_entrega_investigacion.Value,
                            RecurrenteB = i.e.recurrente,
                            EtapaProceso = i.e.etapa,
                            IdCoorSup = i.e.codigo_coordinador_turno,
                            IdRespArea = i.e.codigo_responsable_area,
                            IdOpeRes = i.e.codigo_operario_responsable,
                            IdLidInv = i.e.codigo_lider_investigacion,
                            NombreProducto = i.e.producto,
                            CodigoSAP = i.e.codigo_sap_producto,
                            Lote = i.e.lote_producto,
                            Toneladas = i.e.toneladas_producto.Value,
                            NumCajas = i.e.numero_cajas.Value,
                            NumPallet = i.e.numero_pallet,
                            Unidades = i.e.unidades.Value,
                            TamanoFormato = i.e.tamano_formato,
                            TiempoLineaParada = i.e.tiempo_linea_parada.Value,
                            DescripcionProblema = i.e.descripcion_general_problema,
                            DescripcionProblemax2 = i.e.descripcion_general_problema
                        };
                    }
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine("Error al obtener información descriptiva de incidente : " + e.ToString());
            }

            return lDecs;
        }

        public async Task<long> ProcesarIncidenteAsync(ewo ewo)
        {
            ewo ed;

            long regs = 0;

            try
            {
                //1. Get row from DB
                using (var context = new EwoQEntities())
                {
                    ed = context.ewo.Where(s => s.id == ewo.id).FirstOrDefault();
                }

                //2. change data in disconnected mode (out of ctx scope)                
                if (ed != null)
                {
                    ed = ewo;

                    //save modified entity using new Context
                    using (var context = new EwoQEntities())
                    {
                        //3. Mark entity as modified
                        context.Entry(ed).State = EntityState.Modified;

                        //4. call SaveChanges
                        await context.SaveChangesAsync();
                        regs = ed.id;
                    }
                }
            }
            catch (Exception e)
            {
                string err = "Excepción al editar ewo: " + e.ToString();
                Trace.WriteLine(err);
                //REPORTAR ERROR EN LA BASE DE DATOS
                await DaoExcepcion.DaoInstance.AddExceptionAsync(
                    new excepciones()
                    {
                        codigo_error = -1,
                        codigo_usuario = HttpContext.Current.User.Identity.GetUserId() ?? "No definido",
                        descripcion = err,
                        fecha = SomeHelpers.GetCurrentTime()
                    });
            }

            return regs;
        }

        public async Task<int> AddEquipoTrabjo(List<equipo_trabajo> et)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.equipo_trabajo.AddRange(et);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando equipo de trabajo: " + e.ToString());
                regs = -1;
            }

            return regs;
        }

        public async Task<List<AspNetUsers>> GetTeamWork(long idEwo)
        {
            List<AspNetUsers> listUsers = new List<AspNetUsers>();

            using (var context = new EwoQEntities())
            {
                var query = from e in context.ewo
                            join et in context.equipo_trabajo
                            on e.id equals et.codigo_ewo
                            join u in context.AspNetUsers
                            on et.codigo_usuario equals u.Id
                            where e.id == idEwo
                            select u;

                var data = await query.ToListAsync();
                foreach (var u in data)
                {
                    listUsers.Add(new AspNetUsers
                    {
                        Id = u.Id,
                        Nombres = u.Nombres + " " + u.Apellidos,
                    });
                }                                  
            }
            
            return listUsers;
        }
    }
}
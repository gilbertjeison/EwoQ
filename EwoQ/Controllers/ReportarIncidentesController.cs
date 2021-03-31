using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using EwoQ.Database;
using EwoQ.Models;
using EwoQ.Dao;
using System.Web.Script.Serialization;
using System.Globalization;
using System.Diagnostics;
using Microsoft.AspNet.Identity;
using System.Linq.Dynamic;
using static EwoQ.Utils.Enums.EnListas;
using EwoQ.Utils;
using OfficeOpenXml;
using OfficeOpenXml.Drawing;
using System.Drawing;
using System.IO;


namespace EwoQ.Controllers
{
    [Authorize]
    public class ReportarIncidentesController : Controller
    {
        private readonly EwoQEntities db = new EwoQEntities();

       
        readonly JavaScriptSerializer ser = new JavaScriptSerializer();

        #region INDEX
        [HttpPost]
        public async Task<ActionResult> LoadDataAsync()
        {
            List<ReporteIncidentesViewModel> rivm;

            try
            {
                AspNetUsers aspNetUsers = await DaoUsuarios.DaoInstance.GetUserAsync(User.Identity.GetUserId());
                                
                int recordsTotal = 0;

                if (aspNetUsers.IdRol.Equals(SomeHelpers.ROL_OPER))
                {
                    rivm = await DaoEwo.DaoInstance.GetEwoListOperario(aspNetUsers.Id);
                }
                else
                {
                    rivm = await DaoEwo.DaoInstance.GetEwoList();
                }

                var data1 = rivm;                                

                //total number of rows count 
                recordsTotal = data1.Count;
                
                return Json(new { recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data1 });
            }
            catch (Exception ex)
            {
                Trace.WriteLine("Error el cargar los incidentes reportados: "+ex.ToString());
                return Json(new { });
            }
        }
        #endregion
        
        
        // GET: ReportarIncidentes
        public ActionResult Index()
        {            
            return View();
        }

        public async Task<JsonResult> GetAllUsersAsync()
        {
            SelectList List = null;

            //LISTA DE DE LÍNEAS
            var listU = await DaoUsuarios.DaoInstance.GetAllUsers();
            listU.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            List = new SelectList(listU, "Id", "NombresCommpletos");

            return Json(new SelectList(List, "Value", "Text"));
        }

        
        [HttpPost]
        public async Task<JsonResult> GetAllUsersJsonAsync()
        {
            var users = await DaoUsuarios.DaoInstance.GetAllUsers();           
            return Json(users);
        }

        [HttpPost]
        public async Task<JsonResult> GetAllDispoJsonAsync()
        {
            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listDF = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.FINALDISPOSITION);
            listDF.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione disposición..." });
            var DisposicionFList = new SelectList(listDF, "Id", "descripcion");

            return Json(DisposicionFList);
        }

        public async Task<JsonResult> GetAreasJsonAsync()
        {
            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listA = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.AREASTYPES);
            listA.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione área..." });
            var AreasList = new SelectList(listA, "Id", "descripcion");

            return Json(AreasList);
        }

        //LISTA AREAS
        

    [HttpPost]
        public async Task<JsonResult> GetAllUniMedJsonAsync()
        {
            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listUM = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.UNIDADMEDIDA);
            listUM.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione unidad..." });
            var UniMedList = new SelectList(listUM, "Id", "descripcion");

            return Json(UniMedList);
        }

        [HttpPost]
        public async Task<JsonResult> Get4MQuestionsByType(int id)
        {
            var qstns = await Dao4M.DaoInstance.Get4mQuestionsByType(id);
            return Json(qstns);
        }

        public async Task<JsonResult> GetAllUsers()
        {
            //LISTA DE DE LÍNEAS
            var list = await DaoUsuarios.DaoInstance.GetAllUsers();

            return Json(list, JsonRequestBehavior.AllowGet);
        }

        // GET: ReportarIncidentes/Create
        public async Task<ActionResult> Create()
        {   
            return View(await BuildModel(0));
        }


        // POST: ReportarIncidentes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        //public async Task<ActionResult> Create([Bind(Include = "id,consecutivo,codigo_estado,fecha_apertura_investigacion,hora_apertura_investigacion,hora_evento,fecha_entrega_investigacion,hora_entrega_investigacion,recurrente,codigo_area,codigo_linea,etapa,codigo_coordinador_turno,codigo_responsable_area,codigo_operario_responsable,codigo_lider_investigacion,codigo_producto,codigo_sap_producto,lote_producto,toneladas_producto,numero_cajas,numero_pallet,unidades,tamano_formato,codigo_unidad_medida_tamfor,costo_incidente,tiempo_linea_parada,descripcion_general_problema,tiempo_inspeccion,codigo_arbol_perdidas,numero_airsweb,tiempo_ingresado_airsweb,codigo_disposicion_final_prod,cantidad_toneladas,gemba,gembutsu,genjitsu,five_g_image,descripcion_problema,que,donde,cuando,quien,cual,como,descripcion_fenomeno,images_path,comentarios_resoluciones,pa_codigo_coordinador_prod,pa_codigo_gerente_prod,pa_codigo_jefe_calidad,pa_codigo_gerente_calidad")] ewo ewo)
        public async Task<JsonResult> CreateAsync(ReporteIncidentesViewModel ewr)
        {
            RequestResponse rr = null;

            try
            {
                rr = await CreateEwoObject(ewr,true);                
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error en CreateAsync "+e.ToString());
                rr.Codigo = -1;
            }
            

            return Json(new { code= rr.Codigo });
        }

       [HttpGet]
       public async Task<ActionResult> ProcesarIncidente(int? id)
        {
            int code;
            string message;
            
            try
            {
                var userRole = (await DaoUsuarios.DaoInstance.GetUserAsync(User.Identity.GetUserId())).IdRol;

                if (SomeHelpers.ROL_OPER.Equals(userRole))
                {
                    return new HttpNotFoundResult("No tiene los permisos para procesar incidentes");
                }

                if (id.HasValue)
                {
                    var rivm = await BuildModel(id.Value);
                    return View(rivm);
                }
                else
                {
                    return Json(new {code = -1, message = "Error al procesar incidente" },JsonRequestBehavior.AllowGet);
                }

                
            }
            catch (Exception ex)
            {
                code = -1;
                message = "Error al iniciar el proceso con incidente reportado "+ ex.Message;
                Trace.WriteLine(message);
                return Json(new { code, message });
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<JsonResult> ProcesarIncidentePost(ReporteIncidentesViewModel rivm)
        {
            //CAMPOS PARA ALMACENAR RESULTADO DE TRANSACCIÓN     
            RequestResponse rr = null;

            try
            {
                rr = await CreateEwoObject(rivm, false);
            }
            catch (Exception ex)
            {
                Trace.WriteLine("Error al Procesar incidente " + ex.ToString());
            }
            return Json(rr, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public async Task<JsonResult> GenerateExcelLine(string ExportLineIds)
        {
            //CAMPOS PARA ALMACENAR RESULTADO DE TRANSACCIÓN     
            RequestResponse rr = new RequestResponse();

            try
            {
                List<long> idsExport = ser.Deserialize<List<long>>(ExportLineIds);
                var response = await GenerateExcelLine(idsExport);
                

                if (response.Length > 0)
                {
                    //Formato generado
                    rr.Codigo = 1;
                    rr.Message = response;
                }
                else
                {
                    //Formato no generado por no encontrar datos suficientes
                    rr.Codigo = 0;
                    rr.Message = "";
                }                
            }
            catch (Exception ex)
            {
                rr.Codigo = -1;
                rr.Message = "Error al Procesar incidente " + ex.ToString();
                Trace.WriteLine(rr.Message);
            }
            return Json(rr, JsonRequestBehavior.AllowGet);
        }
                
        private async Task<string> GenerateExcelLine(List<long> ids)
        {
            //Consultar información de registros seleccionados
            var data = await DaoEwo.DaoInstance.GetEwoList(ids);

            if (data.Count > 0)
            {
                //Especificar licencia
                ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
              
                string filename = Server.MapPath(Constantes.fn);
                string nfilename = Server.MapPath(Constantes.fnN);

                //ESCRIBIR EN ARCHIVO ECXEL
                FileInfo file = new FileInfo(filename);
                FileInfo fileN = new FileInfo(nfilename);

                if (fileN.Exists)
                {
                    fileN.Delete();
                }

                file.CopyTo(nfilename);

                //Generar excel
                using (var excel = new ExcelPackage(fileN))
                {
                    var ws = excel.Workbook.Worksheets["Datos"];
                    CultureInfo ci = new CultureInfo("es-ES");

                    for (int i = 0; i < data.Count; i++)
                    {
                        ws.Cells[i+2, 1].Value = data[i].Consecutivo;
                        ws.Cells[i + 2, 2].Value = data[i].Fecha.Year;
                        ws.Cells[i + 2, 3].Value = data[i].PlantaDesc;

                        ws.Cells[i + 2, 6].Value = data[i].Fecha.ToShortDateString();
                        ws.Cells[i + 2, 7].Value = data[i].Fecha.ToString("MMMM", ci);
                        ws.Cells[i + 2, 8].Value = data[i].Lote;
                        ws.Cells[i + 2, 9].Value = data[i].CodigoSAP;
                        ws.Cells[i + 2, 11].Value = data[i].Toneladas;
                        ws.Cells[i + 2, 12].Value = data[i].NumCajas;
                        ws.Cells[i + 2, 13].Value = data[i].Unidades;
                        ws.Cells[i + 2, 15].Value = data[i].LineaDesc;
                        ws.Cells[i + 2, 17].Value = data[i].OpeResDesc;
                        ws.Cells[i + 2, 18].Value = data[i].MDesc;
                        ws.Cells[i + 2, 20].Value = data[i].DescripcionProblema;
                        ws.Cells[i + 2, 21].Value = data[i].ArbPerd1;
                        ws.Cells[i + 2, 22].Value = data[i].ArbPerd2;
                        ws.Cells[i + 2, 23].Value = data[i].ArbPerd3;
                        ws.Cells[i + 2, 24].Value = data[i].ArbPerd4;
                        ws.Cells[i + 2, 25].Value = data[i].ArbPerdO;
                        ws.Cells[i + 2, 26].Value = data[i].TopFFZDesc;
                    }
                    
                    await excel.SaveAsync();
                }

                return nfilename;
            }

            return string.Empty;
        }

        [HttpPost]
        public async Task<JsonResult> GenerateExcelComplete(string id)
        {
            //CAMPOS PARA ALMACENAR RESULTADO DE TRANSACCIÓN     
            RequestResponse rr = new RequestResponse();

            try
            {
                long idE =  ser.Deserialize<long>(id);
                var response = await GenerateCompleteExcel(idE);


                if (response.Length > 0)
                {
                    //Formato generado
                    rr.Codigo = 1;
                    rr.Message = response;
                }
                else
                {
                    //Formato no generado por no encontrar datos suficientes
                    rr.Codigo = 0;
                    rr.Message = "";
                }
            }
            catch (Exception ex)
            {
                rr.Codigo = -1;
                rr.Message = "Error al Procesar incidente " + ex.ToString();
                Trace.WriteLine(rr.Message);
            }
            return Json(rr, JsonRequestBehavior.AllowGet);
        }

        private async Task<string> GenerateCompleteExcel(long id)
        {
            //Consultar información de registros seleccionados
            var data = await DaoEwo.DaoInstance.GetEwoList(new List<long> { id });

            if (data.Count > 0)
            {
                //Tomar el objeto
                var ewo = data.FirstOrDefault();
                //Listas de datos relacionadas al ewo
                var equipoTrabajo = await DaoEwo.DaoInstance.GetTeamWork(id);
                var accionesInmediatas = await DaoAcciones.DaoInstance.GetActionsList(id);
                var disposiciones = await DaoDisposiciones.DaoInstance.GetDisposiciones(id);
                var fivegs = await Dao5GResultados.DaoInstance.Get5GAsync(id);
                var genjitsus = fivegs.Where(x => x.codigo_5fv_opcion == Constantes.GENJITSU).ToList();
                var genris = fivegs.Where(x => x.codigo_5fv_opcion == Constantes.GENRI).ToList();
                var gensokus = fivegs.Where(x => x.codigo_5fv_opcion == Constantes.GENSOKU).ToList();


                //Especificar licencia
                ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

                string filename = Server.MapPath(Constantes.cfn);
                string nfilename = Server.MapPath(Constantes.cfnN);

                //ESCRIBIR EN ARCHIVO ECXEL
                FileInfo file = new FileInfo(filename);
                FileInfo fileN = new FileInfo(nfilename);

                if (fileN.Exists)
                {
                    fileN.Delete();
                }

                file.CopyTo(nfilename);

                //Generar excel
                using (var excel = new ExcelPackage(fileN))
                {
                    var ws = excel.Workbook.Worksheets["1) NC"];
                    CultureInfo ci = new CultureInfo("es-ES");

                    ws.Cells["E6"].Value = ewo.Consecutivo;
                    ws.Cells["K6"].Value = ewo.EstadoDesc;
                    ws.Cells["E9"].Value = ewo.Fecha.ToString("dd MMMM yyyy", ci);
                    ws.Cells["E10"].Value = ewo.HrApertInvestigacionTS;
                    ws.Cells["E11"].Value = ewo.HrEventoTS;
                    ws.Cells["E14"].Value = ewo.TipoIncidenteDesc;
                    ws.Cells["E15"].Value = ewo.Recurrente;
                    ws.Cells["K9"].Value = ewo.AreaDesc;
                    ws.Cells["K10"].Value = ewo.LineaDesc;
                    ws.Cells["K11"].Value = ewo.EtapaProceso;
                    ws.Cells["K12"].Value = ewo.CoorSupDesc;
                    ws.Cells["K13"].Value = ewo.RespAreaDesc;
                    ws.Cells["K14"].Value = ewo.OpeResDesc;
                    ws.Cells["K15"].Value = ewo.LidInvDesc;

                    var lines = 0;
                    while (lines < 4 && equipoTrabajo.Count - lines > 0)
                    {
                        ws.Cells["N" + (10 + lines)].Value = equipoTrabajo[lines].Nombres;
                        lines++;
                    }

                    ws.Cells["Q14"].Value = ewo.NumAirsweb;
                    ws.Cells["Q15"].Value = ewo.TiempoAirsWeb;
                    ws.Cells["E18"].Value = ewo.ArbPerd1;
                    ws.Cells["E19"].Value = ewo.ArbPerd2;
                    ws.Cells["E22"].Value = ewo.ArbPerd3;
                    ws.Cells["E23"].Value = ewo.ArbPerd4;
                    ws.Cells["H23"].Value = ws.Cells["H23"].Value + " " + ewo.ArbPerdO;
                    ws.Cells["K17"].Value = ewo.NombreProducto;
                    ws.Cells["K18"].Value = ewo.CodigoSAP;
                    ws.Cells["Q18"].Value = ewo.Lote;
                    ws.Cells["H20"].Value = ewo.Toneladas;
                    ws.Cells["J20"].Value = ewo.NumCajas;
                    ws.Cells["L20"].Value = ewo.NumPallet;
                    ws.Cells["N20"].Value = ewo.Unidades;
                    ws.Cells["P20"].Value = ewo.TamanoFormato;
                    ws.Cells["R20"].Value = ewo.CostoIncidente;
                    ws.Cells["J22"].Value = ewo.TiempoInpeccion;
                    ws.Cells["P22"].Value = ewo.TiempoLineaParada;
                    ws.Cells["B24"].Value += ewo.DescripcionProblema;

                    for (int i = 0; i < accionesInmediatas.Count; i++)
                    {
                        //Delimitar las filas del excel
                        if (i >= 7)
                        {
                            break;
                        }

                        ws.Cells[(i) + 30, 3].Value = accionesInmediatas[i].accion;
                        ws.Cells[(i) + 30, 7].Value = accionesInmediatas[i].Responsable;
                        ws.Cells[(i) + 30, 11].Value = accionesInmediatas[i].fecha_compromiso.Value.
                            ToString("dd MMMM yyyy", ci);
                        ws.Cells[(i) + 30, 15].Value = accionesInmediatas[i].evidencia_efectividad.Value.ToString() + "%";
                    }

                    //Disposiciones finales
                    foreach (var item in disposiciones)
                    {
                        switch (item.TipoDisposicion)
                        {
                            //Destrucción
                            case 17:
                                ws.Cells["E38"].Value = item.Cantidad;
                                ws.Cells["E39"].Value = item.UnidadMedida;
                                break;
                            //Liberación
                            case 18:
                                ws.Cells["I38"].Value = item.Cantidad;
                                ws.Cells["I39"].Value = item.UnidadMedida;
                                break;
                            //Reproceso
                            case 19:
                                ws.Cells["M38"].Value = item.Cantidad;
                                ws.Cells["M39"].Value = item.UnidadMedida;
                                break;
                                //Reproceso
                            case 20:
                                ws.Cells["R38"].Value = item.Cantidad;
                                ws.Cells["R39"].Value = item.UnidadMedida;
                                break;
                        }                       
                        
                    }

                    //Investigación en piso
                    if (ewo.Gemba)
                    {
                        ws.Cells["L43"].Value = "X";
                    }

                    if (ewo.Gembutsu)
                    {
                        ws.Cells["L44"].Value = "X";
                    }

                    if (ewo.Genjitsu)
                    {
                        ws.Cells["L45"].Value = "X";
                    }

                    if(!ewo.PathImageGs.Equals(""))
                    {
                        var image1 = ws.Drawings.AddPicture("image1", new FileInfo
                            (Server.MapPath(Constantes.ewo_images + ewo.PathImageGs)));
                        image1.From.Column = 14;
                        image1.From.Row = 42;
                        image1.SetSize(310, 135);
                    }

                    //Diligenciar los 5G's
                    for (int i = 0; i < genjitsus.Count; i++)
                    {
                        //Delimitar las filas del excel
                        if (i >= 6)
                        {
                            break;
                        }

                        ws.Cells[(i) + 49, 3].Value = genjitsus[i].condicion;
                        ws.Cells[(i) + 49, 7].Value = genjitsus[i].condicion_ideal;
                        ws.Cells[(i) + 49, 11].Value = genjitsus[i].checkk;
                        ws.Cells[(i) + 49, 15].Value = genjitsus[i].como;
                        ws.Cells[(i) + 49, 19].Value = genjitsus[i].ok.GetValueOrDefault(false) ? "OK" : "NOK";
                    }

                    for (int i = 0; i < genris.Count; i++)
                    {
                        //Delimitar las filas del excel
                        if (i >= 4)
                        {
                            break;
                        }

                        ws.Cells[(i) + 57, 3].Value = genris[i].condicion;
                        ws.Cells[(i) + 57, 7].Value = genris[i].condicion_ideal;
                        ws.Cells[(i) + 57, 11].Value = genris[i].checkk;
                        ws.Cells[(i) + 57, 15].Value = genris[i].como;
                        ws.Cells[(i) + 57, 19].Value = genris[i].ok.GetValueOrDefault(false) ? "OK" : "NOK";
                    }

                    for (int i = 0; i < gensokus.Count; i++)
                    {
                        //Delimitar las filas del excel
                        if (i >= 4)
                        {
                            break;
                        }

                        ws.Cells[(i) + 63, 3].Value = gensokus[i].condicion;
                        ws.Cells[(i) + 63, 7].Value = gensokus[i].condicion_ideal;
                        ws.Cells[(i) + 63, 11].Value = gensokus[i].checkk;
                        ws.Cells[(i) + 63, 15].Value = gensokus[i].como;
                        ws.Cells[(i) + 63, 19].Value = gensokus[i].ok.GetValueOrDefault(false) ? "OK" : "NOK";
                    }

                    //5W+1H
                    ws.Cells["B69"].Value = ewo.DescripcionProblema;
                    ws.Cells["G70"].Value = ewo.QueDesc;
                    ws.Cells["G73"].Value = ewo.DondeDesc;
                    ws.Cells["G76"].Value = ewo.CuandoDesc;
                    ws.Cells["G79"].Value = ewo.QuienDesc;
                    ws.Cells["G82"].Value = ewo.CualDesc;
                    ws.Cells["G85"].Value = ewo.ComoDesc;
                    ws.Cells["G89"].Value = ewo.FenomenoDesc;

                    await excel.SaveAsync();
                }

                return nfilename;
            }

            return string.Empty;
        }

        public int Pixel2MTU(int pixels)
        {
            int mtus = pixels * 9525;
            return mtus;
        }

        public ActionResult DownloadEwoFile()
        {
            string nfilename = Server.MapPath(Constantes.fnN);
            var date = DateTime.Now.ToString("MM_dd_yyyy_h_mm_tt");

            return File(nfilename, "application/vnd.ms-excel", "Formato EWO "+date+".xlsx");
        }

        public ActionResult DownloadCompleteEwoFile()
        {
            string nfilename = Server.MapPath(Constantes.cfnN);
            var date = DateTime.Now.ToString("MM_dd_yyyy_h_mm_tt");

            return File(nfilename, "application/vnd.ms-excel", "Full formato EWO " + date + ".xlsx");
        }

        // GET: ReportarIncidentes/Edit/5
        public async Task<ActionResult> Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ewo ewo = await db.ewo.FindAsync(id);
            if (ewo == null)
            {
                return HttpNotFound();
            }
            ViewBag.codigo_coordinador_turno = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_coordinador_turno);
            ViewBag.codigo_lider_investigacion = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_lider_investigacion);
            ViewBag.codigo_operario_responsable = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_operario_responsable);
            ViewBag.pa_codigo_coordinador_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_coordinador_prod);
            ViewBag.pa_codigo_gerente_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_prod);
            ViewBag.pa_codigo_gerente_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_calidad);
            ViewBag.pa_codigo_jefe_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_jefe_calidad);
            ViewBag.codigo_responsable_area = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_responsable_area);
            ViewBag.codigo_producto = new SelectList(db.productos, "id", "nombre", ewo.producto);
            ViewBag.codigo_disposicion_final_prod = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_disposicion_final_prod);
            ViewBag.codigo_estado = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_estado);
            ViewBag.codigo_linea = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_linea);
            

            return View(ewo);
        }

        // POST: ReportarIncidentes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id,consecutivo,codigo_estado,fecha_apertura_investigacion,hora_apertura_investigacion,hora_evento,fecha_entrega_investigacion,hora_entrega_investigacion,recurrente,codigo_area,codigo_linea,etapa,codigo_coordinador_turno,codigo_responsable_area,codigo_operario_responsable,codigo_lider_investigacion,codigo_producto,codigo_sap_producto,lote_producto,toneladas_producto,numero_cajas,numero_pallet,unidades,tamano_formato,codigo_unidad_medida_tamfor,costo_incidente,tiempo_linea_parada,descripcion_general_problema,tiempo_inspeccion,codigo_arbol_perdidas,numero_airsweb,tiempo_ingresado_airsweb,codigo_disposicion_final_prod,cantidad_toneladas,gemba,gembutsu,genjitsu,five_g_image,descripcion_problema,que,donde,cuando,quien,cual,como,descripcion_fenomeno,images_path,comentarios_resoluciones,pa_codigo_coordinador_prod,pa_codigo_gerente_prod,pa_codigo_jefe_calidad,pa_codigo_gerente_calidad")] ewo ewo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ewo).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.codigo_coordinador_turno = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_coordinador_turno);
            ViewBag.codigo_lider_investigacion = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_lider_investigacion);
            ViewBag.codigo_operario_responsable = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_operario_responsable);
            ViewBag.pa_codigo_coordinador_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_coordinador_prod);
            ViewBag.pa_codigo_gerente_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_prod);
            ViewBag.pa_codigo_gerente_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_calidad);
            ViewBag.pa_codigo_jefe_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_jefe_calidad);
            ViewBag.codigo_responsable_area = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_responsable_area);
            ViewBag.codigo_producto = new SelectList(db.productos, "id", "nombre", ewo.producto);
            ViewBag.codigo_disposicion_final_prod = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_disposicion_final_prod);
            ViewBag.codigo_estado = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_estado);
            ViewBag.codigo_linea = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_linea);
            
            return View(ewo);
        }
              
        // POST: ReportarIncidentes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(long id)
        {
            ewo ewo = await db.ewo.FindAsync(id);
            db.ewo.Remove(ewo);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<JsonResult> GetProducts(string term)
        {
            //LISTA DE DE PRODUCTOS
            var list = await DaoProductos.DaoInstance.GetProductsAsync();
                       
            return Json(list.Where(x => x.StartsWith
                (term,StringComparison.CurrentCultureIgnoreCase)),
                    JsonRequestBehavior.AllowGet);
        }
            
        [HttpPost]
        public async Task<JsonResult> GetAcionsList(long id_ewo)
        {
            var actList = await DaoAcciones.DaoInstance.GetActionsList(id_ewo);
            return Json(actList);
        }

        [HttpPost]
        public async Task<JsonResult> GetEwoAsync(int id)
        {
            var ewo = await DaoEwo.DaoInstance.GetEwoDesc(id);
            return Json(ewo);
        }

        [HttpPost]
        public async Task<JsonResult> GetZeroQuestions(int id_tipom)
        {
            //TEST THE ZERO METHOD
            var res = await DaoZero.DaoInstance.GetZeroQuestions(id_tipom);
            return Json(res);
        }

        public async Task<JsonResult> GetDropDownListAsync(int from, int id)
        {
            //FROM 1 - DESDE PLANTAS
            //FROM 2 - DESDE AREAS

            SelectList List = null;

            switch (from)
            {
                case 1:
                    //LISTA DE DE LÍNEAS
                    var listA = await DaoAreas.DaoInstance.GetAreasAsync(id);
                    listA.Insert(0, new Database.areas_productivas() { id = 0, descripcion = "Seleccione area..." });
                    List = new SelectList(listA, "id", "descripcion");
                    break;
                case 2:
                    //LISTA DE DE LÍNEAS
                    var listL = await DaoLineas.DaoInstance.GetLinesAsync(id);
                    listL.Insert(0, new Database.lineas() { id = 0, descripcion = "Seleccione línea..." });
                    List = new SelectList(listL, "id", "descripcion");
                    break;
            }
            return Json(new SelectList(List, "Value", "Text"));
        }

        private async Task<ReporteIncidentesViewModel> BuildModel(long id)
        {
            var viewModel = new ReporteIncidentesViewModel();

            if (id > 0)
            {
                viewModel = await DaoEwo.DaoInstance.GetEwoDesc(id);
                //Fecha de cierre
                viewModel.FchCierre = DateTime.Now.ToString("dd-MM-yyyy");
            }
            else
            {               
                viewModel.FchApertInvestigacion = DateTime.Now.ToString("dd-MM-yyyy");
                viewModel.FchEntregaInvestigacion = DateTime.Now.ToString("dd-MM-yyyy");                
                viewModel.Consecutivo = "00" + await DaoEwo.DaoInstance.GetLastConsecutive();
            }

            //LISTA DE TIPOS DE INCIDENTE
            var listTI = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.INCIDENTSTYPES);
            listTI.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione tipo de incidente..." });            
            viewModel.TipoIncidenteList = new SelectList(listTI, "id", "descripcion");

            //LISTA PLANTAS
            var listPlantas = await DaoPlantas.DaoInstance.GetPlantasAsync();
            listPlantas.Insert(0, new Database.plantas() { id = 0, descripcion = "Seleccione planta..." });
            viewModel.PlantasList = new SelectList(listPlantas, "Id", "descripcion");

            //LISTA AREAS
            var listA = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.AREASTYPES);
            listA.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione área..." });
            viewModel.AreasList = new SelectList(listA, "Id", "descripcion");

            //LISTA LÍNEAS
            var listL = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.LINESTYPES);
            listL.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione línea..." });
            viewModel.LineasList = new SelectList(listL, "Id", "descripcion");


            //USUARIOS ADMINISTRADORES
            var listUA = await DaoUsuarios.DaoInstance.GetUsersByRole(Constantes.ADMINROLE);
            var listUS = await DaoUsuarios.DaoInstance.GetUsersByRole(Constantes.SUPERROLE);
            listUA.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            listUA.AddRange(listUS);
            viewModel.AdminUsersList = new SelectList(listUA, "Id", "NombresCommpletos");

            //USUARIOS OPERARIOS
            var listUO = await DaoUsuarios.DaoInstance.GetUsersByRole(Constantes.OPERATINGROLE);
            listUO.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            viewModel.OperatingUsersList = new SelectList(listUO, "Id", "NombresCommpletos");

            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listDF = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.FINALDISPOSITION);
            listDF.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione disposición..." });
            viewModel.DisposicionFList = new SelectList(listDF, "Id", "descripcion");

            //TOP FIVE FOR ZERO
            var listTF = await DaoTiposData.DaoInstance.GetTypesAsync(Constantes.TOPFIVEFORZERO);
            viewModel.TopFiveForZeroList = listTF;

            return viewModel;
        }

        private async Task<RequestResponse> CreateEwoObject(ReporteIncidentesViewModel ewr, bool bReporte)
        {
            RequestResponse rr = new RequestResponse();
            ewo ewo = new ewo();

            
            List<acciones_inmediatas> accInm = ser.Deserialize<List<acciones_inmediatas>>(ewr.Cmd);

            ewo.consecutivo = long.Parse(ewr.Consecutivo);            
            ewo.fecha_apertura_investigacion = ewr.FchApertInvestigacion == null ? DateTime.Now : 
                DateTime.ParseExact(ewr.FchApertInvestigacion, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                        
            ewo.hora_evento = TimeSpan.Parse(ewr.HrEvento);
            ewo.fecha_entrega_investigacion = ewr.FchEntregaInvestigacion == null ? DateTime.Now : 
                DateTime.ParseExact(ewr.FchEntregaInvestigacion, "dd-MM-yyyy", CultureInfo.InvariantCulture);

            ewo.hora_entrega_investigacion = TimeSpan.Parse(ewr.HrEntregaInvestigacion);            
            ewo.codigo_linea = ewr.IdLinea;
            ewo.etapa = ewr.EtapaProceso;
            ewo.codigo_coordinador_turno = ewr.IdCoorSup;            
            ewo.codigo_responsable_area = ewr.IdRespArea;
            ewo.codigo_operario_responsable = ewr.IdOpeRes;
            ewo.codigo_lider_investigacion = ewr.IdLidInv;
            ewo.producto = ewr.NombreProducto;
            ewo.codigo_sap_producto = ewr.CodigoSAP;
            ewo.lote_producto = ewr.Lote;
            ewo.toneladas_producto = ewr.Toneladas;
            ewo.numero_cajas = ewr.NumCajas;
            ewo.numero_pallet = ewr.NumPallet;
            ewo.unidades = ewr.Unidades;
            ewo.tamano_formato = ewr.TamanoFormato;
            ewo.tiempo_linea_parada = ewr.TiempoLineaParada;
            ewo.descripcion_general_problema = ewr.DescripcionProblema;

            

            if (bReporte)
            {
                ewo.codigo_estado = 1; //ABIERTO - TIPOS DATA
                ewo.autor = User.Identity.GetUserId();

                long reg = await DaoEwo.DaoInstance.AddEwo(ewo);

                if (reg > 0)
                {
                    foreach (var item in accInm)
                    {
                        item.codigo_ewo = reg;
                    }

                    await DaoAcciones.DaoInstance.AddAcciones(accInm);
                }
            }
            else
            {
                ewo.autor = (await DaoEwo.DaoInstance.GetAutorAsync(ewr.Id));
                ewo.codigo_estado = 2; //CERRADO - TIPOS DATA
                ewo.usuario_procesador = User.Identity.GetUserId();

                ewo.id = ewr.Id;
                ewo.ap_nivel_1 = ewr.ArbPerd1;
                ewo.ap_nivel_2 = ewr.ArbPerd2;
                ewo.ap_nivel_3 = ewr.ArbPerd3;
                ewo.ap_nivel_4 = ewr.ArbPerd4;
                ewo.ap_nivel_otro = ewr.ArbPerdO;

                ewo.tipo_incidente = ewr.TipoIncidente;
                ewo.recurrente = ewr.Recurrente != null;

                ewo.numero_airsweb = ewr.NumAirsweb;
                ewo.tiempo_ingresado_airsweb = ewr.TiempoAirsWeb;
                ewo.tiempo_inspeccion = ewr.TiempoInpeccion;
                ewo.costo_incidente = Convert.ToDecimal(ewr.CostoIncidente);
                ewo.costo_incidente_euros = Convert.ToDecimal(ewr.CostoIncidenteEuros);
                ewo.codigo_disposicion_final_prod = ewr.IdDisposicionF;
                ewo.cantidad_toneladas = ewr.DFToneladas;

                ewo.gemba = ewr.GembaOk != null;
                ewo.gembutsu = ewr.GembutsuOk != null;
                ewo.genjitsu = ewr.GenjitsuOk != null;


                //Tratamiento de imagenes
                ewo.five_g_image = ewr.ImageGs != null ? ewr.ImageGs.FileName : "";
                ewo.images_path = ewr.ImageFen != null ? ewr.ImageFen.FileName : "";

                SaveImageEwoServer(ewr.ImageGs);
                SaveImageEwoServer(ewr.ImageFen);

                ewo.que = ewr.QueDesc;
                ewo.donde = ewr.DondeDesc;
                ewo.cuando = ewr.CuandoDesc;
                ewo.quien = ewr.QuienDesc;
                ewo.cual = ewr.CualDesc;
                ewo.como = ewr.ComoDesc;
                ewo.descripcion_fenomeno = ewr.FenomenoDesc;

                //Campos 4M
                ewo.maquina4m_desc = ewr.Maquina4MDesc;
                ewo.metodo4m_desc = ewr.Metodo4MDesc;
                ewo.manoobra4m_desc = ewr.ManoObra4MDesc;
                ewo.material4m_desc = ewr.Material4MDesc;

                decimal maq4m = decimal.Parse(ewr.Maquina4MTotal.Replace("%", ""));
                decimal met4m = decimal.Parse(ewr.Metodo4MTotal.Replace("%", ""));
                decimal man4m = decimal.Parse(ewr.ManoObra4MTotal.Replace("%", ""));
                decimal mat4m = decimal.Parse(ewr.Material4MTotal.Replace("%", ""));

                ewo.maquina4m = maq4m;
                ewo.metodo4m = met4m;
                ewo.manoobra4m = man4m;
                ewo.material4m = mat4m;

                //Before & after
                ewo.before = decimal.Parse(ewr.BeforePct);
                ewo.after = decimal.Parse(ewr.AfterPct);

                ewo.codigo_top_five_fzero = ewr.IdTopFFZ.Split('_').Length > 0 ? Int64.Parse( ewr.IdTopFFZ.Split('_')[1]) : 0;

                ewo.comentarios_resoluciones = ewr.ComentariosResoluciones;
                ewo.pa_codigo_coordinador_prod = ewr.IdCoorProd;
                ewo.pa_codigo_jefe_calidad = ewr.IdJefCal;
                ewo.pa_codigo_gerente_prod = ewr.IdGerProd;
                ewo.pa_codigo_gerente_calidad = ewr.IdGerCal;

                ewo.fecha_cierre = ewr.FchCierre == null ? DateTime.Now :
                DateTime.ParseExact(ewr.FchCierre, "dd-MM-yyyy", CultureInfo.InvariantCulture);

                ewo.codigo_m = ewr.MaxMId;

                //Actualizar incidente en base de datos
                long id = await DaoEwo.DaoInstance.ProcesarIncidenteAsync(ewo);

                //acciones inmediatas
                foreach (var item in accInm)
                {
                    item.codigo_ewo = id;
                }
                //Agregar a BD acciones
                await DaoAcciones.DaoInstance.AddAccionesProcess(accInm,id);

                //Equipo de trabajo - dividir y asignar id ewo
                var eqTrab = ewr.EquipoTrabajo;
                string[] integrantes = eqTrab.Split(',');
                List<equipo_trabajo> listET = new List<equipo_trabajo>();
                
                foreach (var integrante in integrantes)
                {
                    listET.Add(new equipo_trabajo()
                    {
                        codigo_ewo = id,
                        codigo_usuario = integrante
                    });
                }

                //agregar a BD equipo de trabajo
                await DaoEwo.DaoInstance.AddEquipoTrabjo(listET);

                //Listas de disposiciones
                List<disposiciones> listDisp = ser.Deserialize<List<disposiciones>>(ewr.ListDisp);
                foreach (var item in listDisp)
                {
                    item.codigo_ewo = id;
                }

                await DaoDisposiciones.DaoInstance.AddDisposiciones(listDisp);

                //Listas Gs
                List<fiveg_resultados> listGenjitsu = ser.Deserialize<List<fiveg_resultados>>(ewr.ListGenj);
                foreach (var item in listGenjitsu)
                {
                    item.codigo_5fv_opcion = 21;//Genjitsu - tipos data
                }

                List<fiveg_resultados> listGenri = ser.Deserialize<List<fiveg_resultados>>(ewr.ListGenr);
                foreach (var item in listGenri)
                {
                    item.codigo_5fv_opcion = 22;//Genri - tipos data
                }

                List<fiveg_resultados> listGensoku = ser.Deserialize<List<fiveg_resultados>>(ewr.ListGens);
                foreach (var item in listGensoku)
                {
                    item.codigo_5fv_opcion = 23;//Gensoku - tipos data
                }

                //Asociar id ewo y agregar a basse de datos
                List<fiveg_resultados> listGs = listGenjitsu.Union(listGenri).Union(listGensoku).ToList();

                foreach (var item in listGs)
                {
                    item.codigo_ewo = id;
                }

                //Agregar lista a DB
                await Dao5GResultados.DaoInstance.Add5GResultadosAsync(listGs);

                //Porque Porque
                List<porque_porque> listPorque = ser.Deserialize<List<porque_porque>>(ewr.ListPorq);
                foreach (var item in listPorque)
                {
                    item.codigo_ewo = id;
                }

                //Agregar lista a DB
                await DaoPorque.DaoInstance.AddPorqueAsync(listPorque);

                //Preguntas 4M
                List<Preguntas4MModel> list4M = ser.Deserialize<List<Preguntas4MModel>>(ewr.List4M);
                List<respuestas4m> listDB4M = new List<respuestas4m>();
                foreach (var item in list4M)
                {
                    listDB4M.Add(new respuestas4m()
                    {
                        codigo_ewo = id,//Poner el id real
                        codigo_pregunta = item.id,
                        verificado = item.option == "1" ? "Yes" : (item.option == "0" ? "No" : "NA")
                    });
                }

                //Agregar lista a DB
                await Dao4M.DaoInstance.AddRespuestasAsync(listDB4M);

                //Zero Responses
                List<ZeroResponses> listZRB = ser.Deserialize<List<ZeroResponses>>(ewr.ListBefo);
                List<ZeroResponses> listZRA = ser.Deserialize<List<ZeroResponses>>(ewr.ListAfte);

                List<zero_ewo> listZE = new List<zero_ewo>();
                
                foreach (var item in listZRB)
                {
                    listZE.Add(new zero_ewo()
                    {
                        codigo_ewo = 0,
                        before = item.Puntaje,
                        codigo_response = item.Puntaje == 0 ? 1 : (await DaoZero.DaoInstance.GetZeroResponse(item.Id, item.Puntaje)).Id 
                    });
                }

                foreach (var item in listZRA)
                {
                    listZE.Add(new zero_ewo()
                    {
                        codigo_ewo = id,
                        after = item.Puntaje,
                        codigo_response = item.Puntaje == 0 ? 1 : (await DaoZero.DaoInstance.GetZeroResponse(item.Id, item.Puntaje)).Id
                    });
                }

                //Agregar lista a DB
                await DaoZero.DaoInstance.AddZeroEwoAsync(listZE);

                //Plan de acción - agregar clave de ewo
                List<plan_accion> listPA = ser.Deserialize<List<plan_accion>>(ewr.ListPlan);
                foreach (var item in listPA)
                {
                    item.codigo_ewo = id;
                }

                //Agregar lista a DB
                await DaoPlanAccion.DaoInstance.AddPlanAccionAsync(listPA);
            }

            rr.Codigo = 1;
            rr.Resultado = ewo;
            return rr;
        }

        private void SaveImageEwoServer(HttpPostedFileBase file)
        {
            if (file != null)
            {
                string nameAndLocation = Constantes.ewo_images + file.FileName;
                file.SaveAs(Server.MapPath(nameAndLocation));
            }           
        }

        public async Task<JsonResult> GetuserInfo(string userId)
        {
            //CAMPOS PARA ALMACENAR RESULTADO DE TRANSACCIÓN     
            RequestResponse rr = new RequestResponse();

            try
            {      
                var user = await DaoUsuarios.DaoInstance.GetUserAsync(userId);
                rr.Codigo = 1;
                rr.Message = "OK";
                rr.Resultado = user == null ? "" : user.SingUrl;

            }
            catch (Exception ex)
            {
                Trace.WriteLine("Error al consultar información de usuario " + ex.ToString());
                rr.Codigo = -1;
                rr.Message = "Error "+ ex.Message;
            }
            return Json(rr, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

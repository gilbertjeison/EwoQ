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

namespace EwoQ.Controllers
{
    [Authorize]
    public class ReportarIncidentesController : Controller
    {
        private EwoQEntities db = new EwoQEntities();       

        int AREASTYPES = 7;
        int LINESTYPES = 8;
        int INCIDENTSTYPES = 15;
        int FINALDISPOSITION = 9;
        int UNIDADMEDIDA = 13;
        int TOPFIVEFORZERO = 12;
        string ADMINROLE = "d908787a-642b-480f-ba5c-f46df6fc8713";
        string OPERATINGROLE = "ad3cb589-855b-4888-b234-9333eaca85ec";
        static string ewo_images = "~/Content/images/ewo_images/";

        #region INDEX
        [HttpPost]
        public async Task<ActionResult> LoadDataAsync()
        {
            Task<List<ReporteIncidentesViewModel>> rivm;

            try
            {
                AspNetUsers aspNetUsers = DaoUsuarios.DaoInstance.GetUser(User.Identity.GetUserId());

                //var draw = Request.Form["draw"];
                //var start = Request.Form["start"];
                //var length = Request.Form["length"];
                //var sortColumn = Request.Form["columns[" + Request.Form["order[0][column]"] + "][name]"];
                //var sortColumnDirection = Request.Form["order[0][dir]"];
                //var searchValue = Request.Form["search[value]"];

                //Paging Size (10,20,50,100)
                //int pageSize = length.ToString() != null ? Convert.ToInt32(length) : 0;
                //int skip = start.ToString() != null ? Convert.ToInt32(start) : 0;
                int recordsTotal = 0;

                if (aspNetUsers.IdRol.Equals(Utils.SomeHelpers.ROL_OPER))
                {
                    rivm = DaoEwo.DaoInstance.GetEwoList(aspNetUsers.Id);
                }
                else
                {
                    rivm = DaoEwo.DaoInstance.GetEwoList();
                }

                var data1 = await rivm;

                //Sorting
                //if (!(string.IsNullOrEmpty(sortColumn) && string.IsNullOrEmpty(sortColumnDirection)))
                //{
                //    data1 = data1.OrderBy(sortColumn + " " + sortColumnDirection).ToList();
                //}

                ////Search
                //if (!string.IsNullOrEmpty(searchValue))
                //{
                //    data1 = data1.Where(m => m.DescripcionProblema.Contains(searchValue) || m.LineaDesc.Contains(searchValue)).ToList();
                //}

                //total number of rows count 
                recordsTotal = data1.Count();
                //Paging 
                //var data = data1.Skip(skip).Take(pageSize).ToList();

                //return Json(new { draw = draw, recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data });
                return Json(new { recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data1 });
            }
            catch (Exception)
            {
                throw;
            }
        }
        #endregion
        
        
        // GET: ReportarIncidentes
        public async Task<ActionResult> Index()
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
            var listDF = await DaoTiposData.DaoInstance.GetTypesAsync(FINALDISPOSITION);
            listDF.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione disposición..." });
            var DisposicionFList = new SelectList(listDF, "Id", "descripcion");

            return Json(DisposicionFList);
        }

        public async Task<JsonResult> GetAreasJsonAsync()
        {
            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listA = await DaoTiposData.DaoInstance.GetTypesAsync(AREASTYPES);
            listA.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione área..." });
            var AreasList = new SelectList(listA, "Id", "descripcion");

            return Json(AreasList);
        }

        //LISTA AREAS
        

    [HttpPost]
        public async Task<JsonResult> GetAllUniMedJsonAsync()
        {
            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listUM = await DaoTiposData.DaoInstance.GetTypesAsync(UNIDADMEDIDA);
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

        // GET: ReportarIncidentes/Details/5
        public async Task<ActionResult> Details(long? id)
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
            return View(ewo);
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
                var userRole = DaoUsuarios.DaoInstance.GetUser(User.Identity.GetUserId()).IdRol;

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

        // GET: ReportarIncidentes/Delete/5
        public async Task<ActionResult> Delete(long? id)
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
            List<CustomInmActions> kla = new List<CustomInmActions>();
            actList.ForEach(x =>
            {
                kla.Add(new CustomInmActions()
                {
                    codigo_ewo = x.codigo_ewo,
                    accion = x.accion,
                    fecha_compromiso = x.fecha_compromiso.Value.ToString("MM-dd-yyyy"),
                    id = x.id,
                    codigo_responsable = x.codigo_responsable,
                    evidencia_efectividad = x.evidencia_efectividad
                });
            });

            return Json(kla);
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
            var listTI = await DaoTiposData.DaoInstance.GetTypesAsync(INCIDENTSTYPES);
            listTI.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione tipo de incidente..." });            
            viewModel.TipoIncidenteList = new SelectList(listTI, "id", "descripcion");

            //LISTA PLANTAS
            var listPlantas = await DaoPlantas.DaoInstance.GetPlantasAsync();
            listPlantas.Insert(0, new Database.plantas() { id = 0, descripcion = "Seleccione planta..." });
            viewModel.PlantasList = new SelectList(listPlantas, "Id", "descripcion");

            //LISTA AREAS
            var listA = await DaoTiposData.DaoInstance.GetTypesAsync(AREASTYPES);
            listA.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione área..." });
            viewModel.AreasList = new SelectList(listA, "Id", "descripcion");

            //LISTA LÍNEAS
            var listL = await DaoTiposData.DaoInstance.GetTypesAsync(LINESTYPES);
            listL.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione línea..." });
            viewModel.LineasList = new SelectList(listL, "Id", "descripcion");


            //USUARIOS ADMINISTRADORES
            var listUA = await DaoUsuarios.DaoInstance.GetUsersByRole(ADMINROLE);
            listUA.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            viewModel.AdminUsersList = new SelectList(listUA, "Id", "NombresCommpletos");

            //USUARIOS OPERARIOS
            var listUO = await DaoUsuarios.DaoInstance.GetUsersByRole(OPERATINGROLE);
            listUO.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            viewModel.OperatingUsersList = new SelectList(listUO, "Id", "NombresCommpletos");

            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listDF = await DaoTiposData.DaoInstance.GetTypesAsync(FINALDISPOSITION);
            listDF.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione disposición..." });
            viewModel.DisposicionFList = new SelectList(listDF, "Id", "descripcion");

            //TOP FIVE FOR ZERO
            var listTF = await DaoTiposData.DaoInstance.GetTypesAsync(TOPFIVEFORZERO);
            viewModel.TopFiveForZeroList = listTF;

            return viewModel;
        }

        private async Task<RequestResponse> CreateEwoObject(ReporteIncidentesViewModel ewr, bool bReporte)
        {
            RequestResponse rr = new RequestResponse();
            ewo ewo = new ewo();

            JavaScriptSerializer ser = new JavaScriptSerializer();
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
                ewo.recurrente = ewr.Recurrente != null ? true : false;

                ewo.numero_airsweb = ewr.NumAirsweb;
                ewo.tiempo_ingresado_airsweb = ewr.TiempoAirsWeb;
                ewo.tiempo_inspeccion = ewr.TiempoInpeccion;
                ewo.costo_incidente = Convert.ToDecimal(ewr.CostoIncidente);
                ewo.costo_incidente_euros = Convert.ToDecimal(ewr.CostoIncidenteEuros);
                ewo.codigo_disposicion_final_prod = ewr.IdDisposicionF;
                ewo.cantidad_toneladas = ewr.DFToneladas;

                ewo.gemba = ewr.GembaOk != null ? true : false;
                ewo.gembutsu = ewr.GembutsuOk != null ? true : false;
                ewo.genjitsu = ewr.GenjitsuOk != null ? true : false;


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
                        verificado = item.option == "1" ? "Yes" : (item.option == "0" ? "No" :"NA")                        
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
                        codigo_ewo = 0,
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
                string nameAndLocation = ewo_images + file.FileName;
                file.SaveAs(Server.MapPath(nameAndLocation));
            }           
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

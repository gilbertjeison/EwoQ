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

namespace EwoQ.Controllers
{
    [Authorize]
    public class ReportarIncidentesController : Controller
    {
        

        private EwoQEntities db = new EwoQEntities();
        DaoAcciones daoAcc = new DaoAcciones();
        DaoTiposData daoTD = new DaoTiposData();
        DaoUsuarios daoUser = new DaoUsuarios();
        DaoProductos daoPro = new DaoProductos();
        DaoEwo daoEwo = new DaoEwo();
        Dao4M dao4m = new Dao4M();
        DaoZero daoZ = new DaoZero();

        int AREASTYPES = 7;
        int LINESTYPES = 8;
        int INCIDENTSTYPES = 15;
        int FINALDISPOSITION = 9;
        int TOPFIVEFORZERO = 12;
        string ADMINROLE = "d908787a-642b-480f-ba5c-f46df6fc8713";
        string OPERATINGROLE = "ad3cb589-855b-4888-b234-9333eaca85ec";

        #region INDEX
        [HttpPost]
        public async Task<ActionResult> LoadDataAsync()
        {
            Task<List<ReporteIncidentesViewModel>> rivm;

            try
            {
                AspNetUsers aspNetUsers = daoUser.GetUser(User.Identity.GetUserId());

                var draw = Request.Form["draw"];
                var start = Request.Form["start"];
                var length = Request.Form["length"];
                var sortColumn = Request.Form["columns[" + Request.Form["order[0][column]"] + "][name]"];
                var sortColumnDirection = Request.Form["order[0][dir]"];
                var searchValue = Request.Form["search[value]"];

                //Paging Size (10,20,50,100)
                int pageSize = length.ToString() != null ? Convert.ToInt32(length) : 0;
                int skip = start.ToString() != null ? Convert.ToInt32(start) : 0;
                int recordsTotal = 0;

                if (aspNetUsers.IdRol.Equals(Utils.SomeHelpers.ROL_OPER))
                {
                    rivm = daoEwo.GetEwoList(aspNetUsers.Id);
                }
                else
                {
                    rivm = daoEwo.GetEwoList();
                }

                var data1 = await rivm;

                //Sorting
                if (!(string.IsNullOrEmpty(sortColumn) && string.IsNullOrEmpty(sortColumnDirection)))
                {
                    data1 = data1.OrderBy(sortColumn + " " + sortColumnDirection).ToList();
                }

                //Search
                if (!string.IsNullOrEmpty(searchValue))
                {
                    data1 = data1.Where(m => m.DescripcionProblema.Contains(searchValue) || m.LineaDesc.Contains(searchValue)).ToList();
                }

                //total number of rows count 
                recordsTotal = data1.Count();
                //Paging 
                var data = data1.Skip(skip).Take(pageSize).ToList();

                return Json(new { draw = draw, recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data });
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
            var listU = await daoUser.GetAllUsers();
            listU.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            List = new SelectList(listU, "Id", "NombresCommpletos");

            return Json(new SelectList(List, "Value", "Text"));
        }
        
        [HttpPost]
        public async Task<JsonResult> GetAllUsersJsonAsync()
        {
            var users = await daoUser.GetAllUsers();           
            return Json(users);
        }

        [HttpPost]
        public async Task<JsonResult> Get4MQuestionsByType(int id)
        {
            var qstns = await dao4m.Get4mQuestionsByType(id);
            return Json(qstns);
        }

        public async Task<JsonResult> GetAllUsers()
        {
            //LISTA DE DE LÍNEAS
            var list = await daoUser.GetAllUsers();

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
            int res = 0;
            try
            {
                //var ewo1 = ewr;

                JavaScriptSerializer ser = new JavaScriptSerializer();
                List<acciones_inmediatas> accInm = ser.Deserialize<List<acciones_inmediatas>>(ewr.Cmd);

                ewo ewo = new ewo();
                ewo.consecutivo = await daoEwo.GetLastConsecutive();
                ewo.codigo_estado = 1; //ABIERTO - TIPOS DATA
                ewo.fecha_apertura_investigacion = ewr.FchApertInvestigacion == null ? DateTime.Now : DateTime.ParseExact(ewr.FchApertInvestigacion, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                ewo.hora_apertura_investigacion = TimeSpan.Parse(ewr.HrApertInvestigacion);
                ewo.hora_evento = TimeSpan.Parse(ewr.HrEvento);
                ewo.fecha_entrega_investigacion = ewr.FchEntregaInvestigacion == null ? DateTime.Now : DateTime.ParseExact(ewr.FchEntregaInvestigacion, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                ewo.hora_entrega_investigacion = TimeSpan.Parse(ewr.HrEntregaInvestigacion);
                ewo.tipo_incidente = ewr.TipoIncidente;
                ewo.codigo_area = ewr.IdArea;
                ewo.codigo_linea = ewr.IdLinea;
                ewo.etapa = ewr.EtapaProceso;
                ewo.codigo_coordinador_turno = ewr.IdCoorSup;
                ewo.recurrente = ewr.Recurrente != null ? true : false;
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
                ewo.autor = User.Identity.GetUserId();

                long reg = await daoEwo.AddEwo(ewo);

                if (reg > 0)
                {
                    foreach (var item in accInm)
                    {
                        item.codigo_ewo = reg;
                    }

                    await daoAcc.AddAcciones(accInm);

                    res = 1;
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error en CreateAsync "+e.ToString());
                res = -1;
            }
            

            return Json(new { code= res });
        }

       [HttpGet]
       public async Task<ActionResult> ProcesarIncidente(int? id)
        {
            int code;
            string message;

            try
            {               
                if (id.HasValue)
                {
                    var rivm = await BuildModel(id.Value);
                    return View(rivm);
                }
                else
                {
                    return Json(new {code = -1, message = "Error al procesar incidente" });
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
        public async Task<ActionResult> ProcesarIncidente(ReporteIncidentesViewModel rivm)
        {
            //CAMPOS´PARA ALMACENAR RESULTADO DE TRANSACCIÓN        
            string message;

            await Task.Delay(100);
            try
            {
                ewo e = new ewo();

            }
            catch (Exception ex)
            {
                Trace.WriteLine("Error al Procesar incidente " + ex.ToString());
            }
            return View();
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
            ViewBag.codigo_area = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_area);
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
            ViewBag.codigo_area = new SelectList(db.tipos_data, "id", "descripcion", ewo.codigo_area);
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
            var list = await daoPro.GetProductsAsync();
                       
            return Json(list.Where(x => x.StartsWith
                (term,StringComparison.CurrentCultureIgnoreCase)),
                    JsonRequestBehavior.AllowGet);
        }
            
        [HttpPost]
        public async Task<JsonResult> GetAcionsList(long id_ewo)
        {
            var actList = await daoAcc.GetActionsList(id_ewo);
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
            var ewo = await daoEwo.GetEwoDesc(id);
            return Json(ewo);
        }

        [HttpPost]
        public async Task<JsonResult> GetZeroQuestions(int id_tipom)
        {
            //TEST THE ZERO METHOD
            var res = await daoZ.GetZeroQuestions(id_tipom);
            return Json(res);
        }

        private async Task<ReporteIncidentesViewModel> BuildModel(long id)
        {
            var viewModel = new ReporteIncidentesViewModel();

            if (id > 0)
            {
                viewModel = await daoEwo.GetEwoDesc(id);
            }
            else
            {               
                viewModel.FchApertInvestigacion = DateTime.Now.ToString("dd-MM-yyyy");
                viewModel.FchEntregaInvestigacion = DateTime.Now.ToString("dd-MM-yyyy");                
                viewModel.Consecutivo = "00" + await daoEwo.GetLastConsecutive();
            }

            //LISTA DE TIPOS DE INCIDENTE
            var listTI = await daoTD.GetTypesAsync(INCIDENTSTYPES);
            listTI.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione tipo de incidente..." });
            viewModel.TipoIncidenteList = new SelectList(listTI, "Id", "descripcion");


            //LISTA AREAS
            var listA = await daoTD.GetTypesAsync(AREASTYPES);
            listA.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione área..." });
            viewModel.AreasList = new SelectList(listA, "Id", "descripcion");

            //LISTA LÍNEAS
            var listL = await daoTD.GetTypesAsync(LINESTYPES);
            listL.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione línea..." });
            viewModel.LineasList = new SelectList(listL, "Id", "descripcion");


            //USUARIOS ADMINISTRADORES
            var listUA = await daoUser.GetUsersByRole(ADMINROLE);
            listUA.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            viewModel.AdminUsersList = new SelectList(listUA, "Id", "NombresCommpletos");

            //USUARIOS OPERARIOS
            var listUO = await daoUser.GetUsersByRole(OPERATINGROLE);
            listUO.Insert(0, new UsersUI() { Id = "0", NombresCommpletos = "Seleccione usuario..." });
            viewModel.OperatingUsersList = new SelectList(listUO, "Id", "NombresCommpletos");

            //DISPOSICIÓN FINAL DEL PRODUCTO
            var listDF = await daoTD.GetTypesAsync(FINALDISPOSITION);
            listDF.Insert(0, new Database.tipos_data() { id = 0, descripcion = "Seleccione disposición..." });
            viewModel.DisposicionFList = new SelectList(listDF, "Id", "descripcion");

            //TOP FIVE FOR ZERO
            var listTF = await daoTD.GetTypesAsync(TOPFIVEFORZERO);
            viewModel.TopFiveForZeroList = listTF;

            return viewModel;
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

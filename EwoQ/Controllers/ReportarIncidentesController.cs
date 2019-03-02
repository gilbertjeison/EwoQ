﻿using System;
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

namespace EwoQ.Controllers
{
    [Authorize]
    public class ReportarIncidentesController : Controller
    {
        private EwoQEntities db = new EwoQEntities();
        DaoTiposData daoTD = new DaoTiposData();
        DaoUsuarios daoUser = new DaoUsuarios();
        DaoProductos daoPro = new DaoProductos();
        DaoEwo daoEwo = new DaoEwo();

        int AREASTYPES = 7;
        int LINESTYPES = 8;
        int INCIDENTSTYPES = 15;
        string ADMINROLE = "d908787a-642b-480f-ba5c-f46df6fc8713";
        string OPERATINGROLE = "ad3cb589-855b-4888-b234-9333eaca85ec";

        //private object kpiWiewModel;

        // GET: ReportarIncidentes
        public async Task<ActionResult> Index()
        {
            var ewo = db.ewo.Include(e => e.arbol_perdidas).Include(e => e.AspNetUsers).Include(e => e.AspNetUsers1).Include(e => e.AspNetUsers2).Include(e => e.AspNetUsers3).Include(e => e.AspNetUsers4).Include(e => e.AspNetUsers5).Include(e => e.AspNetUsers6).Include(e => e.AspNetUsers7).Include(e => e.productos).Include(e => e.tipos_data).Include(e => e.tipos_data1).Include(e => e.tipos_data2).Include(e => e.tipos_data3).Include(e => e.tipos_data4);
            
            return View(await ewo.ToListAsync());
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

            //var dict = new Dictionary<int, string>();

            //for (int i = 0; i < users.Count; i++)
            
            //{
            //    dict.Add(i, users[i].NombresCommpletos);
            //}           

            //var output = Newtonsoft.Json.JsonConvert.SerializeObject(dict);
            return Json(users);
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
            var viewModel = new ReporteIncidentesViewModel();

            viewModel.FchApertInvestigacion = DateTime.Now.ToString("dd/MM/yyyy");
            viewModel.FchEntregaInvestigacion = DateTime.Now.ToString("dd/MM/yyyy");


            
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

            ViewBag.Cons = "00" + await daoEwo.GetLastConsecutive();

            return View(viewModel);
        }

        // POST: ReportarIncidentes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        //public async Task<ActionResult> Create([Bind(Include = "id,consecutivo,codigo_estado,fecha_apertura_investigacion,hora_apertura_investigacion,hora_evento,fecha_entrega_investigacion,hora_entrega_investigacion,recurrente,codigo_area,codigo_linea,etapa,codigo_coordinador_turno,codigo_responsable_area,codigo_operario_responsable,codigo_lider_investigacion,codigo_producto,codigo_sap_producto,lote_producto,toneladas_producto,numero_cajas,numero_pallet,unidades,tamano_formato,codigo_unidad_medida_tamfor,costo_incidente,tiempo_linea_parada,descripcion_general_problema,tiempo_inspeccion,codigo_arbol_perdidas,numero_airsweb,tiempo_ingresado_airsweb,codigo_disposicion_final_prod,cantidad_toneladas,gemba,gembutsu,genjitsu,five_g_image,descripcion_problema,que,donde,cuando,quien,cual,como,descripcion_fenomeno,images_path,comentarios_resoluciones,pa_codigo_coordinador_prod,pa_codigo_gerente_prod,pa_codigo_jefe_calidad,pa_codigo_gerente_calidad")] ewo ewo)
        public int Create(ReporteIncidentesViewModel ewo)
        {

            var ewo1 = ewo;

            
            return 1;
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
            ViewBag.codigo_arbol_perdidas = new SelectList(db.arbol_perdidas, "id", "nvl_1", ewo.codigo_arbol_perdidas);
            ViewBag.codigo_coordinador_turno = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_coordinador_turno);
            ViewBag.codigo_lider_investigacion = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_lider_investigacion);
            ViewBag.codigo_operario_responsable = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_operario_responsable);
            ViewBag.pa_codigo_coordinador_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_coordinador_prod);
            ViewBag.pa_codigo_gerente_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_prod);
            ViewBag.pa_codigo_gerente_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_calidad);
            ViewBag.pa_codigo_jefe_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_jefe_calidad);
            ViewBag.codigo_responsable_area = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_responsable_area);
            ViewBag.codigo_producto = new SelectList(db.productos, "id", "nombre", ewo.codigo_producto);
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
            ViewBag.codigo_arbol_perdidas = new SelectList(db.arbol_perdidas, "id", "nvl_1", ewo.codigo_arbol_perdidas);
            ViewBag.codigo_coordinador_turno = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_coordinador_turno);
            ViewBag.codigo_lider_investigacion = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_lider_investigacion);
            ViewBag.codigo_operario_responsable = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_operario_responsable);
            ViewBag.pa_codigo_coordinador_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_coordinador_prod);
            ViewBag.pa_codigo_gerente_prod = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_prod);
            ViewBag.pa_codigo_gerente_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_gerente_calidad);
            ViewBag.pa_codigo_jefe_calidad = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.pa_codigo_jefe_calidad);
            ViewBag.codigo_responsable_area = new SelectList(db.AspNetUsers, "Id", "Nombres", ewo.codigo_responsable_area);
            ViewBag.codigo_producto = new SelectList(db.productos, "id", "nombre", ewo.codigo_producto);
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

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using EwoQ.Dao;
using EwoQ.Database;
using System.Linq.Dynamic;


namespace EwoQ.Controllers
{
    [Authorize]
    public class UsersController : Controller
    {
        private EwoQEntities db = new EwoQEntities();

        // GET: Users
        public ActionResult Index()
        {
            return View("Index");
        }

        public async Task<ActionResult> LoadDataAsync()
        {
            try
            {
                var draw = HttpContext.Request.Form["draw"];
                // Skiping number of Rows count
                var start = Request.Form["start"];
                // Paging Length 10,20
                var length = Request.Form["length"];
                // Sort Column Name
                var sortColumn = Request.Form["columns[" + Request.Form["order[0][column]"] + "][name]"];
                // Sort Column Direction ( asc ,desc)
                var sortColumnDirection = Request.Form["order[0][dir]"];
                // Search Value from (Search box)
                var searchValue = Request.Form["search[value]"];

                //Paging Size (10,20,50,100)
                int pageSize = length.ToString() != null ? Convert.ToInt32(length) : 0;
                int skip = start.ToString() != null ? Convert.ToInt32(start) : 0;
                int recordsTotal = 0;

                // Getting all user data
                var userData = DaoUsuarios.DaoInstance.GetUserWOApprv();

                var data1 = await userData;

                //Sorting
                if (!(string.IsNullOrEmpty(sortColumn) && string.IsNullOrEmpty(sortColumnDirection)))
                {
                    data1 = data1.OrderBy(sortColumn + " " + sortColumnDirection).ToList();
                }

                //Search
                if (!string.IsNullOrEmpty(searchValue))
                {
                    data1 = data1.Where(m => m.Nombres.Contains(searchValue) || m.Apellidos.Contains(searchValue)).ToList();
                }

                //total number of rows count 
                recordsTotal = data1.Count();
                //Paging 
                var data = data1.Skip(skip).Take(pageSize).ToList();

                return Json(new {draw = draw, recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data });
            }
            catch (Exception)
            {
                throw;
            }
        }

        [HttpPost]
        public async Task<ActionResult> Approve(string id)
        {            
            try
            {
                if (string.IsNullOrEmpty(id))
                {
                    return RedirectToAction("Users", "Index");
                }

                int result = await DaoUsuarios.DaoInstance.ApproveUser(id);
               
                if (result > 0)
                {
                    //ENVIAR CORREO ELECTRÓNICO DE NOTIFICACIÓN
                    var user = DaoUsuarios.DaoInstance.GetUser(id);
                    await Utils.SomeHelpers.SendGridAsync(2, user.Email, user.Nombres + " " + user.Apellidos);
                    return Json(data: true);
                }
                else
                {
                    return Json(data: false);
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        // GET: Users/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // GET: Users/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Users/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nombres,Apellidos,IdRol,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName")] AspNetUsers aspNetUsers)
        {
            if (ModelState.IsValid)
            {
                db.AspNetUsers.Add(aspNetUsers);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(aspNetUsers);
        }

        // GET: Users/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // POST: Users/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nombres,Apellidos,IdRol,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName")] AspNetUsers aspNetUsers)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aspNetUsers).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(aspNetUsers);
        }

        // GET: Users/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // POST: Users/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            db.AspNetUsers.Remove(aspNetUsers);
            db.SaveChanges();
            return RedirectToAction("Index");
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

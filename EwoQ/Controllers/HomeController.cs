using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using EwoQ.Models;
using EwoQ.Dao;
using System.Threading.Tasks;

namespace EwoQ.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        DaoEwo daoE = new DaoEwo();

        public ActionResult Index()
        {
                       
            
            return View();
        }

        public async Task<ActionResult> IndexAdmin()
        {
            //using (ApplicationDbContext adc = new ApplicationDbContext())
            //{
            //    var UserMan = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(adc));


            //    var RoleMan = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(adc));

            //}
            IndexAdminViewModel ivm = new IndexAdminViewModel();
            ivm = await daoE.GetIndexData();

            return View(ivm);
        }

        [HttpPost]
        public async Task<JsonResult> GetDonutData()
        {
            List<DonutViewModel> donut = null;

            await Task.Run(() => 
            {
                donut = daoE.GetEwoPercents();
            });
                 
            return Json(donut);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
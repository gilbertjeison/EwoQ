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
using System.Web.SessionState;

namespace EwoQ.Controllers
{
    [Authorize]
    [SessionState(SessionStateBehavior.Default)]
    public class HomeController : Controller
    {        
        IndexAdminViewModel ivm = new IndexAdminViewModel();

        public ActionResult Index()
        {                       
            
            return View();
        }

        [HttpPost]
        public void OnPost(int counter)
        {
            ivm.Counter = counter;
            Session["SessionCount"] = counter;
        }

        public async Task<ActionResult> IndexAdmin()
        {
            //using (ApplicationDbContext adc = new ApplicationDbContext())
            //{
            //    var UserMan = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(adc));


            //    var RoleMan = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(adc));

            //}

           

           
            
            ivm = await DaoEwo.DaoInstance.GetIndexData();
            if (Session["SessionCount"] != null)
            {
                string tempCount = Session["SessionCount"].ToString();
                ivm.Counter = int.Parse(tempCount);
            }
            else
            {
                ivm.Counter = 0;
            }

            return View(ivm);
        }

        [HttpPost]
        public async Task<JsonResult> GetDonutData()
        {
            List<DonutViewModel> donut = null;

            await Task.Run(() => 
            {
                donut = DaoEwo.DaoInstance.GetEwoPercents();
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
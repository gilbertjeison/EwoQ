using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using EwoQ.Models;

namespace EwoQ.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            //using (ApplicationDbContext adc = new ApplicationDbContext())
            //{
            //    var UserMan = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(adc));

               
            //    var RoleMan = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(adc));
                                
            //}
            
            
            return View();
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
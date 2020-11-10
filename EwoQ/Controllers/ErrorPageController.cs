﻿using EwoQ.Dao;
using EwoQ.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace EwoQ.Controllers
{
    public class ErrorPageController : Controller
    {
        // GET: ErrorPage
        public ActionResult Error(int statusCode, Exception exception)
        {
            Response.StatusCode = statusCode;
            ViewBag.StatusCode = statusCode + " Error ";
            ViewBag.Detail = exception.ToString();

            //REPORTAR ERROR EN LA BASE DE DATOS

            Task<int> task = Task.Run(async () => await DaoExcepcion.DaoInstance.AddExceptionAsync(
                new Database.excepciones()
                {
                    codigo_error = statusCode,
                    codigo_usuario = User.Identity.Name == null ? "No definido" : User.Identity.Name,
                    descripcion = exception.ToString(),
                    fecha = SomeHelpers.GetCurrentTime()
                }));

            return View();
        }
    }
}
using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Utils
{
    public class SomeHelpers
    {
        public static string ROL_SADMIN = "612d016e-8e29-4b11-9927-2f4a52495257";
        public static string ROL_ADMIN = "d908787a-642b-480f-ba5c-f46df6fc8713";
        public static string ROL_OPER = "ad3cb589-855b-4888-b234-9333eaca85ec";

        static string nombreE;

        static string noti_reg = "<div style=\"background: #fff; min-height: 50px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2); position: relative; margin-bottom: 30px; -webkit-border-radius: 2px; -moz-border-radius: 2px; -ms-border-radius: 2px; border-radius: 2px;\"> "
            + " <div  style=\"color:#2196F3; padding: 20px; position: relative;  border-bottom: 1px solid rgba(204, 204, 204, 0.35); background-color: #03A9F4 !important;\"> "
            + " <h2 style=\"color:white; margin: 0;font-size: 18px;font-weight: normal;\"> "
            + " " + nombreE + " <small style=\"display: block; font-size: 12px; margin-top: 5px; color: white; line-height: 15px;\">Registro satisfactorio al sistema de reportes de incidentes...</small> "
            + " </h2> "
            + " </div> "
            + " <div style=\"font-size: 14px; color: #555; padding: 20px;\"> "
            + "Su registro está en estado de <strong>pendiente por aprobación</strong>, por este medio se le informa cuando haya sido aprobado por un administrador del sistema. "
            + " </div> <small style=\"font-size:8px;\">Desarrollado por (gilbertjeison@gmail.com)</small>";

        static string noti_apr = "<div style=\"background: #fff; min-height: 50px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2); position: relative; margin-bottom: 30px; -webkit-border-radius: 2px; -moz-border-radius: 2px; -ms-border-radius: 2px; border-radius: 2px;\"> "
            + " <div  style=\"color:#2196F3; padding: 20px; position: relative;  border-bottom: 1px solid rgba(204, 204, 204, 0.35); background-color: #03A9F4 !important;\"> "
            + " <h2 style=\"color:white; margin: 0;font-size: 18px;font-weight: normal;\"> "
            + " " + nombreE + " <small style=\"display: block; font-size: 12px; margin-top: 5px; color: white; line-height: 15px;\">Aprobación satisfactoria en el sistema de reportes de incidentes...</small> "
            + " </h2> "
            + " </div> "
            + " <div style=\"font-size: 14px; color: #555; padding: 20px;\"> "
            + "Su usuario está en estado de <strong>Aprobado</strong>, ya puede iniciar su uso en el sistema. "
            + " </div> <small style=\"font-size:8px;\">Desarrollado por (gilbertjeison@gmail.com)</small>";
        public static async Task SendGridAsync(int type, string mail, string nombre)
        {
            //type 1 = registro, 2 = aprobación

            var apiKey = ConfigurationManager.AppSettings["SendGridApi"];
            var client = new SendGridClient(apiKey);
            var from = new EmailAddress("gilbertjeison@gmail.com", "Jeison Desarrollador");
            var subject = "Notificación de registro al sistema";
            var to = new EmailAddress(mail, nombre);
            var plainTextContent = "Sistema de reportes de incidentes";

            string htmlContent="";

            nombreE = nombre;

            if (type == 1)
            {
                htmlContent = noti_reg;
            }
            if (type == 2)
            {
                htmlContent = noti_apr;
            }
            
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = await client.SendEmailAsync(msg);

            System.Diagnostics.Debug.WriteLine("Respuesta de correo electrónico " + response.StatusCode);                        
        }
    }
}
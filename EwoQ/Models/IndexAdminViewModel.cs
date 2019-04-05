using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Models
{
    public class IndexAdminViewModel
    {
        public int IncidentesReportados { get; set; }
        public int IncidentespProceso { get; set; }
        public int IncidentesCerrados { get; set; }
        public int UsuariosRegistrados { get; set; }


    }
}
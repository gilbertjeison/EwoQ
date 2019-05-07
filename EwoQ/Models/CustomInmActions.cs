using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Models
{
    public class CustomInmActions
    {

        public long id { get; set; }
        public Nullable<long> codigo_ewo { get; set; }
        public string accion { get; set; }
        public string codigo_responsable { get; set; }
        public string fecha_compromiso { get; set; }
        public Nullable<int> evidencia_efectividad { get; set; }

    }
}
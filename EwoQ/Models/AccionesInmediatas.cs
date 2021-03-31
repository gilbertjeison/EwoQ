using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Models
{
    public class AccionesInmediatas
    {
        public long codigo_ewo { get; set; }
        public long Id { get; set; }
        public string accion { get; set; }
        public string Responsable { get; set; }
        public string codigo_responsable { get; set; }
        public DateTime? fecha_compromiso { get; set; }
        public string FechaCompromisoS { get; set; }
        public int? evidencia_efectividad { get; set; }
    }
}
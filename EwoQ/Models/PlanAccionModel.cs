using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Models
{
    public class PlanAccionModel
    {
        public long Id { get; set; }
        public string Tipo { get; set; }
        public string Contramedida { get; set; }
        public bool RequiereCapex { get; set; }
        public bool Pokayoke { get; set; }
        public string Responsable { get; set; }
        public string Area { get; set; }
        public DateTime FechaCompromiso { get; set; }
        public decimal Before { get; set; }
        public decimal After { get; set; }
    }
}
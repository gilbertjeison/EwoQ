using EwoQ.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Models
{
    public class ZeroViewModel
    {
        public long Id { get; set; }
        public long IdTipoM { get; set; }
        public string DescTipoM { get; set; }
        public string Pregunta { get; set; }
        public List<ZeroResponses> Responses { get; set; }
    }

    public class ZeroResponses
    {
        public long Id { get; set; }
        public long IdPregunta { get; set; }
        public string Respuesta { get; set; }
        public int Puntaje { get; set; }
    }
}
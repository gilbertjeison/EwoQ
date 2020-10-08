using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Models
{
    public class RequestResponse
    {
        public int Codigo { get; set; }
        public string Message { get; set; }
        public object Resultado { get; set; }
    }
}
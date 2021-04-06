using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Utils
{
    public static class Constantes
    {
        //TIPOS DATA        
        public readonly static int GENJITSU = 21;
        public readonly static int GENRI = 22;
        public readonly static int GENSOKU = 23;
        public readonly static long CONTAMINACION_CRUZADA = 28;
        public readonly static long ERROR_ARTE = 29;
        public readonly static long CONTAMINACION_PRODUCTO = 30;
        public readonly static long ERROR_ADICION_INGREDIENTES = 31;
        public readonly static long LIBERACION_INCORRECTA = 32;
        public readonly static long OTRO = 33;
        public static readonly int MAQUINA = 24;
        public static readonly int METODO = 25;
        public static readonly int MATERIALES = 26;
        public static readonly int MAN = 27;

        //TIPOS
        public readonly static int FIVEG = 4;
        public static readonly int AREASTYPES = 7;
        public static readonly int LINESTYPES = 8;
        public static readonly int INCIDENTSTYPES = 15;
        public static readonly int TOPFIVEFORZAEROTYPES = 12;
        public static readonly int FINALDISPOSITION = 9;
        public static readonly int UNIDADMEDIDA = 13;
        public static readonly int TOPFIVEFORZERO = 12;        

        //COMUNES
        public static readonly string SUPERROLE = "612d016e-8e29-4b11-9927-2f4a52495257";
        public static readonly string ADMINROLE = "d908787a-642b-480f-ba5c-f46df6fc8713";
        public static readonly string OPERATINGROLE = "ad3cb589-855b-4888-b234-9333eaca85ec";
        public static readonly string ewo_images = "~/Content/images/ewo_images/";
        public static readonly string fn = "~/Content/formats/base.xlsx";
        public static readonly string fnN = "~/Content/formats/Formato EWO.xlsx";
        public static readonly string cfn = "~/Content/formats/base completo.xlsx";
        public static readonly string cfnN = "~/Content/formats/Formato EWO completo.xlsx";
    }
}
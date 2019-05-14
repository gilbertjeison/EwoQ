using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EwoQ.Models
{
    public class ReporteIncidentesViewModel
    {
        #region CAMPOS DE LA BD
        public string Consecutivo { get; set; }
        public long Id { get; set; }
        public string Autor { get; set; }
        public string AutorDesc { get; set; }
        public DateTime Fecha { get; set; }
        public long Estado { get; set; }
        public string EstadoDesc { get; set; }
        public string FormattedDate => Fecha.ToShortDateString();
        #endregion

        #region NOTIFICACIÓN EVIDENCIA


        [DisplayName("Fecha de apertura de la investigación")]
        public string FchApertInvestigacion { get; set; }

        [DisplayName("Hora de apertura de la investigación")]
        public string HrApertInvestigacion { get; set; }
        public TimeSpan HrApertInvestigacionTS { get; set; }

        [DisplayName("Hora del evento")]
        public string HrEvento { get; set; }
        public TimeSpan HrEventoTS { get; set; }

        [DisplayName("Fecha de entrega de la investigación a QA")]
        public string FchEntregaInvestigacion { get; set; }

        [DisplayName("Hora de entrega de la investigación a QA")]
        public string HrEntregaInvestigacion { get; set; }
        public TimeSpan HrEntregaInvestigacionTS { get; set; }

        [Display(Name = "Tipo de incidente o no inconformidad")]
        public long TipoIncidente { get; set; }
        public string TipoIncidenteDesc { get; set; }
        public SelectList TipoIncidenteList { get; set; }


        [DisplayName("Recurrente")]
        public string Recurrente { get; set; }
        public bool RecurrenteB { get; set; }


        [Display(Name = "Area donde ocurrió el evento")]
        public long IdArea { get; set; }
        public string AreaDesc { get; set; }
        public SelectList AreasList { get; set; }


        [Display(Name = "Línea")]
        public long IdLinea { get; set; }
        public string LineaDesc { get; set; }
        public SelectList LineasList { get; set; }

        [Display(Name = "Etapa del proceso")]
        public string EtapaProceso { get; set; }

        [Display(Name = "Coordinador/Supervisor en turno")]
        public string IdCoorSup { get; set; }


        [Display(Name = "Responsable del área")]
        public string IdRespArea { get; set; }

        [Display(Name = "Operario responsable")]
        public string IdOpeRes { get; set; }

        [Display(Name = "Líder de Investigación/Q EWO Responsable")]
        public string IdLidInv { get; set; }

        public SelectList AdminUsersList { get; set; }
        public SelectList OperatingUsersList { get; set; }

        [Display(Name = "Equipo de trabajo")]
        public string EquipoTrabajo { get; set; }

        #endregion

        #region INFORMACIÓN DEL PRODUCTO 

        [Display(Name = "Nombre del Producto / CUC")]
        public string NombreProducto { get; set; }

        [Display(Name = "Código de SAP")]
        public string CodigoSAP { get; set; }

        [Display(Name = "Lote")]
        public string Lote { get; set; }

        [Display(Name = "Toneladas")]
        public int Toneladas { get; set; }

        [Display(Name = "N° Cajas")]
        public int NumCajas { get; set; }

        [Display(Name = "N° Pallet")]
        public string NumPallet { get; set; }

        [Display(Name = "Unidades")]
        public int Unidades { get; set; }

        [Display(Name = "Tamaño / Formato")]
        public string TamanoFormato { get; set; }

        [Display(Name = "Costo Incidente")]
        public double CostoIncidente { get; set; }

        [Display(Name = "Tiempo Parada Línea (min)")]
        public int TiempoLineaParada { get; set; }

        [Display(Name = "Descripción general del problema")]
        public string DescripcionProblema { get; set; }

        [Display(Name = "Acciones Inmediatas una vez detectada la desviación")]
        public ArrayList AccionesList { get; set; }

        public string Cmd { get; set; }

        [Display(Name = "Árbol de pérdidas / Loss Tree")]
        public string ArbPerd1 { get; set; }
        public string ArbPerd2 { get; set; }
        public string ArbPerd3 { get; set; }
        public string ArbPerd4 { get; set; }
        public string ArbPerdO { get; set; }

        [Display(Name = "N° Airsweb")]
        public int NumAirsweb { get; set; }

        [Display(Name = "Tiempo Airsweb (min)")]
        public int TiempoAirsWeb { get; set; }

        [Display(Name = "Tiempo inspección (min)")]
        public int TiempoInpeccion { get; set; }


        [Display(Name = "Disposición final del producto")]
        public long IdDisposicionF { get; set; }
        public string DisposicionFDesc { get; set; }
        public SelectList DisposicionFList { get; set; }

        [Display(Name = "Toneladas / Cantidad")]
        public int DFToneladas { get; set; }
        #endregion

        #region INVESTIGACIÓN EN PISO
        public string GembaDesc { get; set; }
        public string GembutsuDesc { get; set; }
        public string GenjitsuDesc { get; set; }
        public string GenriDesc { get; set; }
        public string GensokuDesc { get; set; }

        public string GembaOk { get; set; }
        public string GembutsuOk { get; set; }
        public string GenjitsuOk { get; set; }
        #endregion
    }

}
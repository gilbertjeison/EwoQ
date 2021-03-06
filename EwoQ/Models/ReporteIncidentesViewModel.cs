﻿using EwoQ.Database;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
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

        
        public TimeSpan HrApertInvestigacionTS { get; set; }

        [DisplayName("Hora del evento")]
        public string HrEvento { get; set; }
        public TimeSpan HrEventoTS { get; set; }

        [DisplayName("Fecha del incidente")]
        public string FchEntregaInvestigacion { get; set; }

        [DisplayName("Hora del incidente")]
        public string HrEntregaInvestigacion { get; set; }
        public TimeSpan HrEntregaInvestigacionTS { get; set; }

        [Display(Name = "Tipo de incidente o no inconformidad")]
        public long TipoIncidente { get; set; }
        public string TipoIncidenteDesc { get; set; }
        public SelectList TipoIncidenteList { get; set; }


        [DisplayName("Recurrente")]
        public string Recurrente { get; set; }
        public bool RecurrenteB { get; set; }


        [Display(Name = "Planta")]
        public long IdPlanta { get; set; }
        public string PlantaDesc { get; set; }
        public SelectList PlantasList { get; set; }


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

        [Display(Name = "Supervisor de producción en turno")]
        public string IdCoorSup { get; set; }
        public string CoorSupDesc { get; set; }


        [Display(Name = "Responsable del área")]
        public string IdRespArea { get; set; }
        public string RespAreaDesc { get; set; }

        [Display(Name = "Operario responsable")]
        public string IdOpeRes { get; set; }
        public string OpeResDesc { get; set; }

        [Display(Name = "Líder de Investigación/Q EWO Responsable")]
        public string IdLidInv { get; set; }
        public string LidInvDesc { get; set; }

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

        [Display(Name = "Lote (unidad de venta)")]
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

        [Display(Name = "Costo Incidente Pesos")]
        public double CostoIncidente { get; set; }

        [Display(Name = "Costo Incidente Euros")]
        public double CostoIncidenteEuros { get; set; }

        [Display(Name = "Tiempo Parada Línea (min)")]
        public int TiempoLineaParada { get; set; }

        [Display(Name = "Descripción general del problema")]
        public string DescripcionProblema { get; set; }

        public string DescripcionProblemax2 { get; set; }

        [Display(Name = "Acciones Inmediatas una vez detectada la desviación")]
        public ArrayList AccionesList { get; set; }

        [Display(Name = "Disposición final del producto")]
        public ArrayList DisposicionesList { get; set; }

        public string Cmd { get; set; }

        [Display(Name = "Árbol de pérdidas / Loss Tree")]
        public string ArbPerd1 { get; set; }
        public string ArbPerd2 { get; set; }
        public string ArbPerd3 { get; set; }
        public string ArbPerd4 { get; set; }
        public string ArbPerdO { get; set; }

        [Display(Name = "N° Airsweb")]
        public int NumAirsweb { get; set; }

        [Display(Name = "Tiempo Airsweb (horas)")]
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

        public bool Gemba { get; set; }
        public bool Gembutsu { get; set; }
        public bool Genjitsu { get; set; }

        public string PathImageGs { get; set; }
        public string DescImgGs { get; set; }
        public HttpPostedFileBase ImageGs { get; set; }

        public string QueDesc { get; set; }
        public string DondeDesc { get; set; }
        public string CuandoDesc { get; set; }
        public string QuienDesc { get; set; }
        public string CualDesc { get; set; }
        public string ComoDesc { get; set; }
        public string FenomenoDesc { get; set; }
        public string FenomenoDescT { get; set; }

        public string PathImageFen { get; set; }
        public string DescImgFen { get; set; }
        public HttpPostedFileBase ImageFen { get; set; }

        public string ManoObra4M { get; set; } = "% 0";
        public string Material4M { get; set; } = "% 0";
        public string Maquina4M { get; set; } = "% 0";
        public string Metodo4M { get; set; } = "% 0";

        public string ManoObra4MTotal { get; set; } = "% 0";
        public string Material4MTotal { get; set; } = "% 0";
        public string Maquina4MTotal { get; set; } = "% 0";
        public string Metodo4MTotal { get; set; } = "% 0";

        public decimal ManoObra { get; set; } 
        public decimal Material { get; set; }
        public decimal Maquina { get; set; }
        public decimal Metodo { get; set; }


        public string ManoObra4MDesc { get; set; }
        public string Material4MDesc { get; set; }
        public string Maquina4MDesc { get; set; } 
        public string Metodo4MDesc { get; set; }

        public string MDesc { get; set; }

        public string IdTopFFZ { get; set; }
        public long TopFiveForZero { get; set; }
        public string TopFFZDesc { get; set; }
        public string GrpTFFZ { get; set; }
        public List<tipos_data> TopFiveForZeroList { get; set; }
        #endregion

        #region VERIFICACIÓN Y FINALIZACIÓN
        [Display(Name = "Comentarios / Resoluciones")]
        public string ComentariosResoluciones { get; set; }

        

        [Display(Name = "Coordinador de Producción:")]
        public string IdCoorProd { get; set; }

        [Display(Name = "Gerente de Producción: :")]
        public string IdGerProd { get; set; }

        [Display(Name = "Jefe de Calidad:")]
        public string IdJefCal { get; set; }

        [Display(Name = "Gerente de Calidad: ")]
        public string IdGerCal { get; set; }
        public string UrlFirmaGerCal { get; set; }

        [DisplayName("Fecha de cierre de investigación")]
        public string FchCierre { get; set; }
        #endregion

        #region CAMPOS ADJUNTOS
        public string BeforePct { get; set; }
        public string AfterPct { get; set; }

        public string ListDisp { get; set; }
        public string ListAccInm { get; set; }
        public string ListGenj { get; set; }
        public string ListGenr { get; set; }
        public string ListGens { get; set; }
        public string ListPorq { get; set; }
        public string ListBefo { get; set; }
        public string ListAfte { get; set; }
        public string ListPlan { get; set; }
        public string List4M { get; set; }
        public long MaxMId { get; set; }

        #endregion
    }
}
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EwoQ.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class ewo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ewo()
        {
            this.acciones_inmediatas = new HashSet<acciones_inmediatas>();
            this.equipo_trabajo = new HashSet<equipo_trabajo>();
            this.fiveg_resultados = new HashSet<fiveg_resultados>();
            this.porque_porque = new HashSet<porque_porque>();
            this.respuestas4m = new HashSet<respuestas4m>();
            this.revisiones = new HashSet<revisiones>();
            this.plan_accion = new HashSet<plan_accion>();
        }
    
        public long id { get; set; }
        public Nullable<long> consecutivo { get; set; }
        public Nullable<long> codigo_estado { get; set; }
        public Nullable<System.DateTime> fecha_apertura_investigacion { get; set; }
        public Nullable<System.TimeSpan> hora_apertura_investigacion { get; set; }
        public Nullable<System.TimeSpan> hora_evento { get; set; }
        public Nullable<System.DateTime> fecha_entrega_investigacion { get; set; }
        public Nullable<System.TimeSpan> hora_entrega_investigacion { get; set; }
        public Nullable<long> tipo_incidente { get; set; }
        public bool recurrente { get; set; }
        public Nullable<long> codigo_linea { get; set; }
        public string etapa { get; set; }
        public string codigo_coordinador_turno { get; set; }
        public string codigo_responsable_area { get; set; }
        public string codigo_operario_responsable { get; set; }
        public string codigo_lider_investigacion { get; set; }
        public string producto { get; set; }
        public string codigo_sap_producto { get; set; }
        public string lote_producto { get; set; }
        public Nullable<int> toneladas_producto { get; set; }
        public Nullable<int> numero_cajas { get; set; }
        public string numero_pallet { get; set; }
        public Nullable<int> unidades { get; set; }
        public string tamano_formato { get; set; }
        public Nullable<long> codigo_unidad_medida_tamfor { get; set; }
        public Nullable<decimal> costo_incidente { get; set; }
        public Nullable<int> tiempo_linea_parada { get; set; }
        public string descripcion_general_problema { get; set; }
        public Nullable<int> tiempo_inspeccion { get; set; }
        public string ap_nivel_1 { get; set; }
        public string ap_nivel_2 { get; set; }
        public string ap_nivel_3 { get; set; }
        public string ap_nivel_4 { get; set; }
        public string ap_nivel_otro { get; set; }
        public Nullable<int> numero_airsweb { get; set; }
        public Nullable<int> tiempo_ingresado_airsweb { get; set; }
        public Nullable<long> codigo_disposicion_final_prod { get; set; }
        public Nullable<int> cantidad_toneladas { get; set; }
        public Nullable<bool> gemba { get; set; }
        public Nullable<bool> gembutsu { get; set; }
        public Nullable<bool> genjitsu { get; set; }
        public string five_g_image { get; set; }
        public string que { get; set; }
        public string donde { get; set; }
        public string cuando { get; set; }
        public string quien { get; set; }
        public string cual { get; set; }
        public string como { get; set; }
        public string descripcion_fenomeno { get; set; }
        public string images_path { get; set; }
        public Nullable<decimal> maquina4m { get; set; }
        public Nullable<decimal> metodo4m { get; set; }
        public Nullable<decimal> material4m { get; set; }
        public Nullable<decimal> manoobra4m { get; set; }
        public string maquina4m_desc { get; set; }
        public string metodo4m_desc { get; set; }
        public string material4m_desc { get; set; }
        public string manoobra4m_desc { get; set; }
        public string comentarios_resoluciones { get; set; }
        public string pa_codigo_coordinador_prod { get; set; }
        public string pa_codigo_gerente_prod { get; set; }
        public string pa_codigo_jefe_calidad { get; set; }
        public string pa_codigo_gerente_calidad { get; set; }
        public string autor { get; set; }
        public Nullable<decimal> before { get; set; }
        public Nullable<decimal> after { get; set; }
        public Nullable<System.DateTime> fecha_after { get; set; }
        public Nullable<long> codigo_top_five_fzero { get; set; }
        public Nullable<System.DateTime> fecha_cierre { get; set; }
        public string usuario_procesador { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<acciones_inmediatas> acciones_inmediatas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<equipo_trabajo> equipo_trabajo { get; set; }
        public virtual lineas lineas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<fiveg_resultados> fiveg_resultados { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<porque_porque> porque_porque { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<respuestas4m> respuestas4m { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<revisiones> revisiones { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<plan_accion> plan_accion { get; set; }
    }
}

﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EwoQ.Database
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EwoQEntities : DbContext
    {
        public EwoQEntities()
            : base("name=EwoQEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<acciones_inmediatas> acciones_inmediatas { get; set; }
        public virtual DbSet<arbol_perdidas> arbol_perdidas { get; set; }
        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<equipo_trabajo> equipo_trabajo { get; set; }
        public virtual DbSet<fiveg_resultados> fiveg_resultados { get; set; }
        public virtual DbSet<plan_accion> plan_accion { get; set; }
        public virtual DbSet<porque_porque> porque_porque { get; set; }
        public virtual DbSet<preguntas_4m> preguntas_4m { get; set; }
        public virtual DbSet<productos> productos { get; set; }
        public virtual DbSet<respuestas4m> respuestas4m { get; set; }
        public virtual DbSet<revisiones> revisiones { get; set; }
        public virtual DbSet<tipos> tipos { get; set; }
        public virtual DbSet<tipos_data> tipos_data { get; set; }
        public virtual DbSet<zero_questions> zero_questions { get; set; }
        public virtual DbSet<zero_responses> zero_responses { get; set; }
        public virtual DbSet<ewo> ewo { get; set; }
    }
}
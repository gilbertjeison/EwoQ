//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class equipo_trabajo
    {
        public long id { get; set; }
        public Nullable<long> codigo_ewo { get; set; }
        public string codigo_usuario { get; set; }
    
        public virtual AspNetUsers AspNetUsers { get; set; }
        public virtual ewo ewo { get; set; }
    }
}

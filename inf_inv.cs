//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IntelimundoExamenes
{
    using System;
    using System.Collections.Generic;
    
    public partial class inf_inv
    {
        public System.Guid inventario_ID { get; set; }
        public string cod_inv { get; set; }
        public int est_inv_ID { get; set; }
        public int grado_escolar_ID { get; set; }
        public string categoria { get; set; }
        public string inv_desc { get; set; }
        public string caracteristica { get; set; }
        public Nullable<int> periodoID { get; set; }
        public Nullable<decimal> costo { get; set; }
        public Nullable<System.DateTime> registro { get; set; }
        public System.Guid centro_ID { get; set; }
        public System.Guid empresa_ID { get; set; }
    
        public virtual fact_est_inv fact_est_inv { get; set; }
        public virtual fact_grado_escolar fact_grado_escolar { get; set; }
        public virtual inf_emp inf_emp { get; set; }
    }
}

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
    
    public partial class fact_estcivil
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public fact_estcivil()
        {
            this.inf_usr_personales = new HashSet<inf_usr_personales>();
        }
    
        public int estcivil_ID { get; set; }
        public string cod_estciv { get; set; }
        public string estcivil_desc { get; set; }
        public Nullable<System.DateTime> registro { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<inf_usr_personales> inf_usr_personales { get; set; }
    }
}

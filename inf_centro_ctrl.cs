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
    
    public partial class inf_centro_ctrl
    {
        public System.Guid corporativo_ctrl_ID { get; set; }
        public System.Guid centro_ID { get; set; }
        public System.Guid usuario_ID { get; set; }
    
        public virtual inf_centro inf_centro { get; set; }
        public virtual inf_usuario inf_usuario { get; set; }
    }
}

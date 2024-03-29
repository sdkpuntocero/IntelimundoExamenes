﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class db_imEntities : DbContext
    {
        public db_imEntities()
            : base("name=db_imEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<catMateria> catMateria { get; set; }
        public virtual DbSet<catMateriaTema> catMateriaTema { get; set; }
        public virtual DbSet<catMateriaTemaPregunta> catMateriaTemaPregunta { get; set; }
        public virtual DbSet<catMateriaTemaPreguntaRespuesta> catMateriaTemaPreguntaRespuesta { get; set; }
        public virtual DbSet<catMateriaTemaPreguntaRespuestaBitacora> catMateriaTemaPreguntaRespuestaBitacora { get; set; }
        public virtual DbSet<catMateriaTemaSintesis> catMateriaTemaSintesis { get; set; }
        public virtual DbSet<fact_alergia> fact_alergia { get; set; }
        public virtual DbSet<fact_area> fact_area { get; set; }
        public virtual DbSet<fact_banco> fact_banco { get; set; }
        public virtual DbSet<fact_centro_tipo> fact_centro_tipo { get; set; }
        public virtual DbSet<fact_clte_cont_tipo> fact_clte_cont_tipo { get; set; }
        public virtual DbSet<fact_est_clte> fact_est_clte { get; set; }
        public virtual DbSet<fact_est_cnt> fact_est_cnt { get; set; }
        public virtual DbSet<fact_est_comp> fact_est_comp { get; set; }
        public virtual DbSet<fact_est_inv> fact_est_inv { get; set; }
        public virtual DbSet<fact_est_prov> fact_est_prov { get; set; }
        public virtual DbSet<fact_est_usr> fact_est_usr { get; set; }
        public virtual DbSet<fact_est_vnta> fact_est_vnta { get; set; }
        public virtual DbSet<fact_estcivil> fact_estcivil { get; set; }
        public virtual DbSet<fact_genero> fact_genero { get; set; }
        public virtual DbSet<fact_grado_escolar> fact_grado_escolar { get; set; }
        public virtual DbSet<fact_licencia> fact_licencia { get; set; }
        public virtual DbSet<fact_nivel_escolar> fact_nivel_escolar { get; set; }
        public virtual DbSet<fact_perfil> fact_perfil { get; set; }
        public virtual DbSet<fact_periodo> fact_periodo { get; set; }
        public virtual DbSet<fact_rfc_tipo> fact_rfc_tipo { get; set; }
        public virtual DbSet<fact_tipo_escolar> fact_tipo_escolar { get; set; }
        public virtual DbSet<inf_centro> inf_centro { get; set; }
        public virtual DbSet<inf_centro_ctrl> inf_centro_ctrl { get; set; }
        public virtual DbSet<inf_clte> inf_clte { get; set; }
        public virtual DbSet<inf_clte_contacto> inf_clte_contacto { get; set; }
        public virtual DbSet<inf_comp> inf_comp { get; set; }
        public virtual DbSet<inf_email_env> inf_email_env { get; set; }
        public virtual DbSet<inf_emp> inf_emp { get; set; }
        public virtual DbSet<inf_inv> inf_inv { get; set; }
        public virtual DbSet<inf_prov_contacto> inf_prov_contacto { get; set; }
        public virtual DbSet<inf_proveedor> inf_proveedor { get; set; }
        public virtual DbSet<inf_usr_bancario> inf_usr_bancario { get; set; }
        public virtual DbSet<inf_usr_contacto> inf_usr_contacto { get; set; }
        public virtual DbSet<inf_usr_escolar> inf_usr_escolar { get; set; }
        public virtual DbSet<inf_usr_medicos> inf_usr_medicos { get; set; }
        public virtual DbSet<inf_usr_personales> inf_usr_personales { get; set; }
        public virtual DbSet<inf_usr_rh> inf_usr_rh { get; set; }
        public virtual DbSet<inf_usuario> inf_usuario { get; set; }
        public virtual DbSet<inf_vnta> inf_vnta { get; set; }
        public virtual DbSet<inf_vnta_inv> inf_vnta_inv { get; set; }
        public virtual DbSet<inf_sepomex> inf_sepomex { get; set; }
    
        [DbFunction("db_imEntities", "tblPreguntasRespuestas")]
        public virtual IQueryable<tblPreguntasRespuestas_Result> tblPreguntasRespuestas(Nullable<int> materiaF, Nullable<System.Guid> usuarioFiltrado)
        {
            var materiaFParameter = materiaF.HasValue ?
                new ObjectParameter("MateriaF", materiaF) :
                new ObjectParameter("MateriaF", typeof(int));
    
            var usuarioFiltradoParameter = usuarioFiltrado.HasValue ?
                new ObjectParameter("UsuarioFiltrado", usuarioFiltrado) :
                new ObjectParameter("UsuarioFiltrado", typeof(System.Guid));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<tblPreguntasRespuestas_Result>("[db_imEntities].[tblPreguntasRespuestas](@MateriaF, @UsuarioFiltrado)", materiaFParameter, usuarioFiltradoParameter);
        }
    
        public virtual ObjectResult<PreguntasSP_Result> PreguntasSP(Nullable<int> materiaIDFiltro, Nullable<int> materiaTemaIDFiltro, Nullable<int> tipoPregunta)
        {
            var materiaIDFiltroParameter = materiaIDFiltro.HasValue ?
                new ObjectParameter("MateriaIDFiltro", materiaIDFiltro) :
                new ObjectParameter("MateriaIDFiltro", typeof(int));
    
            var materiaTemaIDFiltroParameter = materiaTemaIDFiltro.HasValue ?
                new ObjectParameter("MateriaTemaIDFiltro", materiaTemaIDFiltro) :
                new ObjectParameter("MateriaTemaIDFiltro", typeof(int));
    
            var tipoPreguntaParameter = tipoPregunta.HasValue ?
                new ObjectParameter("TipoPregunta", tipoPregunta) :
                new ObjectParameter("TipoPregunta", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<PreguntasSP_Result>("PreguntasSP", materiaIDFiltroParameter, materiaTemaIDFiltroParameter, tipoPreguntaParameter);
        }
    
        public virtual ObjectResult<RespuestasSP_Result> RespuestasSP(Nullable<int> materiaIDFiltro, Nullable<int> materiaTemaIDFiltro, Nullable<int> materiaTemaPreguntaIDFiltro)
        {
            var materiaIDFiltroParameter = materiaIDFiltro.HasValue ?
                new ObjectParameter("MateriaIDFiltro", materiaIDFiltro) :
                new ObjectParameter("MateriaIDFiltro", typeof(int));
    
            var materiaTemaIDFiltroParameter = materiaTemaIDFiltro.HasValue ?
                new ObjectParameter("MateriaTemaIDFiltro", materiaTemaIDFiltro) :
                new ObjectParameter("MateriaTemaIDFiltro", typeof(int));
    
            var materiaTemaPreguntaIDFiltroParameter = materiaTemaPreguntaIDFiltro.HasValue ?
                new ObjectParameter("MateriaTemaPreguntaIDFiltro", materiaTemaPreguntaIDFiltro) :
                new ObjectParameter("MateriaTemaPreguntaIDFiltro", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<RespuestasSP_Result>("RespuestasSP", materiaIDFiltroParameter, materiaTemaIDFiltroParameter, materiaTemaPreguntaIDFiltroParameter);
        }
    }
}

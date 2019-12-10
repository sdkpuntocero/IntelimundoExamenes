using System;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntelimundoExamenes
{
    public partial class Panel : System.Web.UI.Page
    {
        public static Guid empf_ID = Guid.Empty, usr_ID = Guid.Empty;
        public static int FiltroMateriaID = 0, OrdenMateriaTemaID, FiltroMateriaTemaID, FiltroMateriaTemaPreguntaID, FiltroPreguntaDiagnostico = 0, FiltroPreguntaDiagnosticoID, FiltroPreguntaTest = 0;
        public static DataSet ds;
        public static DataTable dtPreguntasDiagnostico, dtRespuestasDiagnostico, dtPreguntasCuestionario, dtRespuestasCuestionario;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    try
                    {
                        UsuarioFiltrado();
                        DatosMateriasTemas();
                    }
                    catch
                    {
                    }
                }
            }
            catch
            {
                Response.Redirect("Default.aspx");
            }
        }

        private void DatosMateriasTemas()
        {
            using (db_imEntities mMaterias = new db_imEntities())
            {
                var iMaterias = (from t1 in mMaterias.catMateria
                                 select t1).ToList();

                foreach (var iMater in iMaterias)
                {
                    switch (iMater.MateriaID)

                    {
                        case 1:

                            lblMateria001.Text = "Biología";
                            divMat001R.Attributes["style"] = "width: 40%";
                            lblMat001R.Text = "Biología 40%";
                            break;

                        case 2:

                            lblMateria002.Text = "Español";

                            break;

                        case 3:

                            lblMateria003.Text = "Filosofía";

                            break;

                        case 4:

                            lblMateria004.Text = "Física";

                            break;

                        case 5:

                            lblMateria005.Text = "Geografía";

                            break;

                        case 6:

                            lblMateria006.Text = "Historia De Mexico";

                            break;

                        case 7:

                            lblMateria007.Text = "Historia Universal";

                            break;

                        case 8:

                            lblMateria008.Text = "Literatura";

                            break;

                        case 9:

                            lblMateria009.Text = "Matemáticas";

                            break;

                        case 10:

                            lblMateria010.Text = "Química";

                            break;

                        case 0:

                            break;
                    }
                }
            }
        }

        private void UsuarioFiltrado()
        {
            try
            {
                //usr_ID = Guid.Parse(Request.Cookies[1].Value);
                usr_ID = (Guid)(Session["UsuarioFirmadoID"]);

                using (db_imEntities m_usuario = new db_imEntities())
                {
                    var i_usuario = (from i_u in m_usuario.inf_usuario
                                     join i_up in m_usuario.inf_usr_personales on i_u.usuario_ID equals i_up.usuario_ID
                                     join i_uh in m_usuario.inf_usr_rh on i_u.usuario_ID equals i_uh.usuario_ID
                                     join i_pu in m_usuario.fact_perfil on i_uh.perfil_ID equals i_pu.perfil_ID

                                     where i_u.usuario_ID == usr_ID
                                     select new
                                     {
                                         i_u.usuario_ID,
                                         i_u.cod_usr,
                                         i_up.nombres,
                                         i_up.apaterno,
                                         i_up.amaterno,
                                         i_pu.perfil_desc,
                                         i_pu.perfil_ID,
                                     }).FirstOrDefault();

                    lblNombreUsuario.Text = i_usuario.nombres;
                    lblNombreApellidos.Text = i_usuario.apaterno + " " + i_usuario.amaterno;
                }
            }
            catch
            {
                Response.Redirect("acceso.aspx");
            }
        }

        #region matematicas

        protected void lkbTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema1/index.html";

            OrdenMateriaTemaID = 1;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema2/index.html";

            OrdenMateriaTemaID = 2;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema3/index.html";

            OrdenMateriaTemaID = 3;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema4/index.html";

            OrdenMateriaTemaID = 4;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema5/index.html";

            OrdenMateriaTemaID = 5;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema6/index.html";

            OrdenMateriaTemaID = 6;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema7/index.html";

            OrdenMateriaTemaID = 7;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema8/index.html";

            OrdenMateriaTemaID = 8;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        #endregion matematicas

        #region fisica

        protected void lkbFisTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema1/index.html";

            OrdenMateriaTemaID = 9;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema2/index.html";

            OrdenMateriaTemaID = 10;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema3/index.html";

            OrdenMateriaTemaID = 11;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema4/index.html";

            OrdenMateriaTemaID = 12;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema5/index.html";

            OrdenMateriaTemaID = 13;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema6/index.html";

            OrdenMateriaTemaID = 14;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema7/index.html";

            OrdenMateriaTemaID = 15;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema8/index.html";

            OrdenMateriaTemaID = 16;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema9/index.html";

            OrdenMateriaTemaID = 17;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema10/index.html";

            OrdenMateriaTemaID = 18;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema011_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema11/index.html";

            OrdenMateriaTemaID = 19;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema012_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema12/index.html";

            OrdenMateriaTemaID = 20;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        #endregion fisica

        #region quimica

        protected void lkbQuiTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Quimica/Tema1/index.html";
            lblTema.Text = "La materia y sus cambios";

            upTema.Update();
        }

        #endregion quimica

        #region geografia

        protected void lkbGeoTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Introducción a la geografía";

            upTema.Update();
        }

        protected void lkbGeoTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "El universo y el Sistema Solar";

            upTema.Update();
        }

        protected void lkbGeoTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "La ubicación espacial y temporal";

            upTema.Update();
        }

        protected void lkbGeoTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "La Tierra";

            upTema.Update();
        }

        protected void lkbGeoTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Orografía";

            upTema.Update();
        }

        protected void lkbGeoTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Hidrografía";

            upTema.Update();
        }

        protected void lkbGeoTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Geografía humana (espacio geográfico)";

            upTema.Update();
        }

        protected void lkbGeoTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "La población mundial y de México";

            upTema.Update();
        }

        protected void lkbGeoTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Organización política actual";

            upTema.Update();
        }

        #endregion geografia

        #region historiademexico

        protected void lkbHisMTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La nueva España del siglo XVI al XVIII";

            upTema.Update();
        }

        protected void lkbHisMTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "Estructura política, económica y social en el México colonial (siglos XVI al XVIII)";

            upTema.Update();
        }

        protected void lkbHisMTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "El movimiento de independencia 1810-1821";

            upTema.Update();
        }

        protected void lkbHisMTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "México Independiente 1821-1855";

            upTema.Update();
        }

        protected void lkbHisMTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "Conflictos internacionales (1838-1848)";

            upTema.Update();
        }

        protected void lkbHisMTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La segunda República Federal y el Segundo Imperio Mexicano 1857-1867";

            upTema.Update();
        }

        protected void lkbHisMTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La segunda intervención francesa en México y la república restaurada (1858-1876)";

            upTema.Update();
        }

        protected void lkbHisMTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "México durante el régimen de Porfirio Díaz";

            upTema.Update();
        }

        protected void lkbHisMTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "El movimiento revolucionario";

            upTema.Update();
        }

        protected void lkbHisMTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La reconstrucción nacional";

            upTema.Update();
        }

        protected void lkbHisMTema011_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "México Contemporáneo";

            upTema.Update();
        }

        #endregion historiademexico

        #region historiauniversal

        protected void lkbHisUTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Introducción a la ciencia de la historia";

            upTema.Update();
        }

        protected void lkbHisUTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "La revolución industrial";

            upTema.Update();
        }

        protected void lkbHisUTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Esbozo de las revoluciones burguesas";

            upTema.Update();
        }

        protected void lkbHisUTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Independencias de Iberoamérica";

            upTema.Update();
        }

        protected void lkbHisUTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El imperialismo";

            upTema.Update();
        }

        protected void lkbHisUTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El reparto colonial del siglo XIX";

            upTema.Update();
        }

        protected void lkbHisUTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Movimientos sociales y políticos del siglo XIX";

            upTema.Update();
        }

        protected void lkbHisUTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "La primera guerra mundial y la revolución rusa";

            upTema.Update();
        }

        protected void lkbHisUTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El periodo de entreguerras (1919-1939)";

            upTema.Update();
        }

        protected void lkbHisUTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "La segunda guerra mundial (1939-1945)";

            upTema.Update();
        }

        protected void lkbHisUTema011_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El conflicto entre el capitalismo y el socialismo";

            upTema.Update();
        }

        protected void lkbHisUTema012_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El conflicto entre el capitalismo y el socialismo";

            upTema.Update();
        }

        #endregion historiauniversal

        #region literatura

        protected void lkbLitTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Principios de la literatura";

            upTema.Update();
        }

        protected void lkbLitTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Narrativa";
            upTema.Update();
        }

        protected void lkbLitTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Lírica";
            upTema.Update();
        }

        protected void lkbLitTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad antigua";
            upTema.Update();
        }

        protected void lkbLitTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad media";
            upTema.Update();
        }

        protected void lkbLitTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad moderna I";
            upTema.Update();
        }

        protected void lkbLitTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad moderna II";
            upTema.Update();
        }

        protected void lkbLitTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad contemporánea";
            upTema.Update();
        }

        protected void lkbLitTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Vanguardias";
            upTema.Update();
        }

        protected void lkbLitTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Literatura mexicana";
            upTema.Update();
        }

        #endregion literatura

        #region filosofia

        protected void lkbFilTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update(); upResumen.Update();
            btnGuardaDiagnostico.Visible = true;
            ebbokTema.Visible = false;
            carComentario.Visible = false;
            play_video.Visible = true;
            play_video.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/VideoClase0001.mp4";
            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "Generalidades de la filosofía";
            FiltroPreguntaDiagnostico = 0;
            upTema.Update();
        }

        protected void lkbFilTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            ebbokTema.Visible = false;

            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "La filosofía y su relación contra áreas culturales";
            upTema.Update();
        }

        protected void lkbFilTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            ebbokTema.Visible = false;

            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "Problemas filosóficos planeados en la Grecia antigua";
            upTema.Update();
        }

        protected void lkbFilTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            ebbokTema.Visible = false;

            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "Pensamiento filosófico en Europa en la época medieval";
            upTema.Update();
        }

        #endregion filosofia

        protected void lkbSalir_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        protected void rbRespDiag001_CheckedChanged(object sender, EventArgs e)
        {
        }

        #region Materia0001

        protected void lkbM001Tema001_Click(object sender, EventArgs e)
        {
            if (EstatusTemas(FiltroMateriaID, FiltroMateriaTemaID))
            {
                divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
                lblPuntuacion.Text = "0";
                lblPuntDiag.Text = "0";

                carComentario.Visible = false;
                comment1.Value = string.Empty;
                cardPreguntas.Visible = false;
                cardResultado.Visible = false;
                upResultado.Update();

                iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema1/index.html";

                OrdenMateriaTemaID = 1;
                FiltroMateriaID = 1;

                using (db_imEntities mMateria = new db_imEntities())
                {
                    var iMateria = (from a in mMateria.catMateriaTema
                                    where a.MateriaID == FiltroMateriaID
                                    where a.MateriaOrdenID == OrdenMateriaTemaID
                                    select a
                                       ).FirstOrDefault();

                    lblTema.Text = iMateria.MateriaTema;
                    FiltroMateriaTemaID = iMateria.MateriaTemaID;
                }

                ebbokTema.Visible = false;
                btnDiagnostico.Visible = true;
            }
            else
            {
                iM001Tema001.Attributes["style"] = "color: green";
            }

            upTema.Update();
        }

        private bool EstatusTemas(int MateriaID, int MateriaTemaID)
        {
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                join b in mMateria.catMateriaTemaPreguntaRespuesta on a.MateriaTemaPreguntaRespuestaID equals b.MateriaTemaPreguntaRespuestaID
                                join c in mMateria.catMateriaTemaPregunta on b.MateriaTemaPreguntaID equals c.MateriaTemaPreguntaID
                                join d in mMateria.catMateriaTema on c.MateriaTemaID equals d.MateriaTemaID
                                where d.MateriaID == MateriaID
                                where c.MateriaTemaID == MateriaTemaID
                                select a
                                   ).ToList();
                if (iMateria.Count == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        protected void lkbM001Tema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";

            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema2/index.html";

            OrdenMateriaTemaID = 2;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";

            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema3/index.html";

            OrdenMateriaTemaID = 3;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema4/index.html";

            OrdenMateriaTemaID = 4;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema5/index.html";

            OrdenMateriaTemaID = 5;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema6/index.html";

            OrdenMateriaTemaID = 6;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema7/index.html";

            OrdenMateriaTemaID = 7;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema8/index.html";

            OrdenMateriaTemaID = 8;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema9/index.html";

            OrdenMateriaTemaID = 9;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        protected void lkbM001Tema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";
            lblPuntDiag.Text = "0";
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema10/index.html";

            OrdenMateriaTemaID = 10;
            FiltroMateriaID = 1;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == FiltroMateriaID
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }
            ebbokTema.Visible = false;
            btnDiagnostico.Visible = true;
            upTema.Update();
        }

        #endregion Materia0001

        #region Materia0002

        protected void lkbM002Tema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";

            OrdenMateriaTemaID = 1;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema2/index.html";

            OrdenMateriaTemaID = 2;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema3/index.html";

            OrdenMateriaTemaID = 3;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema4/index.html";

            OrdenMateriaTemaID = 4;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema5/index.html";

            OrdenMateriaTemaID = 5;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema6/index.html";

            OrdenMateriaTemaID = 6;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema7/index.html";

            OrdenMateriaTemaID = 7;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema8/index.html";

            OrdenMateriaTemaID = 8;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema9/index.html";

            OrdenMateriaTemaID = 9;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        protected void lkbM002Tema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();

            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema10/index.html";

            OrdenMateriaTemaID = 10;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaOrdenID == OrdenMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
                FiltroMateriaTemaID = iMateria.MateriaTemaID;
            }

            upTema.Update();
        }

        #endregion Materia0002

        protected void lkbMateria001_Click(object sender, EventArgs e)
        {
            FiltroMateriaID = 1;
        }

        protected void gvResultados_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                switch (e.Row.Cells[2].Text)

                {
                    case "True":

                        e.Row.Cells[2].Text = "Correcta";

                        break;

                    case "False":

                        e.Row.Cells[2].Text = "Incorrecta";

                        break;
                }
            }
        }

        protected void lkbVideoClases_li_Click(object sender, EventArgs e)
        {
            divTema.Visible = true; divResumen.Visible = false; upResumen.Update();
            lblPuntuacion.Text = "0";

            ebbokTema.Visible = false;
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            upTema.Update();
        }

        protected void btnDiagnostico_Click(object sender, EventArgs e)
        {
            int PreguntaID;

            btnDiagnostico.Visible = false;
            upGuardaDiagnostico.Update();

            dtPreguntasDiagnostico = GetTable(FiltroMateriaID, FiltroMateriaTemaID, 1);

            DataRow[] foundRows;
            foundRows = dtPreguntasDiagnostico.Select("NuevoID = 1");

            PreguntaID = int.Parse(foundRows[0][2].ToString());
            cardDiagnostico.Visible = true;
            lblTemaDiagnostico.Text = foundRows[0][1].ToString();

            rbRespDiag001.Checked = false;
            rbRespDiag002.Checked = false;
            rbRespDiag003.Checked = false;
            rbRespDiag004.Checked = false;

            using (db_imEntities mTema = new db_imEntities())
            {
                var iRespuesta = (from c in mTema.RespuestasSP(FiltroMateriaID, FiltroMateriaTemaID, PreguntaID)
                                  select c).ToList();

                int f1 = 1;
                foreach (var iResp in iRespuesta)
                {
                    string strlbl = "lblRespuesta00" + f1;

                    if (strlbl == "lblRespuesta001")
                    {
                        lblRespDiag001.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblRespDiagID001.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }

                    if (strlbl == "lblRespuesta002")
                    {
                        lblRespDiag002.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblRespDiagID002.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }

                    if (strlbl == "lblRespuesta003")
                    {
                        lblRespDiag003.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblRespDiagID003.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }

                    if (strlbl == "lblRespuesta004")
                    {
                        lblRespDiag004.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblRespDiagID004.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }
                    f1 += 1;
                }

                if (iRespuesta.Count == 3)
                {
                    rbRespDiag004.Visible = false;
                }
            }
            FiltroPreguntaDiagnostico = 1;
            upDiagnostico.Update();
        }

        protected void btnGuardaDiagnostico_Click(object sender, EventArgs e)
        {
            if (rbRespDiag001.Checked == false & rbRespDiag002.Checked == false & rbRespDiag003.Checked == false & rbRespDiag004.Checked == false)
            {
                Mensaje("Favor de seleccionar una opción");
            }
            else
            {
                string filtro;
                int PreguntaID;

                if (FiltroPreguntaDiagnostico == 5)
                {
                    if (rbRespDiag001.Checked == true || rbRespDiag002.Checked == true || rbRespDiag003.Checked == true || rbRespDiag004.Checked == true)
                    {
                        int intRespuesta = 0;
                        if (rbRespDiag001.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID001.Text);
                        }
                        else if (rbRespDiag002.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID002.Text);
                        }
                        else if (rbRespDiag003.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID003.Text);
                        }
                        else if (rbRespDiag004.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID004.Text);
                        }

                        using (db_imEntities mMateria = new db_imEntities())
                        {
                            var iRespuesta = (from a in mMateria.catMateriaTemaPreguntaRespuesta
                                              where a.MateriaTemaPreguntaRespuestaID == intRespuesta
                                              select a
                                             ).FirstOrDefault();
                            filtro = "NuevoID = " + FiltroPreguntaDiagnostico.ToString();
                            DataRow[] foundRows;
                            foundRows = dtPreguntasDiagnostico.Select(filtro);
                            PreguntaID = int.Parse(foundRows[0][2].ToString());
                            var i_registro = new db_imEntities();

                            var dn_usr = new catMateriaTemaPreguntaRespuestaBitacora
                            {
                                TipoPreguntaID = 1,
                                UsuarioID = usr_ID,
                                MateriaTemaPreguntaRespuestaID = intRespuesta,
                                MateriaTemaPreguntaID = PreguntaID,
                                FechaRegistro = DateTime.Now
                            };

                            i_registro.catMateriaTemaPreguntaRespuestaBitacora.Add(dn_usr);

                            i_registro.SaveChanges();
                        }
                    }
                    using (db_imEntities mMateria = new db_imEntities())
                    {
                        var iPuntuacón = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                          join b in mMateria.catMateriaTemaPreguntaRespuesta on a.MateriaTemaPreguntaRespuestaID equals b.MateriaTemaPreguntaRespuestaID
                                          where a.TipoPreguntaID == 1
                                          where b.Respuesta == true
                                          where a.UsuarioID == usr_ID
                                          select a).ToList();

                        int intPunt = iPuntuacón.Count;
                        int intCal = (intPunt * 2);
                        iMateria001.Attributes["style"] = "color: yellow";
                        iM001Tema001.Attributes["style"] = "color: yellow";

                        lblPuntDiag.Text = intCal.ToString();

                        cardDiagnostico.Visible = false;

                        Mensaje("Cuestionario Terminado");
                        carComentario.Visible = true;

                        cardPreguntas.Visible = false;

                        FiltroPreguntaDiagnostico = 0;
                        ebbokTema.Visible = true;
                        upResultado.Update();
                        upcardPreguntas.Update();
                        upM002Tema001.Update();
                        upTema.Update();
                    }

                    Mensaje("Terminado");
                }
                else
                {
                    filtro = "NuevoID = " + FiltroPreguntaDiagnostico.ToString();
                    DataRow[] foundRows;
                    foundRows = dtPreguntasDiagnostico.Select(filtro);
                    PreguntaID = int.Parse(foundRows[0][2].ToString());
                    if (rbRespDiag001.Checked == true || rbRespDiag002.Checked == true || rbRespDiag003.Checked == true || rbRespDiag004.Checked == true)
                    {
                        int intRespuesta = 0;
                        if (rbRespDiag001.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID001.Text);
                        }
                        else if (rbRespDiag002.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID002.Text);
                        }
                        else if (rbRespDiag003.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID003.Text);
                        }
                        else if (rbRespDiag004.Checked)
                        {
                            intRespuesta = int.Parse(lblRespDiagID004.Text);
                        }

                        using (db_imEntities mMateria = new db_imEntities())
                        {
                            var iRespuesta = (from a in mMateria.catMateriaTemaPreguntaRespuesta
                                              where a.MateriaTemaPreguntaRespuestaID == intRespuesta
                                              select a
                                             ).FirstOrDefault();
                            var i_registro = new db_imEntities();

                            var dn_usr = new catMateriaTemaPreguntaRespuestaBitacora
                            {
                                TipoPreguntaID = 1,
                                UsuarioID = usr_ID,
                                MateriaTemaPreguntaRespuestaID = intRespuesta,
                                MateriaTemaPreguntaID = PreguntaID,
                                FechaRegistro = DateTime.Now
                            };

                            i_registro.catMateriaTemaPreguntaRespuestaBitacora.Add(dn_usr);

                            i_registro.SaveChanges();
                        }
                    }

                    FiltroPreguntaDiagnostico += 1;
                    filtro = "NuevoID = " + FiltroPreguntaDiagnostico.ToString();

                    foundRows = dtPreguntasDiagnostico.Select(filtro);
                    cardDiagnostico.Visible = true;
                    lblTemaDiagnostico.Text = foundRows[0][1].ToString();
                    PreguntaID = int.Parse(foundRows[0][2].ToString());

                    using (db_imEntities mTema = new db_imEntities())
                    {
                        var iRespuesta = (from c in mTema.RespuestasSP(FiltroMateriaID, FiltroMateriaTemaID, PreguntaID)
                                          select c).ToList();
                        int f1 = 1;
                        foreach (var iResp in iRespuesta)
                        {
                            string strlbl = "lblRespuesta00" + f1;

                            if (strlbl == "lblRespuesta001")
                            {
                                lblRespDiag001.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblRespDiagID001.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }

                            if (strlbl == "lblRespuesta002")
                            {
                                lblRespDiag002.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblRespDiagID002.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }

                            if (strlbl == "lblRespuesta003")
                            {
                                lblRespDiag003.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblRespDiagID003.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }

                            if (strlbl == "lblRespuesta004")
                            {
                                lblRespDiag004.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblRespDiagID004.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }
                            f1 += 1;
                        }

                        if (iRespuesta.Count == 3)
                        {
                            rbRespDiag004.Visible = false;
                        }
                    }

                    rbRespDiag001.Checked = false;
                    rbRespDiag002.Checked = false;
                    rbRespDiag003.Checked = false;
                    rbRespDiag004.Checked = false;

                    upDiagnostico.Update();
                }
            }
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            cardResultado.Visible = false;
            using (db_imEntities mMateria = new db_imEntities())
            {
                var iRespuesta = (from a in mMateria.catMateriaTemaSintesis
                                  where a.UsuarioID == usr_ID
                                  select a
                                   ).ToList();

                string strcomment1 = Request.Form["comment1"];
                var i_registro = new db_imEntities();

                var dn_usr = new catMateriaTemaSintesis
                {
                    UsuarioID = usr_ID,
                    Sintesis = strcomment1,
                    MateriaTemaID = FiltroMateriaTemaID,
                    FechaRegistro = DateTime.Now
                };

                i_registro.catMateriaTemaSintesis.Add(dn_usr);

                i_registro.SaveChanges();

                carComentario.Visible = false;

                cardPreguntas.Visible = true;

                int PreguntaID;

                dtPreguntasDiagnostico = GetTable(FiltroMateriaID, FiltroMateriaTemaID, 2);

                DataRow[] foundRows;
                foundRows = dtPreguntasDiagnostico.Select("NuevoID = 1");

                PreguntaID = int.Parse(foundRows[0][2].ToString());

                lblPregunta.Text = foundRows[0][1].ToString();

                radioR1.Checked = false;
                radioR2.Checked = false;
                radioR3.Checked = false;
                radioR4.Checked = false;

                var iRespuestaf = (from c in mMateria.RespuestasSP(FiltroMateriaID, FiltroMateriaTemaID, PreguntaID)
                                   select c).ToList();

                int f1 = 1;
                foreach (var iResp in iRespuestaf)
                {
                    string strlbl = "lblRespuesta00" + f1;

                    if (strlbl == "lblRespuesta001")
                    {
                        lblRespuesta001.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblResp001.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }

                    if (strlbl == "lblRespuesta002")
                    {
                        lblRespuesta002.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblResp002.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }

                    if (strlbl == "lblRespuesta003")
                    {
                        lblRespuesta003.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblResp003.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }

                    if (strlbl == "lblRespuesta004")
                    {
                        lblRespuesta004.Text = iResp.MateriaTemaPreguntaRespuesta;
                        lblResp004.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                    }
                    f1 += 1;
                }
                if (iRespuestaf.Count == 3)
                {
                    radioR4.Visible = false;
                }
                FiltroPreguntaDiagnostico = 1;
                FiltroPreguntaTest = int.Parse(foundRows.Length.ToString());
                upcardPreguntas.Update();
            }
        }

        protected void btnGuardaRespuesta_Click(object sender, EventArgs e)
        {
            if (radioR1.Checked == false & radioR2.Checked == false & radioR3.Checked == false & radioR4.Checked == false)
            {
                Mensaje("Favor de seleccionar una opción");
            }
            else
            {
                string filtro;
                int PreguntaID = 0;
                filtro = "NuevoID = " + FiltroPreguntaDiagnostico.ToString();
                DataRow[] foundRows;
                foundRows = dtPreguntasDiagnostico.Select(filtro);
                cardDiagnostico.Visible = true;
                lblPregunta.Text = foundRows[0][1].ToString();
                PreguntaID = int.Parse(foundRows[0][2].ToString());
                if (FiltroPreguntaDiagnostico == dtPreguntasDiagnostico.Rows.Count)
                {
                    if (radioR1.Checked == true || radioR2.Checked == true || radioR3.Checked == true || radioR4.Checked == true)
                    {
                        int intRespuesta = 0;
                        if (radioR1.Checked)
                        {
                            intRespuesta = int.Parse(lblResp001.Text);
                        }
                        else if (radioR2.Checked)
                        {
                            intRespuesta = int.Parse(lblResp002.Text);
                        }
                        else if (radioR3.Checked)
                        {
                            intRespuesta = int.Parse(lblResp003.Text);
                        }
                        else if (radioR4.Checked)
                        {
                            intRespuesta = int.Parse(lblResp004.Text);
                        }

                        using (db_imEntities mMateria = new db_imEntities())
                        {
                            var iRespuesta = (from a in mMateria.catMateriaTemaPreguntaRespuesta
                                              where a.MateriaTemaPreguntaRespuestaID == intRespuesta
                                              select a
                                             ).FirstOrDefault();

                            bool vRespuesta = bool.Parse(iRespuesta.Respuesta.ToString());

                            if (vRespuesta)
                            {
                                var i_registro = new db_imEntities();

                                var dn_usr = new catMateriaTemaPreguntaRespuestaBitacora
                                {
                                    TipoPreguntaID = 2,
                                    UsuarioID = usr_ID,
                                    MateriaTemaPreguntaRespuestaID = intRespuesta,
                                    MateriaTemaPreguntaID = PreguntaID,
                                    FechaRegistro = DateTime.Now
                                };

                                i_registro.catMateriaTemaPreguntaRespuestaBitacora.Add(dn_usr);

                                i_registro.SaveChanges();
                            }
                            else
                            {
                                var i_registro = new db_imEntities();

                                var dn_usr = new catMateriaTemaPreguntaRespuestaBitacora
                                {
                                    TipoPreguntaID = 2,
                                    UsuarioID = usr_ID,
                                    MateriaTemaPreguntaRespuestaID = intRespuesta,
                                    MateriaTemaPreguntaID = PreguntaID,
                                    FechaRegistro = DateTime.Now
                                };

                                i_registro.catMateriaTemaPreguntaRespuestaBitacora.Add(dn_usr);

                                i_registro.SaveChanges();
                            }
                        }
                    }
                    using (db_imEntities mMateria = new db_imEntities())
                    {
                        var iPuntuacón = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                          join b in mMateria.catMateriaTemaPreguntaRespuesta on a.MateriaTemaPreguntaRespuestaID equals b.MateriaTemaPreguntaRespuestaID
                                          join c in mMateria.catMateriaTemaPregunta on a.MateriaTemaPreguntaID equals c.MateriaTemaPreguntaID
                                          where c.TipoPreguntaID == 2
                                          where b.Respuesta == true
                                          where a.UsuarioID == usr_ID
                                          select a).ToList();

                        int intPunt = iPuntuacón.Count;
                        int intCal = (intPunt * 10) / 10;

                        //i97.Attributes["style"] = "color: green";
                        lblPuntuacion.Text = intCal.ToString();

                        cardDiagnostico.Visible = false;

                        Mensaje("Cuestionario Terminado");

                        cardPreguntas.Visible = false;

                        var iMateria = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                        join b in mMateria.catMateriaTemaPreguntaRespuesta on a.MateriaTemaPreguntaRespuestaID equals b.MateriaTemaPreguntaRespuestaID
                                        join c in mMateria.catMateriaTemaPregunta on a.MateriaTemaPreguntaID equals c.MateriaTemaPreguntaID
                                        where c.TipoPreguntaID == 2
                                        where a.UsuarioID == usr_ID
                                        select new
                                        {
                                            c.MateriaTemaPregunta,
                                            b.MateriaTemaPreguntaRespuesta,
                                            b.Respuesta,
                                            b.Justificacion
                                        }
                                       ).ToList();

                        if (iMateria.Count != 0)
                        {
                            gvResultados.DataSource = iMateria;
                            gvResultados.DataBind();
                            gvResultados.Visible = true;
                        }

                        cardResultado.Visible = true;
                        upResultado.Update();
                        upcardPreguntas.Update();
                        upM002Tema001.Update();
                        upTema.Update();
                    }

                    Mensaje("Terminado");
                }
                else
                {
                    filtro = "NuevoID = " + FiltroPreguntaDiagnostico.ToString();

                    foundRows = dtPreguntasDiagnostico.Select(filtro);
                    cardDiagnostico.Visible = true;
                    lblPregunta.Text = foundRows[0][1].ToString();
                    PreguntaID = int.Parse(foundRows[0][2].ToString());
                    if (radioR1.Checked == true || radioR2.Checked == true || radioR3.Checked == true || radioR4.Checked == true)
                    {
                        int intRespuesta = 0;
                        if (radioR1.Checked)
                        {
                            intRespuesta = int.Parse(lblResp001.Text);
                        }
                        else if (radioR2.Checked)
                        {
                            intRespuesta = int.Parse(lblResp002.Text);
                        }
                        else if (radioR3.Checked)
                        {
                            intRespuesta = int.Parse(lblResp003.Text);
                        }
                        else if (radioR4.Checked)
                        {
                            intRespuesta = int.Parse(lblResp004.Text);
                        }

                        using (db_imEntities mMateria = new db_imEntities())
                        {
                            var iRespuesta = (from a in mMateria.catMateriaTemaPreguntaRespuesta
                                              where a.MateriaTemaPreguntaRespuestaID == intRespuesta
                                              select a
                                             ).FirstOrDefault();

                            bool vRespuesta = bool.Parse(iRespuesta.Respuesta.ToString());

                            if (vRespuesta)
                            {
                                var i_registro = new db_imEntities();

                                var dn_usr = new catMateriaTemaPreguntaRespuestaBitacora
                                {
                                    TipoPreguntaID = 2,
                                    UsuarioID = usr_ID,
                                    MateriaTemaPreguntaRespuestaID = intRespuesta,
                                    MateriaTemaPreguntaID = PreguntaID,
                                    FechaRegistro = DateTime.Now
                                };

                                i_registro.catMateriaTemaPreguntaRespuestaBitacora.Add(dn_usr);

                                i_registro.SaveChanges();
                            }
                            else
                            {
                                var i_registro = new db_imEntities();

                                var dn_usr = new catMateriaTemaPreguntaRespuestaBitacora
                                {
                                    TipoPreguntaID = 2,
                                    UsuarioID = usr_ID,
                                    MateriaTemaPreguntaRespuestaID = intRespuesta,
                                    MateriaTemaPreguntaID = PreguntaID,
                                    FechaRegistro = DateTime.Now
                                };

                                i_registro.catMateriaTemaPreguntaRespuestaBitacora.Add(dn_usr);

                                i_registro.SaveChanges();
                            }
                        }
                    }
                    FiltroPreguntaDiagnostico += 1;
                    filtro = "NuevoID = " + FiltroPreguntaDiagnostico.ToString();

                    foundRows = dtPreguntasDiagnostico.Select(filtro);
                    cardDiagnostico.Visible = true;
                    lblPregunta.Text = foundRows[0][1].ToString();
                    PreguntaID = int.Parse(foundRows[0][2].ToString());
                    using (db_imEntities mTema = new db_imEntities())
                    {
                        var iRespuesta = (from c in mTema.RespuestasSP(FiltroMateriaID, FiltroMateriaTemaID, PreguntaID)
                                          select c).ToList();

                        int f1 = 1;
                        foreach (var iResp in iRespuesta)
                        {
                            string strlbl = "lblRespuesta00" + f1;

                            if (strlbl == "lblRespuesta001")
                            {
                                lblRespuesta001.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblResp001.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }

                            if (strlbl == "lblRespuesta002")
                            {
                                lblRespuesta002.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblResp002.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }

                            if (strlbl == "lblRespuesta003")
                            {
                                lblRespuesta003.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblResp003.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }

                            if (strlbl == "lblRespuesta004")
                            {
                                lblRespuesta004.Text = iResp.MateriaTemaPreguntaRespuesta;
                                lblResp004.Text = iResp.MateriaTemaPreguntaRespuestaID.ToString();
                            }
                            f1 += 1;

                            if (iRespuesta.Count == 3)
                            {
                                radioR4.Visible = false;
                            }
                        }
                    }

                    radioR1.Checked = false;
                    radioR2.Checked = false;
                    radioR3.Checked = false;
                    radioR4.Checked = false;

                    upcardPreguntas.Update();
                }
            }
        }

        private static DataTable GetTable(int MateriaIDFiltro, int MateriaTemaIDFiltro, int TipoPregunta)
        {
            DataTable dtff = new DataTable();

            dtff.Columns.Add("NuevoID", typeof(int));
            dtff.Columns.Add("Pregunta", typeof(string));
            dtff.Columns.Add("PreguntaID", typeof(int));

            using (db_imEntities mTema = new db_imEntities())
            {
                var iPregunta = (from c in mTema.PreguntasSP(MateriaIDFiltro, MateriaTemaIDFiltro, TipoPregunta)
                                 select c).ToList();

                foreach (var item in iPregunta)
                {
                    DataRow row = dtff.NewRow();

                    row["Pregunta"] = item.MateriaTemaPregunta;
                    row["NuevoID"] = item.NuevoID;
                    row["PreguntaID"] = item.MateriaTemaPreguntaID;
                    dtff.Rows.Add(row);
                }
            }
            return dtff;
        }

        private void Mensaje(string contenido)
        {
            lblModalTitle.Text = "Intelimundo";
            lblModalBody.Text = contenido;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }
    }
}
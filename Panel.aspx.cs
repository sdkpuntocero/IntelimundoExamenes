using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntelimundoExamenes
{
    public partial class Panel : System.Web.UI.Page
    {
        public static Guid empf_ID = Guid.Empty, usr_ID = Guid.Empty;
        public static int FiltroMateriaTemaID, FiltroMateriaTemaPreguntaID;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    try
                    {
                        UsuarioFiltrado();
                    }
                    catch
                    {
                    }
                }
            }
            catch
            {
                Response.Redirect("acceso.aspx");
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

                    lblCorporativo.Text = "Aula Fénix";
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
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();
                


            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema1/index.html";

            FiltroMateriaTemaID = 1;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema2/index.html";

            FiltroMateriaTemaID = 2;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema3/index.html";

            FiltroMateriaTemaID = 3;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema4/index.html";

            FiltroMateriaTemaID = 4;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema5/index.html";

            FiltroMateriaTemaID = 5;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema6/index.html";

            FiltroMateriaTemaID = 6;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema7/index.html";

            FiltroMateriaTemaID = 7;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Matematicas/banner-mate.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Matematicas/Tema8/index.html";

            FiltroMateriaTemaID = 8;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 1
                                where a.MateriaTemaID == FiltroMateriaTemaID
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
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema1/index.html";

            FiltroMateriaTemaID = 9;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();

        }

        protected void lkbFisTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema2/index.html";

            FiltroMateriaTemaID = 10;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema3/index.html";

            FiltroMateriaTemaID = 11;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema4/index.html";

            FiltroMateriaTemaID = 12;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema5/index.html";

            FiltroMateriaTemaID = 13;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema6/index.html";

            FiltroMateriaTemaID = 14;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema7/index.html";

            FiltroMateriaTemaID = 15;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema8/index.html";

            FiltroMateriaTemaID = 16;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema9/index.html";

            FiltroMateriaTemaID = 17;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema10/index.html";

            FiltroMateriaTemaID = 18;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema011_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema11/index.html";

            FiltroMateriaTemaID = 19;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
                                select a
                                   ).FirstOrDefault();

                lblTema.Text = iMateria.MateriaTema;
            }

            upTema.Update();
        }

        protected void lkbFisTema012_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = true;
            ebbokTema.Visible = true;
            carComentario.Visible = true;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            cardVideoClases.Visible = false;
            upVideoClases.Update();

            imgTema.Attributes["src"] = "Material/Universidad/Fisica/banner-fisica.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Fisica/Tema12/index.html";

            FiltroMateriaTemaID = 20;

            using (db_imEntities mMateria = new db_imEntities())
            {
                var iMateria = (from a in mMateria.catMateriaTema
                                where a.MateriaID == 2
                                where a.MateriaTemaID == FiltroMateriaTemaID
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
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Quimica/banner-qui.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Quimica/Tema1/index.html";
            lblTema.Text = "La materia y sus cambios";

            upTema.Update();
        }

        #endregion quimica

        #region biologia

        protected void lkbBioTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema1/index.html";
            lblTema.Text = "Ámbitos de estudio";

            upTema.Update();
        }

        protected void lkbBioTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema2/index.html";
            lblTema.Text = "Células procariontes";

            upTema.Update();
        }

        protected void lkbBioTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema3/index.html";
            lblTema.Text = "Células eucariotas";

            upTema.Update();
        }

        protected void lkbBioTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema4/index.html";
            lblTema.Text = "Metabolismo celular";

            upTema.Update();
        }

        protected void lkbBioTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema5/index.html";
            lblTema.Text = "Biomoléculas";

            upTema.Update();
        }

        protected void lkbBioTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema6/index.html";
            lblTema.Text = "Bioquímica";

            upTema.Update();
        }

        protected void lkbBioTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema7/index.html";
            lblTema.Text = "Ecología";

            upTema.Update();
        }

        protected void lkbBioTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema8/index.html";
            lblTema.Text = "Respiración";

            upTema.Update();
        }

        protected void lkbBioTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema9/index.html";
            lblTema.Text = "Reproducción";

            upTema.Update();
        }

        protected void lkbBioTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema10/index.html";
            lblTema.Text = "Genética";

            upTema.Update();
        }

        protected void lkbBioTema011_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema11/index.html";
            lblTema.Text = "Origen de la vida";

            upTema.Update();
        }

        protected void lkbBioTema012_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Biologia/banner-bio.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Biologia/Tema12/index.html";
            lblTema.Text = "Evolución";

            upTema.Update();
        }

        #endregion biologia

        #region geografia

        protected void lkbGeoTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Introducción a la geografía";

            upTema.Update();
        }

        protected void lkbGeoTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "El universo y el Sistema Solar";

            upTema.Update();
        }

        protected void lkbGeoTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "La ubicación espacial y temporal";

            upTema.Update();
        }

        protected void lkbGeoTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "La Tierra";

            upTema.Update();
        }

        protected void lkbGeoTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Orografía";

            upTema.Update();
        }

        protected void lkbGeoTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Hidrografía";

            upTema.Update();
        }

        protected void lkbGeoTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Geografía humana (espacio geográfico)";

            upTema.Update();
        }

        protected void lkbGeoTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "La población mundial y de México";

            upTema.Update();
        }

        protected void lkbGeoTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Geografia/banner-geo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Geografia/Tema1/index.html";
            lblTema.Text = "Organización política actual";

            upTema.Update();
        }

        #endregion geografia

        #region español

        protected void lkbEspTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Gramática: Comunicación";

            upTema.Update();
        }

        protected void lkbEspTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Oración simple";

            upTema.Update();
        }

        protected void lkbEspTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Oración compuesta";

            upTema.Update();
        }

        protected void lkbEspTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Verbos";

            upTema.Update();
        }

        protected void lkbEspTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Funciones de la lengua";

            upTema.Update();
        }

        protected void lkbEspTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Formas del discurso";

            upTema.Update();
        }

        protected void lkbEspTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Redacción";

            upTema.Update();
        }

        protected void lkbEspTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Ortográfia";

            upTema.Update();
        }

        protected void lkbEspTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Signos de puntuación";

            upTema.Update();
        }

        protected void lkbEspTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Espanol/banner-esp.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Espanol/Tema1/index.html";
            lblTema.Text = "Fichas bibliográficas";

            upTema.Update();
        }

        #endregion español

        #region historiademexico

        protected void lkbHisMTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La nueva España del siglo XVI al XVIII";

            upTema.Update();
        }

        protected void lkbHisMTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "Estructura política, económica y social en el México colonial (siglos XVI al XVIII)";

            upTema.Update();
        }

        protected void lkbHisMTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "El movimiento de independencia 1810-1821";

            upTema.Update();
        }

        protected void lkbHisMTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "México Independiente 1821-1855";

            upTema.Update();
        }

        protected void lkbHisMTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "Conflictos internacionales (1838-1848)";

            upTema.Update();
        }

        protected void lkbHisMTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La segunda República Federal y el Segundo Imperio Mexicano 1857-1867";

            upTema.Update();
        }

        protected void lkbHisMTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La segunda intervención francesa en México y la república restaurada (1858-1876)";

            upTema.Update();
        }

        protected void lkbHisMTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "México durante el régimen de Porfirio Díaz";

            upTema.Update();
        }

        protected void lkbHisMTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "El movimiento revolucionario";

            upTema.Update();
        }

        protected void lkbHisMTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "La reconstrucción nacional";

            upTema.Update();
        }

        protected void lkbHisMTema011_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/banner-hm.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaDeMexico/Tema1/index.html";
            lblTema.Text = "México Contemporáneo";

            upTema.Update();
        }

        #endregion historiademexico

        #region historiauniversal

        protected void lkbHisUTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Introducción a la ciencia de la historia";

            upTema.Update();
        }

        protected void lkbHisUTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "La revolución industrial";

            upTema.Update();
        }

        protected void lkbHisUTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Esbozo de las revoluciones burguesas";

            upTema.Update();
        }

        protected void lkbHisUTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Independencias de Iberoamérica";

            upTema.Update();
        }

        protected void lkbHisUTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El imperialismo";

            upTema.Update();
        }

        protected void lkbHisUTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El reparto colonial del siglo XIX";

            upTema.Update();
        }

        protected void lkbHisUTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "Movimientos sociales y políticos del siglo XIX";

            upTema.Update();
        }

        protected void lkbHisUTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "La primera guerra mundial y la revolución rusa";

            upTema.Update();
        }

        protected void lkbHisUTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El periodo de entreguerras (1919-1939)";

            upTema.Update();
        }

        protected void lkbHisUTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "La segunda guerra mundial (1939-1945)";

            upTema.Update();
        }

        protected void lkbHisUTema011_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El conflicto entre el capitalismo y el socialismo";

            upTema.Update();
        }

        protected void lkbHisUTema012_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/banner-hu.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/HistoriaUniversal/Tema1/index.html";
            lblTema.Text = "El conflicto entre el capitalismo y el socialismo";

            upTema.Update();
        }

        #endregion historiauniversal

        #region literatura

        protected void lkbLitTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Principios de la literatura";

            upTema.Update();
        }

        protected void lkbLitTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Narrativa";
            upTema.Update();
        }

        protected void lkbLitTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Lírica";
            upTema.Update();
        }

        protected void lkbLitTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad antigua";
            upTema.Update();
        }

        protected void lkbLitTema005_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad media";
            upTema.Update();
        }

        protected void lkbLitTema006_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad moderna I";
            upTema.Update();
        }

        protected void lkbLitTema007_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad moderna II";
            upTema.Update();
        }

        protected void lkbLitTema008_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Edad contemporánea";
            upTema.Update();
        }

        protected void lkbLitTema009_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Vanguardias";
            upTema.Update();
        }

        protected void lkbLitTema010_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Literatura/banner-lit.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Literatura/Tema1/index.html";
            lblTema.Text = "Literatura mexicana";
            upTema.Update();
        }

        #endregion literatura

        #region filosofia

        protected void lkbFilTema001_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Filosofia/banner-filo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "Generalidades de la filosofía";
            upTema.Update();
        }

        protected void lkbFilTema002_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Filosofia/banner-filo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "La filosofía y su relación contra áreas culturales";
            upTema.Update();
        }

        protected void lkbFilTema003_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Filosofia/banner-filo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "Problemas filosóficos planeados en la Grecia antigua";
            upTema.Update();
        }

        protected void lkbFilTema004_Click(object sender, EventArgs e)
        {
            divTema.Visible = true;

            imgTema.Attributes["src"] = "Material/Universidad/Filosofia/banner-filo.jpg";
            iframeTema.Attributes["src"] = "Material/Universidad/Filosofia/Tema1/index.html";
            lblTema.Text = "Pensamiento filosófico en Europa en la época medieval";
            upTema.Update();
        }

        #endregion filosofia

        protected void btnGuardaRespuesta_Click(object sender, EventArgs e)
        {
            if (radioR1.Checked == true || radioR2.Checked == true || radioR3.Checked == true || radioR4.Checked == true)
            {
                int intRespuesta = 0;
                if (radioR1.Checked)
                {
                    intRespuesta = 1;
                    intRespuesta = int.Parse(lblResp001.Text);
                }
                else if (radioR2.Checked)
                {
                    intRespuesta = 1;
                    intRespuesta = int.Parse(lblResp002.Text);
                }
                else if (radioR3.Checked)
                {
                    intRespuesta = 1;
                    intRespuesta = int.Parse(lblResp003.Text);
                }
                else if (radioR4.Checked)
                {
                    intRespuesta = 1;
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
                            UsuarioID = usr_ID,
                            MateriaTemaPreguntaRespuestaID = intRespuesta,
                            MateriaTemaPreguntaID = FiltroMateriaTemaPreguntaID,
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
                            UsuarioID = usr_ID,
                            MateriaTemaPreguntaRespuestaID = intRespuesta,
                            MateriaTemaPreguntaID = FiltroMateriaTemaPreguntaID,
                            FechaRegistro = DateTime.Now
                        };

                        i_registro.catMateriaTemaPreguntaRespuestaBitacora.Add(dn_usr);

                        i_registro.SaveChanges();
                    }
                }

                try
                {
                    var seed = Environment.TickCount;
                    var random = new Random(seed);
                    int fn;

                    for (int i = 1; i <= 15; i++)
                    {
                        fn = random.Next(1, 14);

                        if (fn == FiltroMateriaTemaPreguntaID)
                        {
                        }
                        else
                        {
                            FiltroMateriaTemaPreguntaID = fn;
                        }
                    }

                    using (db_imEntities mMateria = new db_imEntities())
                    {
                        var iRespuesta = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                          where a.UsuarioID == usr_ID
                                          select a
                                         ).ToList();

                        if (iRespuesta.Count == 14)
                        {

                            var iPuntuacón = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                              join b in mMateria.catMateriaTemaPreguntaRespuesta on a.MateriaTemaPreguntaRespuestaID equals b.MateriaTemaPreguntaRespuestaID
                                              join c in mMateria.catMateriaTemaPregunta on a.MateriaTemaPreguntaID equals c.MateriaTemaPreguntaID
                                              where b.Respuesta == true
                                              where a.UsuarioID == usr_ID
                                              select a).ToList();


                            int intPunt = iPuntuacón.Count;
                            int intCal = (intPunt * 10) / 14;

                            i2.Attributes["style"] = "color: green";
                            lblPuntuacion.Text = intCal.ToString();
                            upTema001.Update();
                            upTema.Update();
                            Mensaje("Cuestionario Terminado");
                            carComentario.Visible = false;

                            cardPreguntas.Visible = false;

                            var iMateria = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                            join b in mMateria.catMateriaTemaPreguntaRespuesta on a.MateriaTemaPreguntaRespuestaID equals b.MateriaTemaPreguntaRespuestaID
                                            join c in mMateria.catMateriaTemaPregunta on a.MateriaTemaPreguntaID equals c.MateriaTemaPreguntaID

                                            where a.UsuarioID == usr_ID

                                            select new
                                            {
                                                c.MateriaTemaPregunta,
                                                b.MateriaTemaPreguntaRespuesta,
                                                b.Respuesta,
                                                b.Justificacion
                                            }
                                               ).ToList();

                            if (iMateria.Count == 0)
                            {
                            }
                            else
                            {
                                gvResultados.DataSource = iMateria;
                                gvResultados.DataBind();
                                gvResultados.Visible = true;
                            }
                            cardResultado.Visible = true;
                            upResultado.Update();
                            upcardPreguntas.Update();
                        }
                        else
                        {
                            var iMateria = (from a in mMateria.catMateriaTema
                                            join b in mMateria.catMateriaTemaPregunta on a.MateriaTemaID equals b.MateriaTemaID
                                            where a.MateriaID == 1
                                            where a.MateriaTemaID == FiltroMateriaTemaID
                                            where b.MateriaTemaPreguntaID == FiltroMateriaTemaPreguntaID
                                            select new
                                            {
                                                b.MateriaTemaPreguntaID,
                                                b.MateriaTemaPregunta
                                            }
                                               ).FirstOrDefault();

                            lblPregunta.Text = iMateria.MateriaTemaPregunta;

                            var iRespuestaff = (from a in mMateria.catMateriaTemaPreguntaRespuesta
                                                where a.MateriaTemaPreguntaID == FiltroMateriaTemaPreguntaID
                                                select a
                                               ).ToList();
                            int f1 = 1;
                            foreach (var iResp in iRespuestaff)
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
                        }
                        radioR1.Checked = false;
                        radioR2.Checked = false;
                        radioR3.Checked = false;
                        radioR4.Checked = false;

                        upcardPreguntas.Update();
                    }
                }
                catch
                {
                    Mensaje("Cuestionario Terminado");
                    carComentario.Visible = false;

                    cardPreguntas.Visible = false;

                    using (db_imEntities mMateria = new db_imEntities())
                    {
                        var iMateria = (from a in mMateria.catMateriaTemaPreguntaRespuestaBitacora
                                        join b in mMateria.catMateriaTemaPreguntaRespuesta on a.MateriaTemaPreguntaRespuestaID equals b.MateriaTemaPreguntaRespuestaID
                                        join c in mMateria.catMateriaTemaPregunta on a.MateriaTemaPreguntaID equals c.MateriaTemaPreguntaID

                                        where a.UsuarioID == usr_ID

                                        select new
                                        {
                                            c.MateriaTemaPregunta,
                                            b.MateriaTemaPreguntaRespuesta,
                                            b.Respuesta,
                                            b.Justificacion
                                        }
                                           ).ToList();

                        if (iMateria.Count == 0)
                        {
                        }
                        else
                        {
                            gvResultados.DataSource = iMateria;
                            gvResultados.DataBind();
                            gvResultados.Visible = true;
                        }
                    }



                    cardResultado.Visible = true;
                    upResultado.Update();
                    upcardPreguntas.Update();
                }
            }
        }

        protected void lkbSalir_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("acceso.aspx");
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
            divTema.Visible = true;
            lblPuntuacion.Text = "0";
            imgTema.Visible = false;
            ebbokTema.Visible = false;
            carComentario.Visible = false;
            comment1.Value = string.Empty;
            cardPreguntas.Visible = false;
            cardResultado.Visible = false;
            upResultado.Update();
            upTema.Update();

            cardVideoClases.Visible = true;
            upVideoClases.Update();
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(comment1.Value))
            {
                Mensaje("Error");
            }
            else
            {
                using (db_imEntities mMateria = new db_imEntities())
                {
                    var iRespuesta = (from a in mMateria.catMateriaTemaSintesis
                                      where a.UsuarioID == usr_ID
                                      select a
                                       ).ToList();

                    if (iRespuesta.Count == 0)
                    {
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
                        ebbokTema.Disabled = true;
                        cardPreguntas.Visible = true;

                        try
                        {
                            var seed = Environment.TickCount;
                            var random = new Random(seed);

                            for (int i = 1; i <= 14; i++)
                            {
                                FiltroMateriaTemaPreguntaID = random.Next(1, 14);
                            }
                            FiltroMateriaTemaID = 1;
                            //var iMateriaL = (from a in mMateria.catMateriaTema
                            //                 join b in mMateria.catMateriaTemaPregunta on a.MateriaTemaID equals b.MateriaTemaID
                            //                 where a.MateriaID == 1
                            //                 where a.MateriaTemaID == FiltroMateriaTemaID
                            //                 select new
                            //                 {
                            //                     b.MateriaTemaPreguntaID,
                            //                     b.MateriaTemaPregunta
                            //                 }
                            //                   ).ToList();

                            //var iMateriaN = from items in iMateriaL select new { PreguntaID = i++, Pregunta = items.MateriaTemaPregunta };

                            var iMateria = (from a in mMateria.catMateriaTema
                                            join b in mMateria.catMateriaTemaPregunta on a.MateriaTemaID equals b.MateriaTemaID
                                            where a.MateriaID == 1
                                            where a.MateriaTemaID == FiltroMateriaTemaID
                                            where b.MateriaTemaPreguntaID == FiltroMateriaTemaPreguntaID
                                            select new
                                            {
                                                b.MateriaTemaPreguntaID,
                                                b.MateriaTemaPregunta
                                            }
                                               ).FirstOrDefault();

                            lblPregunta.Text = iMateria.MateriaTemaPregunta;

                            var iRespuestaf = (from a in mMateria.catMateriaTemaPreguntaRespuesta
                                               where a.MateriaTemaPreguntaID == FiltroMateriaTemaPreguntaID
                                               select a
                                               ).ToList();
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
                        }
                        catch
                        {
                        }
                    }
                    else
                    {
                        Mensaje("Solo se puede realizar 1 intento.");
                    }
                }
            }
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
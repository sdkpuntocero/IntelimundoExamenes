﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntelimundoExamenes
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Mensaje("Hola");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        private void Mensaje(string contenido)
        {
           
        }
    }
}
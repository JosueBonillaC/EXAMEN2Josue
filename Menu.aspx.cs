using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlusuarios.Insert();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sqlusuarios.Delete();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            sqlusuarios.Update();   
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            sqlequipos.Insert();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            sqlequipos.Delete();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            sqlequipos.Dispose();   
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            sqlequipos.Update();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            sqlrepa.Insert();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            sqlrepa.Delete();
        }

        protected void Butto11_Click(object sender, EventArgs e)
        {
            sqlrepa.Dispose();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            sqlrepa.Update();
        }
    }
}
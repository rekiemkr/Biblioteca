using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_AgregarAutores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            if (((EUsuario)Session["user"]).Id_rol != 2)
                Response.Redirect("Login.aspx");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        EAutor eAutor = new EAutor();
        eAutor.Nombre = TB_Nombre.Text.ToString();
        eAutor.Año = Int32.Parse(TB_Fecha.Text.ToString());
        eAutor.Nacionalidad = Int32.Parse(DDL_Country.Text.ToString());
        if (RB_Masculino.Checked == true)
            eAutor.Sexo = 'M';
        if (RB_Femenino.Checked == true)
            eAutor.Sexo = 'F';
        if (RB_Femenino.Checked == false && RB_Masculino.Checked == false)
        {
            this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Seleccion por lo menos un genero');</script>"));
            eAutor.Sexo = '0';


        }
        else
        {
            
            String duser = Session["nombre"].ToString();
            DAutores dAutor = new DAutores();
            DataTable dataAutor = dAutor.AgregarAutores(eAutor, duser);
            if (dataAutor.Rows.Count > 0)
            {
                this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Ya existe este autor');</script>"));
            }
            TB_Fecha.Text = "";
            TB_Nombre.Text = "";
            DDL_Country.SelectedValue = "1";

            RB_Masculino.Checked = false;
            RB_Femenino.Checked = false;
        }


    }
}
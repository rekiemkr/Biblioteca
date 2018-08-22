using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_VentanaUsuario : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.Cache.SetNoStore();
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
            LB_NombreUser.Text = "Bienvenido " + Session["nombre"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");

    }
}

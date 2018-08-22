using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_Parametrizar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            if (((EUsuario)Session["user"]).Id_rol != 1)
                Response.Redirect("Login.aspx");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        EParametrizar eParametros = new EParametrizar();
        eParametros.Dias = Int32.Parse(TB_Dias.Text.ToString());
        eParametros.Valor = Int64.Parse(TB_Valor.Text.ToString());
        eParametros.LibrosPrest = Int32.Parse(TB_Libros.Text.ToString());

        DAParametrizar dParametrizar = new DAParametrizar();
        dParametrizar.AgregarParametrizacion(eParametros);

        TB_Dias.Text = "";
        TB_Libros.Text = "";
        TB_Valor.Text = "";
        GridView1.DataBind();
    }
}
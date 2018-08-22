using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_ManejarCategoria : System.Web.UI.Page
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

   if (GridView1.Rows.Count > 0)
        {
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ECategoria eCat = new ECategoria();
        eCat.Nombre = TB_Categoria.Text.ToString();
        String tuser = Session["nombre"].ToString();
        DACategoria dCat = new DACategoria();

        DataTable dataCat = dCat.AgregarCategoria(eCat, tuser);
        Response.Redirect("ManejarCategoria.aspx");
        }
    }
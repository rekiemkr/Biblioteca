using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_ManejarElemento : System.Web.UI.Page
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
        if (GV_Elementos.Rows.Count > 0)
        {
            GV_Elementos.UseAccessibleHeader = true;
            GV_Elementos.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
    protected void ODS_Autores_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {
    }


    protected void GV_Elementos_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Redirect("ManejarElemento.aspx");
    }
}
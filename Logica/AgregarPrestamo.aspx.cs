using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_AgregarPrestamo : System.Web.UI.Page
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            EPrestamo ePres = new EPrestamo();
            int num = Convert.ToInt32(e.CommandArgument);
            ePres.Id = Int32.Parse(((Label)GridView1.Rows[num].FindControl("L_id")).Text);
            ePres.Admin_id = Int32.Parse(Session["id"].ToString());
            ePres.Estado_id = 1;
            DAPrestamo dPres = new DAPrestamo();
            String user = Session["nombre"].ToString();
            dPres.RegistrarPrestamo(ePres, user);
            GridView1.Rows[num].Visible = false;
        }
    }
}
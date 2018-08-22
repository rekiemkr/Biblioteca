using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_DevolverPrestamos : System.Web.UI.Page
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
           
            int num = Convert.ToInt32(e.CommandArgument);
            int _id = Int32.Parse(((Label)GridView1.Rows[num].FindControl("Label1")).Text);
            DAPrestamo daPres = new DAPrestamo();
            DataTable tPres = new DataTable();
            daPres.DevolverPrestamo(_id);
            GridView1.Rows[num].Visible = false;
            if (tPres.Rows.Count>0)
            {
                this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('El usuario fue desbloqueado ya puede seguir disfrutando de nuestros libros');</script>"));

            }
        }
    }
}
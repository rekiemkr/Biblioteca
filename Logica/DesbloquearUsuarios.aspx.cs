using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_DesbloquearUsuarios : System.Web.UI.Page
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
            Int32 ele = 0;
            int cont = 0;
            EPrestamo ePres = new EPrestamo();
            int num = Convert.ToInt32(e.CommandArgument);
            ePres.Usuario_id= Int32.Parse(((Label)GridView1.Rows[num].FindControl("Label1")).Text);
            DAUsuario dUser = new DAUsuario();
            String user = Session["nombre"].ToString();

            DataTable delemento = new DataTable();
            delemento = dUser.SaldarMultas(ePres.Usuario_id, user);

            DAElemento dElem = new DAElemento();
            GridView1.Rows[num].Visible = false;
           
            for (int x = 0; x < delemento.Rows.Count; x++)
            {
                ele = Int32.Parse(delemento.Rows[x]["prs"].ToString());
                dElem.DescontarElemento(ele);
            }
                
        }
    }
}
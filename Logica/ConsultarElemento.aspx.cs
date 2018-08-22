using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_ConsultarElemento : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            if (((EUsuario)Session["user"]).Id_rol != 3)
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
  
        if (e.CommandName == "Select") {
            EPrestamo ePres = new EPrestamo();
            int num= Convert.ToInt32(e.CommandArgument);
            ePres.Id_elemento =Int32.Parse(((Label)GridView1.Rows[num].FindControl("Label1")).Text);
            ePres.Usuario_id= Int32.Parse(Session["id"].ToString());
            ePres.Estado_id = 4;
            DAPrestamo dPres = new DAPrestamo();
            String user = Session["nombre"].ToString();
            DataTable  tPres = dPres.PrestamoUsuario(ePres,user);
            
            if (tPres.Rows.Count == 2) {
                this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Tiene el numero maximo de libros permitidos en su poder por favor devuelvalos antes del plazo indicado');</script>"));
            
            }
            if (tPres.Rows.Count == 3)
            {
                this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Excedio el numero de libros a solicitar');</script>"));

            }
            if (tPres.Rows.Count == 1)
            {
                this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('No puede solicitar libros hasta que cancele todas sus deudas con la biblioteca paulo coelo');</script>"));

            }
            if (tPres.Rows.Count == 4)
            {
                this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('No hay mas libros de estos');</script>"));

            }
             
        }
    }
    protected void ODS_Autores_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {
    
    }
}
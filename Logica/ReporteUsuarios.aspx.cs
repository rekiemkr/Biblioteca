using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_ReporteUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CRS_Usuarios.ReportDocument.SetDataSource(obtenerUsuario());
        CRV_Usuarios.ReportSource = CRS_Usuarios;
        Response.Cache.SetNoStore();
        if (Session["user"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            if (((EUsuario)Session["user"]).Id_rol != 1)
                Response.Redirect("Login.aspx");

        } 

    }
    protected DataSet obtenerUsuario()
    {
        Usuarios datos = new Usuarios();
        DAUsuario Usuario = new DAUsuario();
        DataTable resultado = Usuario.obtener_usuario();
        DataTable data = new DataTable(); //dt
        data = datos.Usuario;
        DataRow fila;

        for (int i = 0; i < resultado.Rows.Count; i++)
        {
            fila = data.NewRow();

            fila["Id"] = Int32.Parse(resultado.Rows[i]["id"].ToString());
            fila["Nombre"] = resultado.Rows[i]["nombre"].ToString();
            fila["UserName"] = resultado.Rows[i]["nickname"].ToString();
            fila["rol"] = resultado.Rows[i]["rol_name"].ToString();
            fila["estado"] = resultado.Rows[i]["estado_name"].ToString();

            data.Rows.Add(fila);
        }


        return datos;

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_ReporteMultasMes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CRS_MultaMes.ReportDocument.SetDataSource(obtenerMultasMes());
        CRV_MultaMes.ReportSource = CRS_MultaMes;
        Response.Cache.SetNoStore();
        if (Session["user"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            if (((EUsuario)Session["user"]).Id_rol != 1)
                Response.Redirect("Login.aspx");

        } 
    }
    protected DataSet obtenerMultasMes() {
        MultasMensuales datos = new MultasMensuales();
        DAMultas multas = new DAMultas();
        DataTable resultado = multas.TraerMultasMensuales();
        DataTable data = new DataTable();
        data = datos.MultaMes;
        DataRow fila;

        for (int i = 0; i < resultado.Rows.Count; i++)
        {
            fila = data.NewRow();

            fila["Fecha"] = DateTime.Parse(resultado.Rows[i]["fecha"].ToString());
            fila["Nombre Usuario"] = resultado.Rows[i]["nombre"].ToString();
            fila["Elemento"] = resultado.Rows[i]["elemento"].ToString();
            fila["Dias Mora"] = resultado.Rows[i]["dias_mora"].ToString();
            fila["Fecha de pago"] = DateTime.Parse(resultado.Rows[i]["fecha_pago"].ToString());
            fila["valor"] = resultado.Rows[i]["valor"].ToString();

            data.Rows.Add(fila);
        }


        return datos;
    }
}
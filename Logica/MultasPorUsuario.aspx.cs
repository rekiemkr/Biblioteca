using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_MultasPorUsuario : System.Web.UI.Page
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
       
        CRS_Multas.ReportDocument.SetDataSource(obtenerMultas());
    }
    protected DataSet obtenerMultas() {
        int id = Int32.Parse(Session["id"].ToString());
        Multas datos = new Multas();
        DAMultas dMultas = new DAMultas();
        DataTable resultado = dMultas.TraerMultas(id);
        DataTable data = new DataTable();
        data = datos._Multas;
        DataRow fila;

        for (int i = 0; i < resultado.Rows.Count; i++)
        {
            fila = data.NewRow();

            fila["Id"] = Int32.Parse(resultado.Rows[i]["id"].ToString());
            fila["Fecha"] = DateTime.Parse(resultado.Rows[i]["fecha"].ToString());
            fila["Nombre del usuario"] = resultado.Rows[i]["nombre_usuario"].ToString();
            fila["Nombre del elemento"] = resultado.Rows[i]["nombre_elemento"].ToString();
            fila["Username del usuario"] = resultado.Rows[i]["nickname"].ToString();
            fila["Valor"] = resultado.Rows[i]["valor"].ToString();
            fila["Dias de mora"] = resultado.Rows[i]["dias_mora"].ToString();
            data.Rows.Add(fila);
        }


        return datos;

    }
}
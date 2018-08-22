using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_AgregarElemento : System.Web.UI.Page
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
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;
        
        String nombreArchivo = System.IO.Path.GetFileName(FU_Imagen.PostedFile.FileName);
        string extension = System.IO.Path.GetExtension(FU_Imagen.PostedFile.FileName);
        string tiempo = DateTime.Now.ToFileTime().ToString() + extension;

        string saveLocation = (Server.MapPath("~\\Archivos\\Imagenes")) + "_" + tiempo;
        if (!(extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png")))
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Suba un archivo valido(.jpge .png .jgp)');</script>");
            return;
        }

        try
        {
            FU_Imagen.PostedFile.SaveAs(saveLocation);
        }
        catch (Exception exc)
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Error: ');</script>");
            return;
        }

        EElemento elemento = new EElemento();

        elemento.Nombre = TB_Nombre.Text.ToString();
        elemento.Editorial = TB_Editorial.Text.ToString();
        elemento.Año = Int32.Parse(TB_Año.Text.ToString());
        elemento.Tipo_id = Int32.Parse(DDL_Tipo.Text.ToString());
        elemento.Url = "~\\Archivos\\" + "Imagenes"+ "_" + tiempo;
        elemento.Cantidad = Int32.Parse(TB_Cantidad.Text.ToString());
        elemento.Reserva = Int32.Parse(TB_Reserva.Text.ToString());
        if (elemento.Reserva <= elemento.Cantidad)
        {
            DAElemento cElemento = new DAElemento();

            String tuser = Session["nombre"].ToString();
            DataTable dataElemento = cElemento.AgregarElementos(elemento, tuser);

            EAutor autor = new EAutor();
            ECategoria categoria = new ECategoria();
            DAutores dautor = new DAutores();
            DACategoria dcategoria = new DACategoria();
            if (dataElemento.Rows.Count > 0)
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El elemento ya esta registrado ');</script>");
            }else{
            foreach (ListItem li in CBL_Autores.Items)
            {

                if (li.Selected == true)
                {
                    autor.Id = Int32.Parse(li.Value);
                    dautor.AgregarRAutores(elemento.Nombre, autor.Id, tuser);

                }
            }
            foreach (ListItem li in CBL_Categorias.Items)
            {

                if (li.Selected == true)
                {
                    categoria.Id = Int32.Parse(li.Value);
                    dcategoria.AgregarRCategorias(elemento.Nombre, categoria.Id, tuser);
                }
            }
            }
            TB_Nombre.Text= "";
            TB_Editorial.Text = "";
            TB_Año.Text = "";
            FU_Imagen.Attributes.Clear();
            TB_Cantidad.Text = "";
            TB_Reserva.Text = "";
            foreach (ListItem li in CBL_Autores.Items)
                li.Selected = false;

            foreach (ListItem li in CBL_Categorias.Items)
                li.Selected = false;

          
        
        }
        else {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El numero de reserva no puede exceder al de cantidad ');</script>");
        
        }



    }
}
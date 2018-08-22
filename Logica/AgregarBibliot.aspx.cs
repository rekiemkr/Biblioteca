using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_AgregarBibliot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
        if (Session["user"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            if (((EUsuario)Session["user"]).Id_rol!= 1)
                Response.Redirect("Login.aspx");

        }
    }
    protected void B_Agregar_Click(object sender, EventArgs e)
    {
        String tuser;
        EUsuario eUser = new EUsuario();
        eUser.Nombre = TB_Nombre.Text.ToString();
        eUser.Nickname = TB_Nickname.Text.ToString();
        eUser.Clave = TB_Clave.Text.ToString();
        eUser.Telefono = TB_Telefono.Text.ToString();
        eUser.Correo = TB_Correo.Text.ToString();
        eUser.Id_rol = 2;
        eUser.Id_estado =3;
        tuser = Session["nombre"].ToString();

        DAUsuario dUser = new DAUsuario();
        DataTable dataUser = dUser.RegistrarUsuario(eUser, tuser);
        if (dataUser.Rows.Count > 0){
            this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Ya existe este userName');</script>"));
        }
        TB_Clave.Text = "";
        TB_Correo.Text = "";
        TB_Nickname.Text = "";
        TB_Nombre.Text = "";
        TB_Telefono.Text = "";
        

    }
}
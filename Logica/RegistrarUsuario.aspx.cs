using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_RegistrarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        EUsuario eUser = new EUsuario();
        eUser.Nombre = TB_Nombre.Text.ToString();
        eUser.Nickname = TB_Nickname.Text.ToString();
        eUser.Clave = TB_Clave.Text.ToString();
        eUser.Correo = TB_Correo.Text.ToString();
        eUser.Telefono = TB_Telefono.Text.ToString();
        eUser.Id_estado = 1;
        eUser.Id_rol = 3;
        String tuser= "";
        DAUsuario dUser = new DAUsuario();
        DataTable dataUser = dUser.RegistrarUsuario(eUser,tuser);
        if (dataUser.Rows.Count > 0){
            this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Ya existe este userName');window.location=\"Login.aspx\"</script>"));
        }

        TB_Clave.Text = "";
        TB_Correo.Text = "";
        TB_Nickname.Text = "";
        TB_Nombre.Text = "";
        TB_Telefono.Text = "";
        }
    protected void TB_Nombre_TextChanged(object sender, EventArgs e)
    {

    }
}
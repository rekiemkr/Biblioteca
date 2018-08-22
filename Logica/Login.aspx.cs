using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Presentacion_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        EUsuario eUser = new EUsuario();
        eUser.Nickname = TB_Nickname.Text.ToString();
        eUser.Clave = TB_Clave.Text.ToString();
        DAUsuario dUser = new DAUsuario();
        DataTable dataUser = dUser.login(eUser);
        if (dataUser.Rows.Count > 0)
        { //verificar si ya hay algun registro;
            eUser.Id = Int32.Parse(dataUser.Rows[0]["usuario_id"].ToString());
            eUser.Id_rol = Int32.Parse(dataUser.Rows[0]["rol_id"].ToString());
            eUser.Nombre = dataUser.Rows[0]["nombre"].ToString();
            Session["user"] = eUser;
            Session["nombre"] = eUser.Nickname;
            Session["id"] = eUser.Id;

            if (eUser.Id_rol == 1)
            {//si el usuario es de tipo administrador lo redirige a la pagina principal del administrador :v
                Response.Redirect("AgregarBibliot.aspx");//redirigir a un formulario
            }
            else
                if (eUser.Id_rol == 2)
                {
                    Response.Redirect("AgregarAutores.aspx");
                }else
                  if (eUser.Id_rol == 3)
                   {
                     Response.Redirect("ConsultarElemento.aspx");
                   }
            else
                Response.Redirect("Login.aspx");
                 
        }else
            this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Verifique el UserName y la Clave');window.location=\"Login.aspx\"</script>"));

            //Response.Redirect("login.aspx");

        }

    }
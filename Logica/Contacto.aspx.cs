using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_Contacto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String asunto;
        String correo;
        String mensaje;
        asunto = TB_Asunto.Text.ToString() ;
        correo = TB_Correo.Text.ToString();
        mensaje =TB_Mensaje.Text.ToString();

        Email eMail = new Email();
        eMail.EnviarEmail(asunto,correo,mensaje);

        this.RegisterStartupScript("mensaje", ("<script type='text/javascript'>alert('Su mensaje se ha enviado tendra respuesta muy pronto');</script>"));

        TB_Asunto.Text = "";
        TB_Correo.Text = "";
        TB_Mensaje.Text = "";
    }
}
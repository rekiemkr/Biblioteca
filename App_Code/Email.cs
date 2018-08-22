using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;
using System.Net.Mime;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

/// <summary>
/// Descripción breve de Email
/// </summary>
public class Email
{
    public Email()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public void EnviarEmail(String Asunto, String Correo, String Mensaje)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.From = new System.Net.Mail.MailAddress("aquilescanto100@gmail.com");
            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential(mail.From.Address, "gatolopez123");
            smtp.Host = "smtp.gmail.com";

            //recipient
            mail.To.Add(new MailAddress("aquilescanto2@gmail.com"));

            mail.IsBodyHtml = true;
            string st = Mensaje;
            mail.Subject = Asunto + " de " + Correo;
            mail.Body = st;
            smtp.Send(mail);
        
        }
        catch (Exception e)
        {
            Console.WriteLine("Not Sent");
        }
    }
}

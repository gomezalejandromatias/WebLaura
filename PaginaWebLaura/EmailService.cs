using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI.WebControls;

namespace PaginaWebLaura
{
    public class EmailService
    {

        private SmtpClient server;
        private MailMessage email;

        public EmailService()
        {

            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;

            server = new SmtpClient();
            server.Host = "smtp.gmail.com";
            server.Port = 587;
            server.EnableSsl = true;
            server.UseDefaultCredentials = false;

            server.Credentials = new NetworkCredential(
                "mati.gorriti1@gmail.com",
                "cvxdeamuqymdpfig"
            );


        }

        public void armarcorreo(string emaildestino)
        {
            email = new MailMessage();
            email.From = new MailAddress("mati.gorriti1@gmail.com");
            email.To.Add(emaildestino);
            email.Subject = "Confirmación de contacto";
            email.IsBodyHtml = true;
            email.Body = "Hola, recibimos tu mensaje. Gracias por comunicarte.";


        }

        public void RecibirEmailUsuario(string MensajeUsuario, string emailusuario, string NombreApellido, string Telefono)
        {

            email = new MailMessage();
            email.From = new MailAddress("mati.gorriti1@gmail.com");
            email.To.Add("mati.gorriti1@gmail.com");
            email.Subject = "Email Desde La Web:" + NombreApellido;
            email.IsBodyHtml = true;
            email.Body = "<b>Nombre:</b> " + NombreApellido + "<br>" +
        "<b>Email:</b> " + emailusuario + "<br>" +
        "<b>Teléfono:</b> " + Telefono + "<br><br>" +
        "<b>Mensaje:</b><br>" + MensajeUsuario;

            ///Se responde al usuario automáticamente/Con esto:
             // Respondés directo → 1 click

            email.ReplyToList.Add(new MailAddress(emailusuario));


        }

        public void enviaremail()
        {

            try
            {

                server.Send(email);

            }
            catch (Exception ex)
            {

                throw new Exception("Error al enviar el email: " + ex.Message);
            }



        }

        public void RecibirEmail()
        {


            try
            {
                server.Send(email);
            }
            catch (Exception ex)
            {

                throw new Exception("Error al enviar el email: " + ex.Message);
            }


        }


    }
}
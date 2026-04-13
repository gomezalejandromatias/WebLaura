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

            server = new SmtpClient();
            server.Credentials = new NetworkCredential("mati.gorriti1@gmail.com", "etcejushdvtkxcsl");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";



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


    }
}
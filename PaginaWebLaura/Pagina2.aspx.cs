using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaWebLaura
{
    public partial class Pagina2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {

            lblEmail.Visible = false;


            }
        }

        protected void btnEnviarMensaje_Click(object sender, EventArgs e)
        {
            EmailService emailService = new EmailService();
            EmailService recibiremailusuario = new EmailService();



            try
            {
                // mail al usuario
                emailService.armarcorreo(txtEmail.Text);
                emailService.enviaremail();

                // mail que te llega a vos
                recibiremailusuario.RecibirEmailUsuario(
                    txtMultiline.Text,
                    txtEmail.Text,
                    txtNombreApellido.Text,
                    txtCelular.Text
                );
                recibiremailusuario.RecibirEmail();

            }
            catch (Exception ex)
            {

                throw ex;
            }

            lblEmail.Visible = true;

            Borrar();



        }

        public void Borrar()
        {


            txtMultiline.Text = "";
            txtNombreApellido.Text = "";
            txtCelular.Text = "";
            txtEmail.Text = "";
            lblEmail.Visible = false;

        }
    }
}
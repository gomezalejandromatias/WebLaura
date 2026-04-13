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

        }

        protected void btnEnviarMensaje_Click(object sender, EventArgs e)
        {
            EmailService emailService = new EmailService();

                emailService.armarcorreo(txtEmail.Text);
            try
            {

                emailService.enviaremail();

            }
            catch (Exception ex)
            {

                throw ex;
            }



        }
    }
}
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="PaginaWebLaura.Pagina2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2>Contactos E informacion</h2>

    <!---diseño para que la foto quede abajo del texto background-->
    <div style="background-image: url('Fotos/familia.jpg'); background-size: cover; background-position: center; padding: 150px 150px; color: white; text-align: center;">
        <div style="background: rgba(0,0,0,0.5); padding: 20px; color: white;">

            <h2>Apoyo escolar personalizado "Seño Lau"</h2>
            <p>
                Celular: <a href="https://wa.me/5491134209226?text=Hola%20quiero%20consultar%20por%20clases" target="_blank">1134209226
                  </a>
            </p>
            <a href="https://www.facebook.com/laura.quevedo.98" target="_blank">📘 Facebook</a>
            <a href="https://www.instagram.com/lau_queved/" target="_blank">📸 Instagram</a>

        </div>





        <!--aca se pone el txt nombre y apellido-->
    </div>
    <h2>Dejenos Su Mensaje</h2>
    <asp:Label Text="Nombre y Apellido" runat="server" />
    <asp:TextBox ID="txtNombreApellido" runat="server" />
    <div>
        <!---aca se pone el text box de contacto celular-->
        <div>
            <asp:Label Text="Celular" runat="server" />
            <asp:TextBox ID="txtCelular" runat="server" />

        </div>
        <!---aca el text box de eamil--->

        <div>
            <asp:Label Text="Email" runat="server" />
            <asp:TextBox ID="txtEmail" runat="server" />
        </div>
        <!--aca va txtde mensaje-->
        <div>
            <asp:Label Text="Escriba El Mensaje Se Respondera Ala Brevedad" runat="server" />

        </div>
        <!---aca se pone text box multiline apara que el suario escriba lo que quiera--->
        <div>
            <asp:TextBox ID="txtMultiline" TextMode="MultiLine" Rows="8" runat="server" />

        </div>
        <!--aca va el boton de mandar mensaje-->

        <div>

            <asp:Button ID="btnEnviarMensaje" Text="Enviar Mensaje" runat="server" OnClick="btnEnviarMensaje_Click" />

        </div>
        <!---aca pongo el label de msjs de exito-->

        <asp:Label ID="lblEmail" Text="Email recibido y Mandado con exito" runat="server" />
        <div>
        </div>

    </div>


</asp:Content>

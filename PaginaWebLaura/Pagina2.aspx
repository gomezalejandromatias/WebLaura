<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="PaginaWebLaura.Pagina2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <!--aca cambia  el color de fondo de la pantalla-->
        

    <style>
        body {
            background-color: beige
        }

      
    </style>



    <!--titulo princippal con div-->
    <div class="row mb-5 ">
        <h2 class=" text-success">Contactos E informacion</h2>

    </div>

    <!---diseño para que la foto quede abajo del texto background-->
    <div style="background-image: url('Fotos/familia.jpg'); background-size: cover; background-position: center; padding: 150px 150px; color: white; text-align: center;">
        <div style="background: rgba(0,0,0,0.5); padding: 20px; color: white;">

            <h2 class=" text-info">Apoyo escolar personalizado "Seño Lau"</h2>
            <p style="color: lightpink">
                Celular: <a href="https://wa.me/5491134209226?text=Hola%20quiero%20consultar%20por%20clases" class=" text-light" target="_blank">1134209226
                </a>
            </p>
            <a style="color: lightpink" href="https://www.facebook.com/laura.quevedo.98" target="_blank">📘 Facebook</a>
            <a style="color: lightpink" href="https://www.instagram.com/lau_queved/" target="_blank">📸 Instagram</a>

        </div>





    </div>

    <!--titulo y su div-->
    <div class=" row mb-3">

        <h2 class=" text-success">Dejenos Su Mensaje</h2>
    </div>



    <!--div contenedor de lblnombre y apellido y sus texbox-->
    <div class="row mb-3">

        <!--aca espacio entre lblnombre y su texbox-->
        <div class=" col-md-2 text-primary">
            <asp:Label Text="Nombre y Apellido" Style="font-family: Arial; letter-spacing: 1px;" runat="server" />
        </div>

        <!--aca espacio entre lblnombre y su texbox-->
        <div class="col-md-6">
            <asp:TextBox ID="txtNombreApellido" CssClass="form-control rounded shadow-sm bg-white" runat="server" />

        </div>
        <!--aca finaliza ese div contenedor-->
    </div>


    <!--aca arranca el contenedor de celular-->
    <div class="row mb-3">

        <!---aca se pone el lbl de contacto celular-->

        <div class="col-md-2 text-primary">
            <!---aca arranca el div de lbl de  cel-->
            <asp:Label Text="Celular" Style="font-family: Arial; letter-spacing: 1px;" runat="server" />

        </div>
        <!--aca arranca el div del texbox celeular-->
        <div class="col-md-6">

            <asp:TextBox ID="txtCelular" CssClass="form-control rounded shadow-sm bg-white" runat="server" />

        </div>

        <!---aca finaliza el cnenedor de celular-->
    </div>







    <div>

        <!---- aca aranca div contenedor de email-->
        <div class="row mb-3">
            <!--aca arranca el div de lbl email-->
            <div class="col-md-2 text-primary">

                <asp:Label Text="Email" Style="font-family: Arial; letter-spacing: 1px;" runat="server" />

            </div>

            <!---aca el text box de eamil--->

            <div class="col-md-6">
                <asp:TextBox ID="txtEmail" CssClass="form-control rounded shadow-sm bg-white" runat="server" />
            </div>
            <!---aca finaliza el contendor div de email-->
        </div>



        <!---aca va el div contenedor de txtmultiline-->
        <div class="row mb-3 ">

            <!--aca va lbl mensaje-->
            <div class=" col-md-12 text-primary">
                <asp:Label Text="Escriba El Mensaje Se Respondera Ala Brevedad" Style="font-family: Arial; letter-spacing: 1px;" runat="server" />

            </div>
            <!---aca se pone text box multiline apara que el suario escriba lo que quiera--->
            <div class="col-md-12 mt-1">
                <asp:TextBox ID="txtMultiline" TextMode="MultiLine" CssClass="form-control rounded shadow-sm bg-white" Rows="8" runat="server" />

            </div>
            <!---aca finaliza el div contenedor del multiline-->
        </div>




        <!--aca va el boton de mandar mensaje-->

        <div>

            <asp:Button ID="btnEnviarMensaje" Text="Enviar Mensaje" CssClass=" btn btn-primary" runat="server" OnClick="btnEnviarMensaje_Click" />

        </div>
        <!---aca pongo el label de msjs de exito-->

        <asp:Label ID="lblEmail" Text="Email recibido y Mandado con exito" runat="server" />
        <div>
        </div>

    </div>


</asp:Content>

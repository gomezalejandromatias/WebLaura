<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="PaginaWebLaura.Pagina1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!--aca cambia  el color de fondo de la pantalla-->


    <style>
        body {
            background-color: beige
        }
    </style>

    <!--aca cambia  la lera de la pantalla-->
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
    <!--hasta aca-->


    <div>

        <h1>Hola Bienvenidos Soy La Seño "Lau"</h1>


    </div>



    <div style="background-image: url('Fotos/fondo 3.jpg'); background-size: cover; background-position: center; padding: 100px 100px; color: white; text-align: center;">
        <div style="background: rgba(0,0,0,0.5); padding: 20px; color: white;">

            <p>Aca Encontraras No Solo Un lugar Donde Aprenderas,Sino Un Lugar Donde Imaginar Sera Todo</p>


        </div>

    </div>
    <!----div padre que hace que cada uno se vea al lado del otro e flex lo hace posible-->
    <div style="display: flex; justify-content: center; gap: 20px;">





        <!---imagenes sobre matematicas con caruseleExample margin:100px lo baja si dejo auto al lado d emargin lo centra -->
        <div id="carouselExample" class=" carousel slide" data-bs-ride="carousel" style="width: 40%; margin: 20px;">
            <p>Ciencias Matematicas </p>

            <!---aca van la imagenes-->
            <div class=" carousel-inner">
                <!---carousel para div de la foto-->
                <div class="carousel-item active">

                    <img src="Fotos/Matematicas/NeneSumando.jpg" class=" d-block w-100" />

                </div>

                <!--div para cada carousel de cada foto-->
                <div class=" carousel-item">

                    <img src="Fotos/Matematicas/MaestraEnsenando.jpg" class="d-block w-100" />

                </div>
                <!--videos-->
                <div class="carousel-item">

                    <video class=" d-block w-100" controls>
                        <source src="Videos/VideoMtematico.mp4" type="video/mp4" />
                    </video>
                </div>


                <!--aca termina el div carousel -inner-->
            </div>

            <<!--botones para pasar la foto html prev-->
            <button class="carousel carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class=" carousel-control-prev-icon"></span>
            </button>

            <!--boton para pàsar la foto html con next-->
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">

                <span class="carousel-control-next-icon"></span>
            </button>

            <!--aca termina el carouselExample-->
        </div>

        <!--carousel para lengua-->
        <div id="carouselExampleLengua" class=" carousel slide" data-bs-ride="carousel" style="width: 40%; margin: 20px;">
            <p>Lengua y Literatura </p>

            <!--aca es carousel inner el que pone las fotos-->
            <div class=" carousel-inner">
                <!--div de la imagen item active-->
                <div class="carousel-item active">

                    <img src="Fotos/Lengua/MaestraHumana.jpg" class=" d-block w-100" />

                </div>
                <!--segunda foto sin active-->
                <div class="carousel-item">
                    <img src="Fotos/Lengua/MaestraLeyendo.jpg" class=" d-block w-100" />

                </div>
                <!--videos de lengua-->
                <div class="carousel-item">

                    <video class=" d-block w-100" controls>
                        <source src="Videos/Lengua.mp4" type="video/mp4" />

                    </video>

                </div>
                <!--aca termina el carousel inner-->
            </div>

            <!--boton para adelante-->
            <button class="carousel carousel-control-prev" type="button" data-bs-target="#carouselExampleLengua" data-bs-slide="prev">
                <span class=" carousel-control-prev-icon"></span>
            </button>
            <!--botton para atras-->
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleLengua" data-bs-slide="next">

                <span class="carousel-control-next-icon"></span>
            </button>




            <!--aca termina el carousel-->

        </div>

        <!--aca termina el div padre-->
    </div>



    <!--aca comienza el div padre de las fotos que le siguen historia y naturales con flex hace que se piongan uno al lado del otro-->

    <div style="display: flex; justify-content: center; gap: 20px;">

        <!--dvi carousel historia-->
        <div id="carouselHistoria" class=" carousel slide" data-bs-ride="carousel" style="width: 40%; margin: 20px;">


            <p>Historia </p>


            <!--aca van los div de los inner que hace que la foto quede-->
            <div class=" carousel-inner">
                <!--aca van las fotos -->


                <!--aca va la foto-->
                <div class=" carousel-item active">
                    <img src="Fotos/Historia/maestrahistoria1.jpg" class=" d-block w-100" />
                </div>
                <!--aca vala foto-->
                <div class="carousel-item">
                    <img src="Fotos/Historia/maestrahistroa.jpg" class=" d-block w-100" />
                </div>
                <!--aca va el video-->
                <div class=" carousel-item">
                    <video class=" d-block w-100" controls>
                        <source src="Videos/videohistoria.mp4" type="video/mp4" />
                    </video>

                </div>






                <!---aca termina el inner-->
            </div>



            <!--boton para adelante-->
            <button class="carousel carousel-control-prev" type="button" data-bs-target="#carouselHistoria" data-bs-slide="prev">
                <span class=" carousel-control-prev-icon"></span>
            </button>
            <!--botton para atras-->
            <button class="carousel-control-next" type="button" data-bs-target="#carouselHistoria" data-bs-slide="next">

                <span class="carousel-control-next-icon"></span>
            </button>



            <!--aca termina el div carousel historia -->
        </div>



        <!--aca comienza el carousel de naturales-->
        <div id="carouselNaturales" class=" carousel slide" data-bs-ride="carousel" style="width: 40%; margin: 20px;">


            <p>Historia </p>


            <!--aca van los div de los inner que hace que la foto quede-->
            <div class=" carousel-inner">
                <!--aca van las fotos -->


                <!--aca va la foto-->
                <div class=" carousel-item active">
                    <img src="Fotos/Naturales/Naturales1.jpg" class=" d-block w-100" />
                </div>
                <!--aca vala foto-->
                <div class="carousel-item">
                    <img src="Fotos/Naturales/Naturales.jpg" class=" d-block w-100" />
                </div>
                <!--aca va el video-->
                <div class=" carousel-item">
                    <video class=" d-block w-100" controls>
                        <source src="Videos/videohistoria.mp4" type="video/mp4" />
                    </video>

                </div>






                <!---aca termina el inner-->
            </div>



            <!--boton para adelante-->
            <button class="carousel carousel-control-prev" type="button" data-bs-target="#carouselNaturales" data-bs-slide="prev">
                <span class=" carousel-control-prev-icon"></span>
            </button>
            <!--botton para atras-->
            <button class="carousel-control-next" type="button" data-bs-target="#carouselNaturales" data-bs-slide="next">

                <span class="carousel-control-next-icon"></span>
            </button>



            <!--aca termina el div carousel naturales -->
        </div>




        <!--aca ermina el div padre del flex-->
    </div>


</asp:Content>

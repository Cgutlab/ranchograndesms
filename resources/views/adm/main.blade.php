<!DOCTYPE html>

<html lang="en">



<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">



    <title>Panel de Administrador | @yield('titulo')</title>



    <!-- Materialize Core CSS -->

    <link href="{{ asset('css/materialize/css/materialize.min.css') }}" rel="stylesheet">



    <link rel="stylesheet" type="text/css" href="{{ asset('css/admin.css')}}">



    <!--Import Google Icon Font-->

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">



<style type="text/css">

.adm-estandar *{

font-size: 14px!important;

padding: 0;

margin: 0;

line-height: 20px

}

</style>

</head>

<body>



<!-- Menu derecho -->

<div class="row">

<div id="nav-mobile" class="side-nav fixed col s3 z-depth-1" style="padding: 0; height: 100%; overflow-y: auto; position: fixed;" role="navigation">



    <img class="responsive-img hide-on-med-and-down" src="{{asset('img/logos/'.$header->imagen)}}">

        <ul class="collapsible z-depth-0">



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">home</i>Home</a>

                <div class="collapsible-body">

                    <div><a href="{{ route('slider.create', ['seccion' => 'home']) }}">Crear Slider</a></div>

                    <div><a href="{{ route('slider.show', ['seccion' => 'home']) }}">Editar Slider</a></div>

                    <div><a href="{{ route('contenido.show', ['seccion' => 'home']) }}">Editar Contenido</a></div>

                    <div><a href="{{ route('destacado.show', ['seccion' => 'home']) }}">Editar Destacado</a></div>

                </div>

            </li>



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">business</i>Cabañas</a>

                <div class="collapsible-body">

                  <div><a href="{{ route('slider.create', ['seccion' => 'cabanas']) }}">Crear Slider</a></div>

                  <div><a href="{{ route('slider.show', ['seccion' => 'cabanas']) }}">Editar Slider</a></div>

                  <div><a href="{{ route('contenido.show', ['seccion' => 'cabanas']) }}">Editar Contenido</a></div>

                  <div><a href="{{ route('icategorias.create') }}">Crear Cabaña</a></div>

                  <div><a href="{{ route('icategorias.index') }}">Editar Cabaña</a></div>

                  <div><a href="{{ route('igalerias.create') }}">Crear Galeria</a></div>

                  <div><a href="{{ route('igalerias.index') }}">Editar Galeria</a></div>

                </div>

            </li>



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">local_library</i>Servicios</a>

                <div class="collapsible-body">

                  <div><a href="{{ route('slider.create', ['seccion' => 'servicios']) }}">Crear Slider</a></div>

                  <div><a href="{{ route('slider.show', ['seccion' => 'servicios']) }}">Editar Slider</a></div>

                  <div><a href="{{ route('contenido.show', ['seccion' => 'servicios']) }}">Editar Contenido</a></div>

                  <div><a href="{{ route('actividades.create') }}">Crear Actividad</a></div>

                  <div><a href="{{ route('actividades.index') }}">Editar Actividad</a></div>



                </div>

            </li>



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">videocam</i>Videos</a>

                <div class="collapsible-body">

                  <div><a href="{{ route('slider.create', ['seccion' => 'videos']) }}">Crear Slider</a></div>

                  <div><a href="{{ route('slider.show', ['seccion' => 'videos']) }}">Editar Slider</a></div>

                  <div><a href="{{ route('contenido.show', ['seccion' => 'videos']) }}">Editar Contenido</a></div>

                  <div><a href="{{ route('videos.create') }}">Crear Video</a></div>

                  <div><a href="{{ route('videos.index') }}">Editar Video</a></div>

                </div>

            </li>



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">local_movies</i>Galeria</a>

                <div class="collapsible-body">

                  <div><a href="{{ route('slider.create', ['seccion' => 'galerias']) }}">Crear Slider</a></div>

                  <div><a href="{{ route('slider.show', ['seccion' => 'galerias']) }}">Editar Slider</a></div>

                  <div><a href="{{ route('contenido.show', ['seccion' => 'galerias']) }}">Editar Contenido</a></div>

                  <div><a href="{{ route('vcategorias.create') }}">Crear Categoria</a></div>

                  <div><a href="{{ route('vcategorias.index') }}">Editar Categoria</a></div>

                  <div><a href="{{ route('vgalerias.create') }}">Crear Galeria</a></div>

                  <div><a href="{{ route('vgalerias.index') }}">Editar Galeria</a></div>

                </div>

            </li>



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">location_on</i>Donde Estamos</a>

                <div class="collapsible-body">

                  <div><a href="{{ route('slider.create', ['seccion' => 'donde-estamos']) }}">Crear Slider</a></div>

                  <div><a href="{{ route('slider.show', ['seccion' => 'donde-estamos']) }}">Editar Slider</a></div>

                  <div><a href="{{ route('contenido.show', ['seccion' => 'donde-estamos']) }}">Editar Contenido</a></div>

                </div>

            </li>



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">email</i>Contacto</a>

                <div class="collapsible-body">

                  <div><a href="{{ route('slider.create', ['seccion' => 'contacto']) }}">Crear Slider</a></div>

                  <div><a href="{{ route('slider.show', ['seccion' => 'contacto']) }}">Editar Slider</a></div>

                  <div><a href="{{ route('contenido.show', ['seccion' => 'contacto']) }}">Editar Contenido</a></div>

                </div>

            </li>



            <li class="bold">

                <a class="collapsible-header waves-effect waves-admin"><i class="material-icons">event_available</i>Condiciones</a>

                <div class="collapsible-body">

                  <div><a href="{{ route('contenido.show', ['seccion' => 'condiciones']) }}">Editar Contenido</a></div>

                </div>

            </li>



            <li class="bold"><a class="collapsible-header <?php if(isset($redes_seccion)){echo($redes_seccion);} ?> waves-effect waves-admin"><i class="material-icons">remove_red_eye</i>Redes sociales</a>

                <div class="collapsible-body">

                    <div class="<?php if(isset($redes_create)){echo($redes_create);} ?>"><a href="{{ url('adm/redes/create') }}">Crear red social</a></div>

                    <div class="<?php if(isset($redes_edit)){echo($redes_edit);} ?>"><a href="{{ url('adm/redes/show') }}">Editar red social</a></div>

                </div>

            </li>



            <li class="bold"><a class="collapsible-header <?php if(isset($logos_seccion)){echo($logos_seccion);} ?> waves-effect waves-admin"><i class="material-icons">collections</i>Logos</a>

                <div class="collapsible-body">

                    <div class="<?php if(isset($logos_edit)){echo($logos_edit);} ?>"><a href="{{ url('adm/logos') }}">Editar logos</a>

                </div>

            </li>



            <li class="bold">

            <a class="collapsible-header <?php if(isset($datos_seccion)){echo($datos_seccion);} ?> waves-effect waves-admin"><i class="tiny material-icons">view_headline</i>Datos de la empresa</a>

                <div class="collapsible-body">

                    <div class="<?php if(isset($datos_edit)){echo($datos_edit);} ?>"><a href="{{ url('adm/datos') }}">Editar datos</a></div>

                </div>

            </li>



            <li class="bold"><a class="collapsible-header <?php if(isset($metadatos_seccion)){echo($metadatos_seccion);} ?> waves-effect waves-admin"><i class="material-icons">pin_drop</i>Metadatos</a>

                <div class="collapsible-body">

                    <div class="<?php if(isset($metadatos_edit)){echo($metadatos_edit);} ?>"><a href="{{ url('adm/metadatos') }}">Editar Metadatos</a></div>

                </div>

            </li>



             <li class="bold"><a class="collapsible-header <?php if(isset($usuarios_seccion)){echo($usuarios_seccion);} ?> waves-effect waves-admin"><i class="material-icons">account_circle</i>Usuarios</a>

                <div class="collapsible-body">

                    <div class="<?php if(isset($usuarios_create)){echo($usuarios_create);} ?>"><a href="{{ url('adm/usuarios/create') }}">Crear Usuario</a></div>

                    <div class="<?php if(isset($usuarios_edit)){echo($usuarios_edit);} ?>"><a href="{{ url('adm/usuarios') }}">Editar Usuario</a></div>

                </div>

            </li>







        </ul>

</div>



    <div id="page-wrapper">

        <nav class="z-depth-0 col s9 push-s3" style="padding: 0;">

            <div class="nav-wrapper nave ">

                <ul class="hide-on-med-and-down" style="margin: 0 10%;">



                    <li>

                      <div style="font-size: 24px;">@yield('titulo')</div>

                    </li>

                </ul>



                <ul class="right hide-on-med-and-down" style="margin: 0 10%;">

                    <li><a class="dropdown-trigger" href="{{route('adm.logout')}}" data-target="dropdown1">Cerrar Sesión</a></li>

                </ul>

            </div>

        </nav>

            <div class="col s9 push-s3" style="padding: 40px;">

                @yield('cuerpo')

            </div>

    </div>

</div>

    <!-- /#wrapper -->

    <!-- jQuery -->

    <script src="{{ asset('js/jquery.min.js')}}"></script>



    <!-- Materialize Core JavaScript -->

    <script src="{{ asset('css/materialize/js/materialize.min.js')}}"></script>



    <script type="text/javascript">

    $(document).ready(function()

    {

        $('.collapsible').collapsible();

    });

    </script>



    <script type="text/javascript">

       $('.confirmar').click(function(event) {

           if(!confirm('¿Esta seguro que desea borrar este registro?'))

           {

               event.preventDefault();

           }

       });

    </script>

</body>

</html>


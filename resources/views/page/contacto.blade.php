<!DOCTYPE html>

<html lang="es">

<head>



@include('page.template.metas')

@include('page.template.links')



</head>

<body>



@include('page.template.header')

@include('page.template.slider')



<section class="contenido">

<div class="container" style="width: 100%;">

<div class="center-align" style=" margin-top: 35px; margin-bottom: 80px;">

  <div class="fs38 fc2">

    {!!$contenido->titulo!!}

  </div>

  <div class="fs22 fc6">

    {!!$contenido->subtitulo!!}

  </div>

</div>

</div>

</section>



<section class="Contacto" style="margin-bottom: 80px;">

<div class="container">

<div class="row">

<div class="col l4 fs17">

  <div class="row" style="margin-bottom: 15px;">

      <div class="col s1 fc5"><i class="material-icons fc5 fs20">location_on</i></div>

      <div class="col s11"><a target="_blank" href="https://www.google.com/maps/search/{{$direccion->texto}}" class="fc8 fs17 hover">{{$direccion->texto}}</a></div>

  </div>

  <div class="row" style="margin-bottom: 15px;">

    <div class="col s1 fc5"><i class="material-icons fc5 fs20">phone_in_talk</i></div>

    <div class="col s11"><a href="tel:{{$telefono->texto}}" class="fc8 fs17 hover">{{$telefono->texto}}</a></div>

  </div>

  <div class="row" style="margin-bottom: 15px;">

    <div class="col s1 fc5"><i class="fab fa-whatsapp fs24 fc4"></i></div>

    <div class="col s11"><a target="_blank" href="https://wa.me/{{$whatsapp1->texto}}" class="fc8 fs17 hover">{{$whatsapp1->texto}}</a></div>



    <div class="col s11 offset-s1"><a target="_blank" href="https://wa.me/{{$whatsapp2->texto}}" class="fc8 fs17 hover">{{$whatsapp2->texto}}</a></div>

  </div>

  <div class="row" style="margin-bottom: 15px;">

    <div class="col s1 fc5"><i class="material-icons fc5 fs20">email</i></div>

    <div class="col s11"><a href="mailto:{{$correo->texto}}" class="fc8 fs17 hover">{{$correo->texto}}</a></div>

  </div>

</div>

@php

  if(isset($desde)){ $frm_desde = $desde;}

  if(isset($hasta)){ $frm_hasta = $hasta;}

  if(isset($cabanas)){ $frm_cabanas = $cabanas;}

  if(isset($pasajeros)){ $frm_pasajeros = $pasajeros;}

@endphp

<div class="col l8">

  {!!Form::open(['route'=>'contacto.enviar', 'method'=>'POST'])!!}

  <div class="row">

    <div class="input-field col s12">

        {!!Form::label('Nombre')!!}

        {!!Form::text('nombre',null,['class'=>'validate', 'required'])!!}

    </div>

    <div class="input-field col s12">

        {!!Form::label('Email')!!}

        {!!Form::email('email',null,['class'=>'validate', 'required'])!!}

    </div>

    <div class="col l4 m6">

      <div class="input-field col s12" style="margin:0; float: left; padding: 0;">

        <i class="material-icons prefix fs14 fc3 bc2" style="top:0px; padding-top: 8px; right: 30px; ">event_note</i>

        {!!Form::text('desde', $frm_desde, ['class' => 'datepicker', 'required', 'autocomplete' => 'off', 'style' => 'margin:0; background: white; color: black; font-weight: 500;', 'placeholder' => 'Check In'])!!}

      </div>

    </div>

    <div class="offset-l4 col l4 m6" align="right">

      <div class="input-field col s12" style="margin:0; float: left; padding: 0;">

        <i class="material-icons prefix fs14 fc3 bc2" style="top:0px; padding-top: 8px; right: 0px; ">event_note</i>

        {!!Form::text('hasta', $frm_hasta, ['class' => 'datepicker', 'required', 'autocomplete' => 'off', 'style' => 'margin:0; background: white; color: black; font-weight: 500;', 'placeholder' => 'Check In'])!!}

      </div>

    </div>

    <div class="col s12">

      <div class="input-field" style="padding:0; background: white; color: #8A8A8A;">
        <select name="cabanas" style="padding-left: 5px;" required>

          @foreach($cabanas as $cabana)
          <option value="{{$cabana->titulo}}" @if($frm_cabanas == $cabana->titulo) selected @endif>&nbsp;{{$cabana->titulo}}</option>
          @endforeach

        </select>
        

      </div>

    </div>

    <div class="col s12">

      <div class="input-field" style="padding:0; background: white; color: #8A8A8A;">

        <select name="pasajeros" required>

          <option value="1" @if($frm_pasajeros == '1') selected @endif>1 Persona</option>

          <option value="2" @if($frm_pasajeros == '2') selected @endif>2 Personas</option>

          <option value="3" @if($frm_pasajeros == '3') selected @endif>3 Personas</option>

          <option value="4" @if($frm_pasajeros == '4') selected @endif>4 Personas</option>

          <option value="5" @if($frm_pasajeros == '5') selected @endif>5 Personas</option>

          <option value="mas de 6" @if($frm_pasajeros == '9') selected @endif>Más Personas</option>

        </select>

      </div>

    </div>

    <div class="col s12">

      <div class="input-field">

      {!!Form::label('Mensaje')!!}

      {!!Form::textarea('mensaje', null, ['class'=>'materialize-textarea'])!!}

      </div>

    </div>

    <div class="row">

      <div class="col l6 m12">

        <div class="g-recaptcha" data-sitekey="6LflBoQUAAAAAKtz4tlWQvHENFThAspzfSmycHqe"></div>

      </div>

      <div class="col l6 m12">

        <label>

          <input type="checkbox" name="acepto" required/>

          <span>

              <a href="#modal1" class="modal-trigger" style="color:#494949;">

              <div class="fs15 gris15">Acepto los términos y condiciones de privacidad</div>

              </a>

          </span>

        </label>

      </div>

    </div>

    <div class="col s12" style="margin-top: 25px;">

      <div class="col s12 no-padding">

        {!!Form::submit('ENVIAR', ['class' => 'fs14', 'style' => 'padding: 12px 20px; margin: 0 15px; border: 1px solid #6C6C6C; color: #6C6C6C; background: white;'])!!}

      </div>

    </div>

  </div>

  {!!Form::close()!!}

</div>

</div>

</div>

</section>



<div id="modal1" class="modal">

  <div class="modal-content">

    <h4>Términos y condiciones</h4>

    <p>{!! $contenido->texto !!}</p>

  </div>

  <div class="modal-footer">

    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>

  </div>

</div>



@include('page.template.footer')



</body>

</html>



@include('page.template.scripts')



<script src='https://www.google.com/recaptcha/api.js?hl=es'></script>



<script type="text/javascript">

  $(document).ready(function(){

    $('.modal').modal();

  });

  $(document).ready(function(){

   $('.datepicker').datepicker({

            format: 'dd-mm-yyyy',

              selectYears: 200,

              min: new Date(2018,11,23),

              max: new Date(2080,12,31)

        });

   });

  $(document).ready(function(){

    $('select').formSelect();

  });

  </script>


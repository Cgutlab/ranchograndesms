<!DOCTYPE html>

<html lang="es">

<head>



@include('page.template.metas')



@include('page.template.links')



</head>

<body>



@include('page.template.header')



@include('page.template.slider')



@include('page.template.reservacion')



<section class="contenido1">

<div class="container" style="width: 100%;">

<div class="center-align" style=" margin-top: 35px; margin-bottom: 80px;">

  <div class="fs38 fc2">

    {!!$c1->titulo!!}

  </div>

  <div class="fs22 fc6">

    {!!$c1->subtitulo!!}

  </div>

  <div class="fs18 fc7 fw5 editorRico container" style="width: 90%;">

    {!!$c1->texto!!}

  </div>

  <div class="" style="margin-top: 35px;">

    <a href="{!!$c1->ruta!!}" style="padding: 12px 20px; border: 1px solid #6C6C6C; font-size: 18px; color: #6C6C6C;">D&Oacute;NDE ESTAMOS</a>

  </div>

</div>

</div>

</section>



<section class="destacados">

<div class="container" style="width: 100%;">{{-- 80 --}}

<div class="row">

    <div class="col s12 l12 no-padding">

        <a href="{!!$d1->ruta !!}">

        <div class="col s12 l8">

            <div class="card">

                <div class="cuadradas card-image">

                    <img src="{{asset('img/destacados/'.$d1->imagen)}}" style="">

                    <div class="card-title editorRico" style="display: table;width: 100%;">

                        <div style="display: table-cell;">

                          <span class="fs42 ls1">{!!$d1->titulo !!}</span>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        </a>

        <a href="{!!$d2->ruta !!}">

        <div class="col s12 l4">

            <div class="card">

                <div class="larga card-image">

                    <img src="{{asset('img/destacados/'.$d2->imagen)}}" style="">

                    <div class="card-title editorRico" style="display: table;width: 100%;">

                        <div style="display: table-cell;">

                          <span class="fs42 ls1">{!!$d2->titulo !!}</span>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        </a>

    </div>



    <div class="col s12 l12 no-padding">

        <a href="{!!$d3->ruta !!}">

        <div class="col s12 l4">

            <div class="card">

                <div class="cuadradas card-image">

                    <img src="{{asset('img/destacados/'.$d3->imagen)}}" style="">

                    <div class="card-title editorRico" style="display: table;width: 100%;">

                        <div style="display: table-cell;">

                          <span class="fs42 ls1">{!!$d3->titulo !!}</span>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        </a>

        <a href="{!!$d4->ruta !!}">

        <div class="col s12 l8">

            <div class="card">

                <div class="larga card-image">

                    <img src="{{asset('img/destacados/'.$d4->imagen)}}" style="">

                    <div class="card-title editorRico" style="display: table;width: 100%;">

                        <div style="display: table-cell;">

                          <span class="fs42 ls1">{!!$d4->titulo !!}</span>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        </a>

    </div>

</div>

</div>

</section>



<section class="other">

<div style="background: #F9F9F9; padding-top: 35px; padding-bottom: 35px; margin-top: 50px;">

<div class="container center-align" style="width: 100%;">

<div class="row">

<div class="col m6 s12" style=" margin-top: 35px; margin-bottom: 80px;">

  <iframe src="{{ $mapa->texto }}" width="100%" height="400" frameborder="0" allowfullscreen></iframe>

</div>

<div class="col m6 s12" style=" margin-top: 35px; margin-bottom: 80px;">

<section class="contenido2">

<div class="center-align">

  <div class="fs38 fc2">

    {!!$c2->titulo!!}

  </div>

  <div class="fs22 fc6">

    {!!$c2->subtitulo!!}

  </div>

  <div class="fs18 fc7 fw5 container" style="width: 80%">

    {!!$c2->texto!!}

  </div>

  <div style="margin-top: 35px;">

    <a href="{!!$c2->ruta!!}" style="padding: 12px 20px; border: 1px solid #6C6C6C; font-size: 18px; color: #6C6C6C;">CONTACTO</a>

  </div>

</div>

</section>

</div>

</div>

</div>

</div>

</section>



@include('page.template.footer')



</body>

</html>



@include('page.template.scripts')



<script>

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


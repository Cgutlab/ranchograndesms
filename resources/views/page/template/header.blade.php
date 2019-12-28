<header style="font-family: 'Monserrat'; margin-bottom: 0;">

<div style="margin-bottom: 0; display: flex; justify-content: center; ">
  {{-- transparent --}}

<div class="container" style="width: 90%;  position: absolute; background: transparent; z-index: 999;">

<a href="#" data-target="slide-out" class="hide-on-large-only sidenav-trigger right" style="margin: 40px 0 50px 0px; padding: 0 10px 0 10px; border: 1px solid #DDDDDD"><i class="material-icons">menu</i></a>
<div class="row" style=" margin-bottom: 0; margin-right: 0;">

<div class="col l5 hide-on-med-and-down">
<div class="row center-align">

  <div class="col l3">
  <a href="{{route('cabanas')}}" class="blanco">
  <div class="navTXT  @if($active == 'cabanas') navActive @endif">Las Cabañas</div>
  </a>
  </div>

  <div class="col l3">
  <a href="{{route('servicios')}}" class="blanco">
  <div class="navTXT  @if($active == 'servicios') navActive @endif">Servicios</div>
  </a>
  </div>

  <div class="col l3">
  <a href="{{route('videos')}}" class="blanco">
  <div class="navTXT  @if($active == 'videos') navActive @endif">Videos</div>
  </a>
  </div>

</div>
</div>

<div class="col l2">
    <a href="{{route('index')}}" class="center hide-on-med-and-down" style="margin-top: 40px; margin-bottom: 40px;">
      <img class="responsive-img" src="{{asset('img/logos/'.$header->imagen)}}">
    </a>
    <a href="{{route('index')}}" class="center hide-on-large-only" style="margin-top: 40px; margin-bottom: 0px;">
      <img class="responsive-img" src="{{asset('img/logos/'.$header->imagen)}}" style="height: 80px;">
    </a>
</div>

<div class="col l5 hide-on-med-and-down">

    <div class="row center-align">
      <div class="offset-l2 col l2">
      <a href="{{route('galerias')}}" class="blanco">
      <div class="navTXT  @if($active == 'galerias') navActive @endif">Galer&iacute;a</div>
      </a>
      </div>

      <div class="col l4">
      <a href="{{route('empresa')}}" class="blanco">
      <div class="navTXT  @if($active == 'donde-estamos') navActive @endif">San Marcos Sierra</div>
      </a>
      </div>

      <div class="col l2">
      <a href="{{route('contacto')}}" class="blanco">
      <div class="navTXT  @if($active == 'contacto') navActive @endif">Contacto</div>
      </a>
      </div>

      <div class="col l2" style="margin-top: 80px;">
        @foreach($redes as $red)
          <a href="{{$red->ruta}}" style="float: left; ">
          <div class="navICO">
            <i class="{{$red->icon}}" style="font-size: 20px;"></i>
          </div>
          </a>
        @endforeach
      </div>

    </div>
</div>
</div>
</div>
</div>
</header>

  <ul id="slide-out" class="sidenav">
    <li>
      <a href="{{route('index')}}" class="blanco">
      <div class=" @if($active == 'home') sideActive @endif">Home</div>
      </a>
    </li>
    <li>
      <a href="{{route('cabanas')}}" class="blanco">
      <div class=" @if($active == 'cabanas') sideActive @endif">Las Cabañas</div>
      </a>
    </li>
    <li>
      <a href="{{route('servicios')}}" class="blanco">
      <div class=" @if($active == 'servicios') sideActive @endif">Servicios</div>
      </a>
    </li>
    <li>
      <a href="{{route('videos')}}" class="blanco">
      <div class=" @if($active == 'videos') sideActive @endif">Videos</div>
      </a>
    </li>
    <li>
      <a href="{{route('galerias')}}" class="blanco">
      <div class=" @if($active == 'galerias') sideActive @endif">Galeria</div>
      </a>
    </li>
    <li>
      <a href="{{route('empresa')}}" class="blanco">
      <div class=" @if($active == 'donde-estamos') sideActive @endif">Donde Estamos</div>
      </a>
    </li>
    <li>
      <a href="{{route('contacto')}}" class="blanco">
      <div class=" @if($active == 'contacto') sideActive @endif">Contacto</div>
      </a>
    </li>
  </ul>

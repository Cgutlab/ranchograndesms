<footer style="width: 100%; background: #A4402C;">

 <div class="container yp25" style="width: 100%; height: 100%;">

 <div class="row cero" style="margin-bottom: 30px;">

  <div class="col l4 m12 center-align">

    <div>

      <i class="material-icons fc5 fs20">location_on</i>

    </div>

    <div class="fc1 lts container" style="width: 60%;">

      <a href="https://www.google.com/maps/search/{{$direccion->texto}}" class="fooHover">{{$direccion->texto}}</a>

    </div>

    <div style="margin-top: 25px;">

      <i class="material-icons fc5 fs20">phone_in_talk</i>

    </div>

    <div class="fc1 lts">

      <a href="tel:{{$telefono->texto}}" class="fooHover">{{$telefono->texto}}</a>

    </div>

  </div>



  <div class="col l4 m12 center-align">

  	<div class="row">
    	<div class="col l8 m12">

	      	<img class="responsive-img" src="{{asset('img/logos/'.$footer->imagen)}}">

    	</div>
  		
		<div class="col l4 m12">

			<a href="http://qr.afip.gob.ar/?qr=aw_o8x-cIhv6iaPsCCEaCA,," target="_F960AFIPInfo"><img class="responsive-img" src="http://www.afip.gob.ar/images/f960/DATAWEB.jpg" border="0"></a>  

		</div>
  	</div>


    <div style="display: flex; justify-content: center; align-items: center;">

      @foreach($redes as $red)

        <a href="{{$red->ruta}}">

          <div class="fooICO">

            <i class="{{$red->icon}}"></i>

          </div>

        </a>

      @endforeach

    </div>

  </div>



  <div class="col l4 m12 center-align">

    <div>

      <i class="fab fa-whatsapp fs24 fc4"></i>

    </div>

    <div class="fc1 lts container" style="width: 60%;">

      <div>

        <a class="fooHover" href="https://wa.me/{{$whatsapp1->texto}}">{{$whatsapp1->texto}}</a>

      </div>

      <div>

        <a class="fooHover" href="https://wa.me/{{$whatsapp2->texto}}">{{$whatsapp2->texto}}</a>

      </div>

    </div>

    <div style="margin-top: 25px;">

      <i class="material-icons fc5 fs20">email</i>

    </div>

    <div class="fc1 lts">

        <a class="fooHover" href="mailto:{{$correo->texto}}">{{$correo->texto}}</a>



    </div>

  </div>

 </div>

 <div align="center">

   <div style="height:1px; background:#CC9489; width:87%;"></div>

 </div>

 <div class="center-align fw6" style="color: #CC9489; font-size: 12px; margin: 10px;">

   <small>

     BY OSOLE

   </small>

   <div class="right"></div>

 </div>

 </div>

</footer>


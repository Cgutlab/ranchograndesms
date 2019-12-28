<div class="slider" >
<ul class="slides" >
@foreach($sliders as $slider)
    <li style="border-bottom: 0;">
        <img src="{{ asset('img/sliders/'.$slider->imagen) }}">
        <div class="caption center-align" style="background: inherit;">
        	<div class="hide-on-med-and-down">
        		<h3 class="fc5 lts center-align fs28">{!!$slider->titulo!!}</h3>
	            <h4 class="fc5 lts fw7 fs36">{!!$slider->subtitulo!!}</h4>
            </div>
        	<div class="hide-on-large-only">
        		<h3 class="fc5 lts center-align">{!!$slider->titulo!!}</h3>
	            <h4 class="fc5 lts fw7">{!!$slider->subtitulo!!}</h4>
            </div>            
        </div>
    </li>
@endforeach
</ul>
</div>
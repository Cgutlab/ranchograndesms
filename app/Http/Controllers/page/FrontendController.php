<?php



namespace App\Http\Controllers\page;



use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\Destacado;

use App\Contenido;

use App\Slider;

use App\Red;

use App\Metadato;

use App\Actividad;

use App\Video;



use App\iCabana;

use App\iGaleria;



use App\vCategoria;

use App\vGaleria;



class FrontendController extends Controller

{

    public function home()

    {

      $active='home';

      $sliders     = Slider::where('seccion', $active)->orderBy('orden','asc')->get();

    	$cabanas     = iCabana::orderBy('orden','asc')->get();

    	$c1          = Contenido::where('created_at', '2018-11-16 18:24:56')->first();

    	$c2          = Contenido::where('created_at', '2018-11-16 18:25:22')->first();

    	$metadato    = Metadato::where('seccion', $active)->first();

      $d1          = Destacado::where('id',1)->first();

      $d2          = Destacado::where('id',2)->first();

      $d3          = Destacado::where('id',3)->first();

      $d4          = Destacado::where('id',4)->first();

      return view('page.'.$active, compact('metadato','sliders','c1','c2','d1','d2','d3','d4', 'active', 'cabanas'));

    }





    public function cabanas()

    {

      $active = 'cabanas';

      $metadato = Metadato::where('seccion', $active)->first();

      $contenido = Contenido::where('seccion', $active)->first();

      $sliders   = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();



      $cabanas   = iCabana::orderBy('orden', 'asc')->get();



      return view('page.'.$active, compact('contenido', 'metadato', 'active', 'sliders', 'imagenes', 'cabanas'));

    }





    public function cabana($id)

    {

      $active = 'cabanas';

      $metadato = Metadato::where('seccion', $active)->first();

      $contenido = Contenido::where('seccion', $active)->first();

      $sliders   = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();



      $cabana     = iCabana::where('id', $id)->first();

      $imagenes   = iGaleria::orderBy('orden', 'asc')->where('id_cabana', $id)->get();



      return view('page.cabana', compact('contenido', 'metadato', 'active', 'sliders', 'imagenes', 'proyecto', 'cabana'));

    }





    public function servicios()

    {

      $active = 'servicios';

      $contenido    = Contenido::where('seccion', $active)->first();

      $actividades  = Actividad::orderBy('orden', 'asc')->get();

      $sliders      = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();

      $metadato     = Metadato::where('seccion', $active)->first();

      return view('page.'.$active, compact('contenido','actividades','metadato', 'active', 'sliders'));

    }





    public function videos()

    {

      $active = 'videos';

      $metadato   = Metadato::where('seccion', $active)->first();

      $contenido  = Contenido::where('seccion', $active)->first();

      $sliders    = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();

      $videos     = Video::orderBy('orden', 'asc')->get();

      return view('page.'.$active, compact('contenido', 'metadato', 'active', 'sliders', 'videos'));

    }





    public function galerias()

    {

      $active = 'galerias';

      $metadato   = Metadato::where('seccion', $active)->first();

      $contenido  = Contenido::where('seccion', $active)->first();

      $sliders    = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();

      $incrementa = '0';

      $categorias = vCategoria::orderBy('orden', 'asc')->get();

      $galeria = vGaleria::orderBy('orden', 'asc')->get();



      return view('page.'.$active, compact('contenido', 'metadato', 'active', 'sliders', 'categorias', 'incrementa', 'galeria'));

    }





    public function empresa()

    {

      $active = 'donde-estamos';

      $metadato = Metadato::where('seccion', $active)->first();

      $contenido = Contenido::where('seccion', $active)->first();

      $sliders   = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();

      return view('page.'.$active, compact('contenido', 'metadato', 'active', 'sliders'));

    }





    public function contacto()

    {

      $active = 'contacto';

      $metadato = Metadato::where('seccion', $active)->first();

      $contenido = Contenido::where('seccion', $active)->first();

      $sliders   = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();

      $cabanas   = iCabana::orderBy('orden', 'asc')->get();



      $frm_desde = null; $frm_hasta = null; $frm_cabanas = null; $frm_pasajeros = null;



      return view('page.'.$active, compact('contenido', 'metadato', 'active', 'sliders','frm_desde','frm_hasta','frm_cabanas','frm_pasajeros', 'cabanas'));

    }





    public function llenarformulario(Request $request)

    {

      $active = 'contacto';

      $metadato = Metadato::where('seccion', $active)->first();

      $contenido = Contenido::where('seccion', $active)->first();

      $sliders   = Slider::orderBy('orden', 'asc')->where('seccion', $active)->get();



      $desde = $request->input('desde');

      $hasta = $request->input('hasta');

      $cabanas = $request->input('cabanas');

      $pasajeros = $request->input('pasajeros');



      return view('page.contacto', compact('contenido', 'metadato', 'active', 'sliders', 'desde', 'hasta', 'cabanas', 'pasajeros'));

    }

}


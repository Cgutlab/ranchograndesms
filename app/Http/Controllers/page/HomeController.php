<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Destacado;
use App\Contenido;
use App\Slider;
use App\Red;
use App\Metadato;

class HomeController extends Controller
{
    public function index(){
      $active='home';

    	$sliders     = Slider::where('seccion', $active)->orderBy('orden','asc')->get();
    	$c1  = Contenido::where('created_at', '2018-11-16 18:24:56')->first();
    	$c2  = Contenido::where('created_at', '2018-11-16 18:25:22')->first();
    	$metadato    = Metadato::where('seccion', $active)->first();
      
      $d1  = Destacado::where('id',1)->first();
      $d2  = Destacado::where('id',2)->first();
      $d3  = Destacado::where('id',3)->first();
      $d4  = Destacado::where('id',4)->first();


        return view('page.home', compact('metadato','sliders','c1','c2','d1','d2','d3','d4', 'active'));
    }
}

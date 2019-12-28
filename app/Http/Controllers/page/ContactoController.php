<?php



namespace App\Http\Controllers\page;



use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Mail;

use Illuminate\Http\Request;

use App\Mail\Contacto;

use App\Dato;

use App\Correo;



class ContactoController extends Controller

{

    public function index(){

      $active='contacto';

    	return view('page.contacto', compact('active'));

    }



    public function enviarMail(Request $request) {

      $datos = Dato::where('tipo', 'correo')->first();

      $nombre = $request->input('nombre');
      $email = $request->input('email');
      $desde = $request->input('desde');
      $hasta = $request->input('hasta');
      $cabanas = $request->input('cabanas');
      $pasajeros = $request->input('pasajeros');
      $mensaje = $request->input('mensaje');

      $verion = $datos->texto;

      Mail::to($datos->texto)->send(new Contacto($nombre, $email, $desde, $hasta, $cabanas, $pasajeros, $mensaje, $verion));

      if (count(Mail::failures()) > 0) {
          $success = 'Ha ocurrido un error al enviar el correo';
      }else{
          $success = 'Correo enviado correctamente';
      }

      return back()->with('success', $success);

    }

}


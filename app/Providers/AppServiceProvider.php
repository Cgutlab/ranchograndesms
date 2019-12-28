<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Dato;
use App\Logo;
use App\Red;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        $header     = Logo::where('tipo','header')->first();
        $footer     = Logo::where('tipo','footer')->first();
        $favicon    = Logo::where('tipo','favicon')->first();

        $correo     = Dato::where('tipo','correo')->first();
        $telefono   = Dato::where('tipo','telefono')->first();
        $direccion  = Dato::where('tipo','direccion')->first();
        $whatsapp1  = Dato::where('tipo','whatsapp1')->first();
        $whatsapp2  = Dato::where('tipo','whatsapp2')->first();

        $mapa       = Dato::where('tipo','mapa')->first();

        $redes      = Red::orderBy('orden','asc')->get();

        view()->share([
            'redes'     => $redes,

            'header'    => $header,
            'footer'    => $footer,
            'favicon'   => $favicon,

            'mapa'      => $mapa,
            'correo'    => $correo,
            'telefono'  => $telefono,
            'direccion' => $direccion,
            'whatsapp1' => $whatsapp1,
            'whatsapp2' => $whatsapp2,
            ]);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}

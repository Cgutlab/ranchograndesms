<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Red extends Model
{
    protected $table = "redes";
    protected $fillable = [
	  	'icon','imagen','titulo','orden','ruta'
	];
}

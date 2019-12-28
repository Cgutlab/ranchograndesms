<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::post('contacto/enviar', ['uses' => 'page\ContactoController@enviarMail', 'as' => 'contacto.enviar']);
Route::post('servicio', ['uses' => 'page\ServicioController@validateCuenta', 'as' => 'cuenta.validarlogin']);

Route::get('/', function () {
    return view('page/home');
});

	Route::get('/', ['uses' => 'page\FrontendController@home', 'as' => 'index']);
	Route::get('cabañas', ['uses' => 'page\FrontendController@cabanas', 'as' => 'cabanas']);
	Route::get('cabaña/{id}', ['uses' => 'page\FrontendController@cabana', 'as' => 'cabana']);
	Route::get('servicios', ['uses' => 'page\FrontendController@servicios', 'as' => 'servicios']);
	Route::get('videos', ['uses' => 'page\FrontendController@videos', 'as' => 'videos']);
	Route::get('galerias', ['uses' => 'page\FrontendController@galerias', 'as' => 'galerias']);
	Route::get('donde-estamos', ['uses' => 'page\FrontendController@empresa', 'as' => 'empresa']);
	Route::get('contacto', ['uses' => 'page\FrontendController@contacto', 'as' => 'contacto']);

  Route::post('llenarformulario', ['uses' => 'page\FrontendController@llenarformulario', 'as' => 'llenarformulario']);





/*
    Route::get('presupuesto', ['uses' => 'page\PresupuestoController@index', 'as' => 'presupuesto']);
	Route::post('presupuesto/enviar', ['uses' => 'page\PresupuestoController@enviarMail', 'as' => 'presupuesto.enviar']);

	// ALAMBRADOSPRIX
	Route::get('productos/{id}',  ['uses' => 'page\ProductosController@index', 'as' => 'productos']);
	Route::get('producto/{id}',  ['uses' => 'page\ProductoController@index', 'as' => 'producto']);

	Route::get('trabajosrealizados', ['uses' => 'page\ModalRealizadosController@index', 'as' => 'trabajosrealizados']);

	Route::get('empresa', ['uses' => 'page\EmpresaController@index', 'as' => 'empresax']);//usado
  	Route::get('calidad', ['uses' => 'page\CalidadController@index', 'as' => 'calidad']);//usado
	Route::get('textiles', ['uses' => 'page\TextilesController@index', 'as' => 'textiles']);//usado
	Route::get('equipamiento', ['uses' => 'page\EquipamientoController@index', 'as' => 'equipamiento']);

	// Route::get('galeria', ['uses' => 'page\GaleriaController@index', 'as' => 'galeria']);
	Route::get('novedad/{id}', ['uses' => 'page\NovedadController@index', 'as' => 'novedad']);
	Route::get('novedades', ['uses' => 'page\NovedadesController@index', 'as' => 'novedades']);

	Route::get('soluciones', ['uses' => 'page\SolucionController@index', 'as' => 'soluciones']);

	Route::get('modelos/{id}', ['uses' => 'page\ModelosController@index', 'as' => 'modelos']);

	Route::get('luminarias', ['uses' => 'page\LuminariasController@index', 'as' => 'luminarias']);
	Route::get('luminaria/{id}', ['uses' => 'page\LuminariaController@index', 'as' => 'luminaria']);
	Route::get('productol/{id}', ['uses' => 'page\ProductolController@index', 'as' => 'productol']);//usado

	Route::get('compresors', ['uses' => 'page\CompresorsController@index', 'as' => 'compresors']);
	Route::get('compresor/{id}', ['uses' => 'page\CompresorController@index', 'as' => 'compresor']);
	Route::get('productoc/{id}', ['uses' => 'page\ProductocController@index', 'as' => 'productoc']);//usado

  	Route::get('textiles', ['uses' => 'page\TextilesController@index', 'as' => 'textiles']);
  	Route::get('textil/{id}', ['uses' => 'page\TextilController@index', 'as' => 'textil']);
	Route::get('productot/{id}', ['uses' => 'page\ProductotController@index', 'as' => 'productot']);//usado

  	Route::get('adhesivos', ['uses' => 'page\AdhesivosController@index', 'as' => 'adhesivos']);
  	Route::get('adhesivo/{id}', ['uses' => 'page\AdhesivoController@index', 'as' => 'adhesivo']);
  	Route::get('aproducto/{id}', ['uses' => 'page\AProductoController@index', 'as' => 'aproducto']);//usado

	Route::get('filter/{id_categoria}', ['uses' => 'page\NovedadesController@filter', 'as' => 'filter']);
	Route::get('filter_novedades/{id}', ['uses' => 'page\NovedadesController@show', 'as' => 'filter_novedades']);
	Route::post('search', ['uses' => 'page\NovedadesController@buscar', 'as' => 'buscar_novedad']);

	Route::get('cliente', ['uses' => 'page\ClienteController@index', 'as' => 'cliente']);
	Route::get('descarga', ['uses' => 'page\DescargaController@index', 'as' => 'descarga']);
	Route::get('contacto', ['uses' => 'page\ContactoController@index', 'as' => 'contacto']);
	Route::post('enviar', ['uses' => 'page\ContactoController@enviarMail', 'as' => 'enviar']);
	Route::get('listas', ['uses' => 'page\ListasController@index', 'as' => 'listas']);

	Route::get('cuenta_c', ['uses' => 'page\CuentaController@createCuenta', 'as' => 'cuenta_c']);
	Route::post('cuenta_s', ['uses' => 'page\CuentaController@storeCuenta', 'as' => 'cuenta_s']);
	Route::get('cuenta_r', ['uses' => 'page\CuentaController@recuperarCuenta', 'as' => 'cuenta_r']);
	Route::post('cuenta_d', ['uses' => 'page\CuentaController@sendCuenta', 'as' => 'cuenta_d']);
*/


/*
ADM
*/
Route::group(['prefix' => 'adm'], function() {
		Route::resource('login', 'adm\LoginController');
		Route::get('logout', ['uses' => 'adm\LoginController@logout' , 'as' => 'adm.logout']);
	});

	Route::group(['prefix' => 'adm', 'middleware' => 'guest'], function() {

	Route::get('/', function() {
		$usuario = Auth::user();
		return view('adm.index', compact('usuario'));
	});

Route::resource('usuarios', 'adm\UserController');
Route::resource('metadatos', 'adm\MetadatosController');
Route::resource('datos', 'adm\DatosController');
Route::resource('logos', 'adm\LogosController');
Route::resource('redes', 'adm\RedesController');
Route::resource('icategorias', 'adm\iCategoriasController');
Route::resource('igalerias', 'adm\iGaleriasController');
Route::resource('vcategorias', 'adm\vCategoriasController');
Route::resource('vgalerias', 'adm\vGaleriasController');

Route::resource('actividades', 'adm\ActividadesController');
Route::resource('videos', 'adm\VideosController');
	//Route::resource('{seccion}/slider', 'adm\SliderController');

  // USO
  Route::group(['prefix' => 'slider', 'as' => 'slider'], function() {
    Route::get('{seccion}/create', ['uses' => 'adm\SliderController@create', 'as' => '.create']);
    Route::post('store', ['uses' => 'adm\SliderController@store', 'as' => '.store']);
    Route::get('{seccion}/show', ['uses' => 'adm\SliderController@show', 'as' => '.show']);
    Route::get('edit/{id}', ['uses' => 'adm\SliderController@edit', 'as' => '.edit']);
    Route::put('update/{id}', ['uses' => 'adm\SliderController@update', 'as' => '.update']);
    Route::delete('destroy/{id}', ['uses' => 'adm\SliderController@destroy', 'as' => '.destroy']);
  });

  Route::group(['prefix' => 'contenido', 'as' => 'contenido'], function() {
    Route::get('{seccion}/create', ['uses' => 'adm\ContenidoController@create', 'as' => '.create']);
    Route::post('store', ['uses' => 'adm\ContenidoController@store', 'as' => '.store']);
    Route::get('{seccion}/show', ['uses' => 'adm\ContenidoController@show', 'as' => '.show']);
    Route::get('edit/{id}', ['uses' => 'adm\ContenidoController@edit', 'as' => '.edit']);
    Route::put('update/{id}', ['uses' => 'adm\ContenidoController@update', 'as' => '.update']);
    Route::delete('destroy/{id}', ['uses' => 'adm\ContenidoController@destroy', 'as' => '.destroy']);
  });

  Route::group(['prefix' => 'destacado', 'as' => 'destacado'], function() {
    Route::get('{seccion}/create', ['uses' => 'adm\DestacadoController@create', 'as' => '.create']);
    Route::post('store', ['uses' => 'adm\DestacadoController@store', 'as' => '.store']);
    Route::get('{seccion}/show', ['uses' => 'adm\DestacadoController@show', 'as' => '.show']);
    Route::get('edit/{id}', ['uses' => 'adm\DestacadoController@edit', 'as' => '.edit']);
    Route::put('update/{id}', ['uses' => 'adm\DestacadoController@update', 'as' => '.update']);
    Route::delete('destroy/{id}', ['uses' => 'adm\DestacadoController@destroy', 'as' => '.destroy']);
  });



	Route::group(['prefix' => 'home', 'as' => 'home'], function() {
	  	Route::group(['prefix' => 'contenido'], function() {
	  		Route::get('show', ['uses' => 'adm\HomeController@editarContenidos', 'as' => '.contenido.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarContenido', 'as' => '.contenido.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\HomeController@updateContenido', 'as' => '.contenido.update']);
	  	});

	  	Route::group(['prefix' => 'destacado'], function() {
	  		Route::get('show', ['uses' => 'adm\HomeController@editarDestacados', 'as' => '.destacado.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarDestacado', 'as' => '.destacado.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\HomeController@updateDestacado', 'as' => '.destacado.update']);
	  	});
  	});

	Route::group(['prefix' => 'cabanas', 'as' => 'cabanas'], function() {
	  	Route::group(['prefix' => 'contenido'], function() {
	  		Route::get('show', ['uses' => 'adm\CabanasController@editarContenidos', 'as' => '.contenido.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\CabanasController@editarContenido', 'as' => '.contenido.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\CabanasController@updateContenido', 'as' => '.contenido.update']);
	  	});

	  	Route::group(['prefix' => 'destacado'], function() {
	  		Route::get('show', ['uses' => 'adm\CabanasController@editarDestacados', 'as' => '.destacado.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\CabanasController@editarDestacado', 'as' => '.destacado.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\CabanasController@updateDestacado', 'as' => '.destacado.update']);
	  	});
  	});

	Route::group(['prefix' => 'galerias', 'as' => 'galerias'], function() {
	  	Route::group(['prefix' => 'contenido'], function() {
	  		Route::get('show', ['uses' => 'adm\GaleriasController@editarContenidos', 'as' => '.contenido.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\GaleriasController@editarContenido', 'as' => '.contenido.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\GaleriasController@updateContenido', 'as' => '.contenido.update']);
	  	});

	  	Route::group(['prefix' => 'destacado'], function() {
	  		Route::get('show', ['uses' => 'adm\GaleriasController@editarDestacados', 'as' => '.destacado.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\GaleriasController@editarDestacado', 'as' => '.destacado.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\GaleriasController@updateDestacado', 'as' => '.destacado.update']);
	  	});
  	});


  	// Route::group(['prefix' => 'videos', 'as' => 'videos'], function() {
  	//   	Route::group(['prefix' => 'contenido'], function() {
  	//   		Route::get('show', ['uses' => 'adm\VideosController@editarContenidos', 'as' => '.contenido.show']);
  	//   		Route::get('edit/{id}', ['uses' => 'adm\VideosController@editarContenido', 'as' => '.contenido.edit']);
  	//   		Route::put('update/{id}', ['uses' => 'adm\VideosController@updateContenido', 'as' => '.contenido.update']);
  	//   	});
    //
  	//   	Route::group(['prefix' => 'destacado'], function() {
  	//   		Route::get('show', ['uses' => 'adm\VideosController@editarDestacados', 'as' => '.destacado.show']);
  	//   		Route::get('edit/{id}', ['uses' => 'adm\VideosController@editarDestacado', 'as' => '.destacado.edit']);
  	//   		Route::put('update/{id}', ['uses' => 'adm\VideosController@updateDestacado', 'as' => '.destacado.update']);
  	//   	});
    // 	});


	Route::group(['prefix' => 'contacto', 'as' => 'contacto'], function() {
	  	Route::group(['prefix' => 'contenido'], function() {
	  		Route::get('show', ['uses' => 'adm\VideosController@editarContenidos', 'as' => '.contenido.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\VideosController@editarContenido', 'as' => '.contenido.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\VideosController@updateContenido', 'as' => '.contenido.update']);
	  	});

	  	Route::group(['prefix' => 'destacado'], function() {
	  		Route::get('show', ['uses' => 'adm\VideosController@editarDestacados', 'as' => '.destacado.show']);
	  		Route::get('edit/{id}', ['uses' => 'adm\VideosController@editarDestacado', 'as' => '.destacado.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\VideosController@updateDestacado', 'as' => '.destacado.update']);
	  	});
  	});

});


Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');

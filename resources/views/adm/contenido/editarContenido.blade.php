@extends('adm.main')

@section('titulo', 'Editar Contenido')

@section('cuerpo')

<main>
	<div class="container">
	    @if(count($errors) > 0)
		<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
	  		<ul>
	  			@foreach($errors->all() as $error)
	  				<li>{!!$error!!}</li>
	  			@endforeach
	  		</ul>
	  	</div>
		@endif
		@if(session('success'))
		<div class="col s12 card-panel green lighten-4 green-text text-darken-4">
			{{ session('success') }}
		</div>
		@endif

		<div class="row">
			<div class="col s12">
			{!!Form::model($contenido, ['route'=>['contenido.update', $contenido->id], 'method'=>'PUT', 'files' => true])!!}
			<div class="row">

				<div class="row">
					<div class="file-field input-field col s6 hide">
					{!! Form::label('Seccion') !!}
					{!! Form::text('seccion',$contenido->seccion,['class'=>'validate', 'required'])!!}
					</div>
				</div>

{{--
				<div class="row">
					<div class="file-field input-field col s8">
						<div class="btn">
								<span>Imagen</span>
								{!! Form::file('imagen') !!}
						</div>
						<div class="file-path-wrapper">
								{!! Form::text(''),$contenido->imagen,['class'=>'file-path validate', 'required']) !!}
						</div>
					</div>

					<div class="input-field col s4">
						{!!Form::label('Orden')!!}
						{!!Form::text('orden',$contenido->orden,['class'=>'validate'])!!}
					</div>
				</div>
--}}

				<div class="row">
					<div class="input-field col s12">
						{!!Form::label('Titulo')!!}
						{!!Form::text('titulo',$contenido->titulo,['class'=>'validate'])!!}
					</div>
				</div>

				<div class="row">
					<div class="input-field col s12">
						{!!Form::label('Subtitulo')!!}
						{!!Form::text('subtitulo',$contenido->subtitulo,['class'=>'validate'])!!}
					</div>
				</div>

				<div class="row">
					<div class="input-field col s12">
						{!!Form::label('Texto')!!}
						{!!Form::textarea('texto',$contenido->texto, ['class'=>'validate', 'cols'=>'74', 'rows'=>'5'])!!}
					</div>
				</div>

				<div class="row">
					<div class="input-field col s12">
						{!!Form::label('Ruta')!!}
						{!!Form::text('ruta',$contenido->ruta,['class'=>'validate'])!!}
					</div>
				</div>

				<div class="col s12 no-padding">
					{!!Form::submit('Crear', ['class'=>'waves-effect waves-light btn right'])!!}
				</div>

		</div>
			{!!Form::close()!!}
			</div>
			</div>
		</div>
	</main>

<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
	CKEDITOR.replace('texto');
	CKEDITOR.config.width = '100%';
</script>

@endsection

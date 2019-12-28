@extends('adm.main')

@section('titulo', 'Editar Modelo Item')

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
			{!!Form::model($modelo, ['route'=>['modelosgalerias.update', $modelo->id], 'method'=>'PUT', 'files' => true])!!}
				<div class="row">
					<div class="input-field col s4">
						Seleccione un modelo: 
					</div>
					<div class="input-field col s8">
						<select name="seccion" style="display: inherit;" required>
						@foreach($modelos_cont as $modelos_cont)						
            			<option value="{{$modelos_cont->id}}" @if($modelos_cont->id == $modelo->seccion) selected @endif>{!!$modelos_cont->titulo!!}</option>
						@endforeach
						</select>
					</div>									
		        </div>

				<div class="row">
					<div class="file-field input-field col s8">
						<div class="btn">
						    <span>Imagen</span>
						    {!! Form::file('imagen') !!}
						</div>
						<div class="file-path-wrapper">
						    {!! Form::text('',$modelo->imagen, ['class'=>'file-path validate', 'required', 'placeholder'=>'Recomendado (  X  )']) !!}
						</div>
					</div>
					<div class="input-field col s4">
						{!!Form::label('Orden')!!}
						{!!Form::text('orden',$modelo->orden,['class'=>'validate','required'])!!}
					</div>								
				</div>

				<div class="row">					
					<div class="input-field col s12">
						{!!Form::label('Titulo')!!}
						{!!Form::textarea('titulo', $modelo->titulo, ['class'=>'validate', 'cols'=>'74', 'rows'=>'5'])!!}
					</div>
				</div>				
									
				
				{!!Form::submit('guardar', ['class'=>'waves-effect waves-light btn right'])!!}
			{!!Form::close()!!} 
		</div>
	</div>
</main>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
	CKEDITOR.replace('titulo');
	CKEDITOR.replace('texto');
    CKEDITOR.config.width = 500;
    CKEDITOR.config.width = '99%';
</script>
@endsection
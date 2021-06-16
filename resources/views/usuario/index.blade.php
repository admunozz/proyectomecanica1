 
@extends('layouts.plantilla')
@section('contenido')
<div class="row">
 <div class="col-md-8 col-xs-12">
  
 </div>
 <div class="col-md-2">
 <a href="usuario/create" class="pull-right">
 <button class="btn btn-success">Crear usuario</button> </a>
 <br></br>
</div>
 </div>
 <div class="row">
 <div class="col-md-12 col-xs-12">
 <div class="table-responsive">
 <table class="table table-striped table-hover">
 <thead>
 <th>Id</th>
 <th>Username</th>
 <th>Correo</th>
 <th>Rol</th> 
  <th>Nombre</th>
 <th>CC</th>
 <th >Opciones</th>
 </thead>
 <tbody>

  
 @foreach($rol as $us)
 <tr>
 <td>{{ $us->id }}</td>
 <td>{{ $us->username}}</td>
 <td>{{ $us->email}}</td> 
  <td> {{$us->description}}</td>
 
  <td> {{$us->nombre_completo}}</td>
  <td> {{$us->nro_identificacion}}</td>
  @if($us->status==1)
  <td> <a href=" {{URL::action('UserController@inactivar',$us->id)}}"><button
class="btn btn-danger">Inactivar</button></a>

                          @else
                          <td> <a href=" {{URL::action('UserController@activar',$us->id)}}"><button
class="btn btn-primary ">Activar</button></a>

                          @endif


  
 </tr> @endforeach
 
  
 </tbody>
 </table>
 </div>

 </div>
 </div>
@endsection
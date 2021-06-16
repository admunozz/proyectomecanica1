 
@extends('layouts.plantilla')
@section('contenido')
<div class="row">
 <div class="col-md-8 col-xs-12">
  
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
 <th>Fecha Ingreso</th> 
  <th>User_id</th>
 
 </thead>
 <tbody>

  
 @foreach($registro_sis as $reg)
 <tr>
 <td>{{ $reg->id }}</td>
 <td>{{ $reg->username}}</td>
 <td>{{ $reg->email}}</td> 
  <td> {{$reg->fecha_ingreso}}</td>
 
  <td> {{$reg->user_id}}</td>

  @endforeach
 
  
 </tbody>
 </table>
 </div>

 </div>
 </div>
@endsection
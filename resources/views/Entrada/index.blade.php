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
                                      <th>Id Producto</th>
                                      <th>Nombre</th>
                                      <th>Fecha Compra</th>
                                      <th>Cantidad</th>
                                      <th>Cantidad Existente</th>
                                      <th>Valor Compra</th>
                                 </thead>
                                     <tbody>
                                          @foreach($compradetalles as $compradetalle)
                                          <tr>
                                          <td>{{ $compradetalle->id_producto }}</td>
                                          <td>{{ $compradetalle->nombre}}</td>
                                          <td>{{ $compradetalle->fecha_compra}}</td> 
                                          <td> {{$compradetalle->cantidad}}</td>
                                          <td> {{$compradetalle->stock}}</td>
                                          <td> {{$compradetalle->valor_compra}}</td>
                                           @endforeach  
                                      </tbody>
                            </table>
                      </div>
                 </div>
                
                </div>
@endsection
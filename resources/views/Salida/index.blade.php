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
                                      <th>Fecha venta</th>
                                      <th>Cantidad</th>
                                      <th>Cantidad Existente</th>
                                      <th>Valor venta</th>
                                 </thead>
                                     <tbody>
                                          @foreach($pedidodetalles as $pedidodetalle)
                                          <tr>
                                          <td>{{ $pedidodetalle->id_producto }}</td>
                                          <td>{{ $pedidodetalle->nombre}}</td>
                                          <td>{{ $pedidodetalle->fecha_pedido}}</td> 
                                          <td> {{$pedidodetalle->cantidad}}</td>
                                          <td> {{$pedidodetalle->stock}}</td>
                                          <td> {{$pedidodetalle->valor_total}}</td>
                                           @endforeach  
                                      </tbody>
                            </table>
                      </div>
                 </div>
                  
                </div>
@endsection
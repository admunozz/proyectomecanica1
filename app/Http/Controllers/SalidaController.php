<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class SalidaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pedidodetalles=DB::table('pedido_detalle')
        -> join ('producto', 'producto.id_producto', '=', 'pedido_detalle.producto_id_producto')
        -> join ('pedido_factura', 'pedido_factura.id_pedido_fact', '=', 'pedido_detalle.pedido_factura_id_pedido_fact')
        -> select ("producto.stock", "producto.id_producto", "producto.nombre", "pedido_factura.fecha_pedido","pedido_factura.valor_total", "pedido_detalle.cantidad")

        -> get();
        //dd($pedidodetalles);
        return view('Salida.index')-> with ('pedidodetalles', $pedidodetalles);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

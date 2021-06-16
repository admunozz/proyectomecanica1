<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class EntradaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $compradetalles=DB::table('compra_detalle')
        -> join ('producto', 'producto.id_producto', '=' ,'compra_detalle.producto_id_producto')
        -> join ('compra', 'compra.id_compra', '=' ,'compra_detalle.compra_id_compra')
        -> select ("compra_detalle.cantidad", "compra.fecha_compra","compra.valor_compra", "producto.id_producto", "producto.nombre", "producto.stock")
          
        -> get();

        return view('Entrada.index')-> with ('compradetalles', $compradetalles);
        //dd($compradetalles);
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

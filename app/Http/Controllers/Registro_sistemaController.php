<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Registro_sistema;
use Illuminate\Support\Facades\Redirect; 
use Illuminate\support\Facades\Auth;
use DB;
 

class Registro_sistemaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //$request->user()->authorizeRoles('admin');  
        $registro_sis=DB::table('registro_sistema as reg')
        ->join("users as us", "us.id", "=", "reg.user_id")
        ->select("reg.id","us.username","us.email","reg.fecha_ingreso","reg.user_id"  ) 
        ->where("us.id", "=", Auth::id())

//->paginate(5)  
->get(); 
   
return view('inicio')->with ('registro_sis',$registro_sis);
       //dd($registro_sis);
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

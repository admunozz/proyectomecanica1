<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\support\Facades\Auth;
use App\User;
use App\Empleado;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
       //$request->user()->authorizeRoles('admin');  
       $registro_sis=DB::table('registro_sistema as reg')
       ->join("users as us", "us.id", "=", "reg.user_id")
        
       ->select("reg.id","us.username","us.email","reg.fecha_ingreso","reg.user_id"   ) 
       ->where("us.id", "=", Auth::id())

//->paginate(5)  
->get(); 
        
$emp= DB::table('users as us')
->join("empleados as em", "em.id", "=", "us.empleado_id" )
  ->select('em.nombre_completo', 'em.id','em.nro_identificacion')
 ->where("us.id", "=", Auth::id())
->get();
 
return view('inicio')->with ('registro_sis',$registro_sis)->with('emp',$emp);
      //dd($registro_sis);
    }
    
}

<?php

namespace App\Http\Controllers;
use Image;
 

use Illuminate\Http\Request;
use Illuminate\support\Facades\Auth;


use App\User;
use DB;
use App\Role;
use Illuminate\Support\Facades\Redirect; 
use App\Empleado;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
{
  /*  if($request)
    {
    $query=trim($request->get('searchText'));
    $usuario=User::orderBy('id','DESC')->paginate(3);
    return view('usuario.index',["usuario"=>$usuario,"searchText"=>$query]);
    
    }     
     */
  $request->user()->authorizeRoles('admin');   
 
$rol=User ::join("role_user", "role_user.user_id", "=", "users.id")
->join("empleados", "empleados.id", "=", "users.empleado_id")
->join("roles", "roles.id", "=", "role_user.role_id")
 

//->where("users.id", "=", Auth::id())
->select("users.id","users.username","users.email","roles.description","users.empleado_id","empleados.nro_identificacion","empleados.nombre_completo","users.status") 
//->paginate(5)  
->get(); 
   
   return view('usuario.index' )->with ('rol',$rol);
   //   dd($rol);
  }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
              $request->user()->authorizeRoles('admin');  
        $roles=Role::orderBy('id','DESC')
        ->select('roles.description', 'roles.id')
        ->get();
      
           
        $emp=Empleado::orderBy('id','DESC')
        ->select('empleados.nombre_completo', 'empleados.id','empleados.nro_identificacion')
        ->get();
        return view('auth.register')->with('emp',$emp)->with('roles',$roles);  
        

        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    
          
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
    public function edit($id )
 
    
       
{}
        
         


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      

        $avatar = $data['avatar'];
        $filename = time() . '.' . $avatar->getClientOriginalExtension();
        Image::make($avatar)->resize(300, 300)->save( public_path('/uploads/avatars/' . $filename) );
       
        $users = User::findOrFail($id);
        ([
                'empleado_id' => $data['empleado'],
             'username' => $data['username'],
             'email' => $data['email'],
             'password' => bcrypt($data['password']),
             'avatar' => $filename,
        
             ]); 
             $users->roles()
             ->attach(Role::where('id', $data['rol'])->first());
             $users->update();
             return Redirect::to('usuario');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user=User::findOrFail($id);
        $user->delete();
        return Redirect::to('usuario');
    }

  public function inactivar($id)
  {
    $users=User::findOrFail($id);
 //dd($users);
    $users->status =0;
    $users->save();
    return Redirect::to('usuario');
  }
  public function activar($id)
  {
    $users=User::findOrFail($id);
 
    $users->status =1;
    $users->save();
    return Redirect::to('usuario');
  }
}

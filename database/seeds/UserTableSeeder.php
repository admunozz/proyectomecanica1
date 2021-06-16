<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Role;


class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role_emp = Role::where('name', 'emp')->first();
 $role_admin = Role::where('name', 'admin')->first();
 $user = new User();
 
 $user->username = 'Empleado';
 $user->email = 'empleado@example.com';
 $user->avatar='default.jpg';
  $user->status='1';
  $user->empleado_id='2';

 $user->password = bcrypt('empleado');
 $user->save();
 $user->roles()->attach($role_emp);

 $user = new User();
 $user->username = 'Admin';
 $user->email = 'admin@example.com';
 $user->avatar='default.jpg';
 $user->status='1';
 $user->empleado_id='1';

 $user->password = bcrypt('administrador');
 $user->save();
 $user->roles()->attach($role_admin);
}
}
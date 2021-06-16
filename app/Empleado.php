<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
 protected $fillable = ['nombre_completo','nro_identificacion','fecha_nacimiento
 ','direccion','telefono'];
 public $timestamps = false;
 //Relacion con la tabla User
public function user()
 {
 return $this->hasOne('App\User');
 }
}
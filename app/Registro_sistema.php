<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Registro_sistema extends Model
{
 protected $fillable = ['fecha_ingreso'];
 public $timestamps = false;

    public function users()
    {
     return $this
      ->belongsTo('App\User') 
     ->withTimestamps();
    }
    
}

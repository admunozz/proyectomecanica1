<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

 


Auth::routes();
Route::get('usuarioi/{id}','UserController@inactivar');
Route::get('usuarioa/{id}','UserController@activar');
Route::get('/home', 'HomeController@index')->name('home');
Route::resource('usuario','UserController');
 Route::resource('inicio','Registro_sistemaController'); 
Route::get('/entrada', 'EntradaController@index')->name('home');
Route::get('/salida', 'SalidaController@index')->name('home');
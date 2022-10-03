<?php

use App\Http\Controllers\knockoutController;
use App\Http\Controllers\phpController;
use App\Http\Controllers\pythonController;

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


Route::get('/', [pythonController::class, '__construct']);

Route::get('knockout-materi1/{id}', [knockoutController::class, 'index']);

Route::post('post/{id}',[knockoutController::class,'next']);

Route::get('php1/{id}',[phpController::class,'php']);
Route::get('python1/{id}', [pythonController::class, 'python']);

?>

<?php

use App\Http\Controllers\knockoutController;
use App\Http\Controllers\phpController;
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


Route::get('/', [knockoutController::class, '__construct']);

Route::get('knockout-materi1/', [knockoutController::class, 'index']);
Route::get('knockout-materi2/', [knockoutController::class, 'index2']);
Route::get('knockout-materi3/', [knockoutController::class, 'index3']);
Route::get('knockout-materi4/', [knockoutController::class, 'index4']);
Route::get('knockout-materi5/', [knockoutController::class, 'index5']);

Route::post('post/{id}',[knockoutController::class,'next']);

Route::get('php1/',[phpController::class,'php']);
Route::get('php2/', [phpController::class, 'php2']);
Route::get('php3/', [phpController::class, 'php3']);
Route::get('php4/', [phpController::class, 'php4']);
Route::get('php5/', [phpController::class, 'php5']);

?>

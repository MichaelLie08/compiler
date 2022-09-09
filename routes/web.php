<?php

use App\Http\Controllers\knockoutController;
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

Route::get('/', [knockoutController::class, 'test']);
Route::get('index2/', [knockoutController::class, 'index2']);
Route::get('index3/', [knockoutController::class, 'index3']);
Route::get('index4/', [knockoutController::class, 'index4']);
Route::get('index5/', [knockoutController::class, 'index5']);




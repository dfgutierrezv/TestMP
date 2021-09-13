<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\RegionController;
use App\Http\Controllers\API\ProvinciaController;
use App\Http\Controllers\API\CiudadController;
use App\Http\Controllers\API\CalleController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('regiones',[RegionController::class,'index']);
Route::get('provincias/{id}',[ProvinciaController::class,'index']);
Route::get('ciudades/{id}',[CiudadController::class,'index']);
Route::get('calles/{id}',[CalleController::class,'index']);
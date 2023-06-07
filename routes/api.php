<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\MasterController;
use App\Http\Controllers\RequestController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::post('logIn', [AuthController::class, 'login']);
Route::post('create', [AuthController::class, 'registration']);

Route::get('master/img/{id}', [MasterController::class, 'getImg']);
Route::get('master', [MasterController::class, 'index']);
Route::get('master/{id}', [MasterController::class, 'show']);

Route::middleware('auth:sanctum')->group(function(){
    Route::get('logOut', [AuthController::class, 'logout']);
    
    Route::get('user/ban/{id}', [UserController::class, 'ban'])->middleware('admin');

    Route::post('master/add', [MasterController::class, 'createMaster'])->middleware('admin');
    Route::patch('master/{id}', [MasterController::class, 'update'])->middleware('admin');
    Route::delete('master/{id}', [MasterController::class, 'delete'])->middleware('admin');

    Route::delete('master/img/{id}', [MasterController::class, 'deleteImg'])->middleware('admin');
    Route::post('master/img/{id}', [MasterController::class, 'addImg'])->middleware('admin');
    
    Route::post('request', [RequestController::class, 'store']);
    Route::post('request/{id}', [RequestController::class, 'masterRes'])->middleware('admin');
    Route::get('request', [RequestController::class, 'show'])->middleware('admin');
    Route::get('request/user', [RequestController::class, 'index']);
});

<?php

use App\Models\Request;
use App\Models\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('index');
});
Route::get('autoriz', function () {
    return view('autoriz');
});
Route::get('registr', function () {
    return view('registr');
});
Route::get('personal', function () {
    return view('personal');
});
Route::get('master', function () {
    return view('master');
});
Route::get('adminzayavka', function () {
    $requests = Request::all();
    return view('adminzayavka', compact('requests'));
});
Route::get('adminredmast', function () {
    return view('adminredmast');
});
Route::get('adminpols', function () {
    $users = User::all();
    return view('adminpols', compact('users'));
});
Route::get('adminmaster', function () {
    return view('adminmaster');
});
Route::get('adminaddmast', function () {
    return view('adminaddmast');
});
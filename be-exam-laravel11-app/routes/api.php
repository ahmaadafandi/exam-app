<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');

Route::middleware('auth:api')->get('/get/user', function (Request $request) {
    $user = $request->user(); $role = $user->hasRole('administrator') ? 'administrator' : 'user';
    $user->setAttribute('role', $role);
    return $user;
});

Route::group(['middleware' => ['auth:api']], function () {
    Route::get('/get/user', function (Request $request) {
        $user = $request->user(); $role = $user->hasRole('administrator') ? 'administrator' : 'user';
        $user->setAttribute('role', $role);
        return $user;
    });
});

Route::group(['middleware' => ['auth:api']], function () {
    Route::resource('/users', App\Http\Controllers\UserController::class);
    Route::resource('/soal', App\Http\Controllers\SoalController::class);
    Route::resource('/jenis', App\Http\Controllers\JenisController::class);
});

Route::post('/soal/ckeditor/image', [App\Http\Controllers\SoalController::class, 'soalCkeditorImage']);

Route::post('/register', App\Http\Controllers\Api\RegisterController::class)->name('register');
Route::post('/login', App\Http\Controllers\Api\LoginController::class)->name('login');
Route::post('/logout', App\Http\Controllers\Api\LogoutController::class)->name('logout');

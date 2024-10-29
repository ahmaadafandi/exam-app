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
    Route::post('/user/setting/profile', [App\Http\Controllers\UserController::class, 'settingProfile']);

    Route::resource('/soal', App\Http\Controllers\SoalController::class);
    Route::post('/soal/jawaban/multiple-store', [App\Http\Controllers\SoalController::class, 'multipleStore']);
    Route::get('/soal/{soal_id}/kunci-jawaban', [App\Http\Controllers\SoalController::class, 'getKunciJawaban']);
    Route::delete('/soal/kunci-jawaban/{id}', [App\Http\Controllers\SoalController::class, 'deleteKunciJawaban']);
    
    Route::resource('/jenis', App\Http\Controllers\JenisController::class);
    Route::post('/jenis/multiple-store', [App\Http\Controllers\JenisController::class, 'multipleStore']);
    
    Route::resource('/paket', App\Http\Controllers\PaketController::class);
    Route::post('/paket/multiple-store', [App\Http\Controllers\PaketController::class, 'multipleStore']);
    Route::get('/paket/perolehan/nilai/{ujian_id}', [App\Http\Controllers\PaketController::class, 'getPerolehanNilaiUjianPaket']);

    Route::resource('/ujian', App\Http\Controllers\UjianController::class);
    Route::get('/ujian/paket/{paket_id}', [App\Http\Controllers\UjianController::class, 'getUjianPaket']);
    Route::get('/ujian/pembahasan/{ujian_id}', [App\Http\Controllers\UjianController::class, 'getUjianPembahasan']);
});

Route::post('/soal/ckeditor/image', [App\Http\Controllers\SoalController::class, 'soalCkeditorImage']);

Route::post('/register', App\Http\Controllers\Api\RegisterController::class)->name('register');
Route::post('/login', App\Http\Controllers\Api\LoginController::class)->name('login');
Route::post('/logout', App\Http\Controllers\Api\LogoutController::class)->name('logout');

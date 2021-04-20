<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\FisikController;
use App\Http\Controllers\PengawasanController;
use App\Http\Controllers\PerencanaanController;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::group(["middleware" => "auth:sanctum"], function () {
  // Fisik
  // Insert Fisik
  Route::post("fisik", [FisikController::class, "insert"]);
  // Edit Fisik
  Route::put("fisik/{id_fisik}", [FisikController::class, "edit"]);
  // Get All Fisik
  Route::get("fisik", [FisikController::class, "getAll"]);
  // Get Fisik By ID
  Route::get("fisik/{id_fisik}", [FisikController::class, "getById"]);
  // Delete Fisik By ID
  Route::delete("fisik/{id_fisik}", [FisikController::class, "deleteFisik"]);

  // Pengawasan
  // Insert Pengawasan
  Route::post("pengawasan", [PengawasanController::class, "insert"]);
  // Edit Pengawasan
  Route::put("pengawasan/{id_pengawasan}", [PengawasanController::class, "edit"]);
  // Get All Pengawasan
  Route::get("pengawasan", [PengawasanController::class, "getAll"]);
  // Get Pengawasan By ID
  Route::get("pengawasan/{id_pengawasan}", [PengawasanController::class, "getById"]);
  // Delete Pengawasan By ID
  Route::delete("pengawasan/{id_pengawasan}", [PengawasanController::class, "deletePengawasan"]);

  // Perencanaan
  // Insert Perencanaan
  Route::post("perencanaan", [PerencanaanController::class, "insert"]);
  // Edit Perencanaan
  Route::put("perencanaan/{id_perencanaan}", [PerencanaanController::class, "edit"]);
  // Get All Perencanaan
  Route::get("perencanaan", [PerencanaanController::class, "getAll"]);
  // Get Perencanaan By ID
  Route::get("perencanaan/{id_perencanaan}", [PerencanaanController::class, "getById"]);
  // Delete Perencanaan By ID
  Route::delete("perencanaan/{id_perencanaan}", [PerencanaanController::class, "deletePerencanaan"]);
});

// Print Laporan Fisik
Route::get('cetak-fisik', [FisikController::class, "printFisik"]);
// Print Laporan Pengawasan
Route::get('cetak-pengawasan', [PengawasanController::class, "printPengawasan"]);
// Print Laporan Perencanaan
Route::get('cetak-perencanaan', [PerencanaanController::class, "printPerencanaan"]);

// Login
Route::post('login', [AuthController::class, "login"]);

// Register
Route::post('register', [AuthController::class, "register"]);

// Cek user saat ini
Route::middleware("auth:sanctum")->get("user", [AuthController::class, "me"]);

// Token
// Bearer 1|QizEBblhibu9hpQqQDb5K2Ep4vzLPtUFy4mkB8wY
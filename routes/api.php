<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\KontrakController;
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
  // Insert Kontrak
  Route::post("kontrak", [KontrakController::class, "insert"]);
  // Edit Kontrak
  Route::put("kontrak/{id_kontrak}", [KontrakController::class, "edit"]);
  // Get All Kontrak
  Route::get("kontrak", [KontrakController::class, "getAll"]);
  // Get Kontrak By ID
  Route::get("kontrak/{id_kontrak}", [KontrakController::class, "getById"]);
  // Delete Kontrak By ID
  Route::delete("kontrak/{id_kontrak}", [KontrakController::class, "deleteKontrak"]);
});

// Print Laporan Kontrak
Route::get('cetak-kontrak', [KontrakController::class, "printKontrak"]);

// Login
Route::post('login', [AuthController::class, "login"]);

// Register
Route::post('register', [AuthController::class, "register"]);

// Cek user saat ini
Route::middleware("auth:sanctum")->get("user", [AuthController::class, "me"]);

// Token
// Bearer 1|QizEBblhibu9hpQqQDb5K2Ep4vzLPtUFy4mkB8wY
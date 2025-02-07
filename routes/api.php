<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Ogrenci;
use Illuminate\Support\Facades\Hash;

use Illuminate\Support\Facades\Auth;
Route::middleware(\App\Http\Middleware\JsonMiddleware::class)->group(function (){
    Route::get('/user', function (Request $request) {
       // return $request->user()->id;
        return new \App\Http\Resources\OgrenciResource(Ogrenci::findOrFail($request->user()->id));
    })->middleware('auth:sanctum');


    Route::post('/login',[\App\Http\Controllers\OgrenciAuthController::class,'login'])->name('login');

    Route::middleware('auth:sanctum')->post('/logout',[\App\Http\Controllers\OgrenciAuthController::class,'logout'])->name('logout');

    Route::middleware('auth:sanctum')->group(function (){
        Route::get('/randevu/{makid}',[\App\Http\Controllers\RandevuController::class,'getRandevuDays']);
        Route::get('/randevu/{makid}/{tarih}',[\App\Http\Controllers\RandevuController::class,'getDaysHours']);
        Route::post('/randevu/{makid}/{tarih}',[\App\Http\Controllers\RandevuController::class,'createRandevu']);

        Route::get('/fastrandevu/',[\App\Http\Controllers\FastRandevuController::class,'getAllAvailableDays']);
        Route::get('/fastrandevu/{tarih}',[\App\Http\Controllers\FastRandevuController::class,'handleFastRandevu']);



        Route::get('/allrandevus',[\App\Http\Controllers\RandevuController::class,'tumRandevularim']);
        Route::get('/randevularim',[\App\Http\Controllers\RandevuController::class,'aktifRandevularim']);
        Route::delete('/randevularim/{randevuId}',[\App\Http\Controllers\RandevuController::class,'cancelRandevu']);

        Route::get('/makine',[\App\Http\Controllers\MakineController::class,'index']);

    });






});

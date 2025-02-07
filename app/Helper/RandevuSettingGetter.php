<?php

namespace App\Helper;

use App\Models\RandevuSetting;
use Illuminate\Support\Carbon;

class RandevuSettingGetter
{
 public static function getCurrentSettings(){
     // Mevcut tarih ve saati al
     $now = Carbon::now();

     // 'time_for_activation' değeri geçmeyen en son RandevuSetting kaydını al
     $ayar = RandevuSetting::where('time_for_activation', '<=', $now)
         ->orderBy('created_at', 'desc')
         ->first();

     // Eğer geçerli bir ayar yoksa, en yeni kaydı getir
     if ($ayar === null) {
         return RandevuSetting::latest()->first();
     }

     return $ayar;
 }
}

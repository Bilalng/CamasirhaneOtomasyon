<?php

namespace App\Helper;

use App\Models\Makine;
use App\Models\Randevu;
use Carbon\Carbon;

class RandevuHelper
{
    public static function getAvailableDays()
    {
        $startOfWeek = Carbon::now()->startOfWeek();
        $endOfWeek = Carbon::now()->endOfWeek();

        $days = [];


        for ($date = $startOfWeek; $date <= $endOfWeek; $date->addDay()) {
            $days[] = $date->format('Y-m-d');
        }
        return $days;
    }

    public static function getDateHours($tarih)
    {
        $date = strtolower(Carbon::parse($tarih)->format('l'));
        $guncelAyar = RandevuSettingGetter::getCurrentSettings();
        return $guncelAyar[$date];

    }


    public static function checkIfTimeSlotExists($tarih, $start_time, $end_time)
    {
        $dayHours = self::getDateHours($tarih);

        foreach ($dayHours as $timeSlot) {

            if ($timeSlot['start_time'] == $start_time && $timeSlot['end_time'] == $end_time) {
                return true;
            }
        }
        return false;

    }

    public static function isMachineAvailableAtThisTime($makid, $tarih, $start_time, $end_time)
    {
        //Makine ID
        //Güncel Hafta İçerisinde mi
        //Tarihin Randevuları
        // Tarihin saatleri
        // Saat Aralıkları uyuyor mu
        // 1. Makine ID'sine göre makineyi kontrol et

        // Verilen tarihe göre günün saat aralıklarını al


        $makine = Makine::find($makid);

        if (!$makine || !$makine->isActive) {
            return "makine aktif değil";
        }


        $isValid = self::checkIfTimeSlotExists($tarih, $start_time, $end_time);
        if (!$isValid) {
            return "saat hatası";
        }

        $randevular = Randevu::where('makine_id', $makid)
            ->whereDate('tarih', $tarih)
            ->whereTime('baslangic_saati', '=', $start_time)
            ->whereTime('bitis_saati', '=', $end_time)
            ->get();

        if ($randevular->isEmpty()){
            return true;
        }else{
            return false;
        }

    }

}

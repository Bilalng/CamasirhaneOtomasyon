<?php

namespace App\Http\Controllers;

use App\Helper\RandevuHelper;
use App\Http\Resources\MakineResource;
use App\Models\Makine;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FastRandevuController extends Controller
{
    public function handleFastRandevu($tarih, Request $request)
    {
        // Parametreleri kontrol et
        if ($request->has('start_time') && $request->has('end_time')) {
            // Eğer start_time ve end_time varsa, ilgili fonksiyonu çağır
            return $this->getAvailableMachines($tarih, $request->query('start_time'), $request->query('end_time'));
        } else {
            // Aksi takdirde, başka bir fonksiyonu çağır
            return $this->getDaysTimes($tarih);
        }
    }

    // Uygun günleri getirme
    public function getAllAvailableDays()
    {
        $tarihler = RandevuHelper::getAvailableDays();

        $bugun = Carbon::today(); // Bugünün tarihi
        $haftaBaslangici = $bugun->copy()->startOfWeek();
        $haftaBitisi = $bugun->copy()->endOfWeek();

        $gunler = collect($tarihler)->map(function ($tarih) use ($bugun, $haftaBaslangici, $haftaBitisi) {
            $tarihCarbon = Carbon::createFromFormat('Y-m-d', $tarih);
            $dayName = $tarihCarbon->dayName; // Gün ismi al
            $isAvailable = $tarihCarbon->greaterThan($bugun) && $tarihCarbon->between($haftaBaslangici, $haftaBitisi);

            return [
                'tarih' => $tarih,
                'gun' => $dayName,
                'isAvailable' => $isAvailable,
            ];
        });

        return response()->json([
            'code' => 200,
            'success' => true,
            'message' => 'İstek Başarılı',
            'data' => ['gunler' => $gunler]
        ]);
    }


    // günün uygun saatlerini getirme
    public function getDaysTimes($tarih){
        $validator = Validator::make(['tarih' => $tarih], [
            'tarih' => 'required|date|date_format:Y-m-d|this_week|after_or_equal:today',
        ]);
        if ($validator->fails()) {

            return response()->json([
                'message' => 'Geçersiz tarih formatı veya tarih bu hafta içinde değil veya bugün değil',
                'tarih' => $validator->errors()->all()
            ], 422);
        }
        $saatler = RandevuHelper::getDateHours($tarih);
        $aktifMakineler = Makine::where('isActive',1)->get();
        $currentTime = Carbon::now();
        foreach ($saatler as $keySaat => $saat){
            $time = Carbon::createFromFormat('Y-m-d-H:i:s',$tarih.'-'.$saat['start_time']);
             if (!$currentTime->gt($time)) {
                 foreach ($aktifMakineler as $keyMakine => $makine) {
                     $isAvailable = RandevuHelper::isMachineAvailableAtThisTime($makine->id, $tarih, $saat['start_time'], $saat['end_time']);
                     $saatler[$keySaat]['isAvailable'] = $isAvailable;
                 }
             }else{
                 $saatler[$keySaat]['isAvailable'] = false;
             }
        }

        return response()->json([
            'message' => $tarih. ' için saatler',
            'saatler' => $saatler,
        ]);
    }
    public function getAvailableMachines($tarih, $start_time, $end_time)
    {
        $isExist = RandevuHelper::checkIfTimeSlotExists($tarih,$start_time,$end_time);

        if ($isExist) {
            $makineler = Makine::where('isActive', 1)->get();
            foreach ($makineler as $key => $makine) {
                $isAvailable = RandevuHelper::isMachineAvailableAtThisTime($makine->id, $tarih, $start_time, $end_time);
                $makineler[$key]['isAvailable'] = $isAvailable;

            }
            $dayName = Carbon::createFromFormat('Y-m-d', $tarih)->dayName;
            return response()->json([
                'message' => 'Mevcut makineler',
                'tarih' => $tarih.' '.$dayName,
                'start_time' => $start_time,
                'end_time' => $end_time,
                'makineler' => MakineResource::collection($makineler)
            ]);
        }
        else{
            return response()->json(['message' => $tarih.' için böyle bir saat aralığı bulunmamakta'],422);
        }
    }
}

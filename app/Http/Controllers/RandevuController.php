<?php

namespace App\Http\Controllers;

use App\Helper\RandevuHelper;
use App\Http\Resources\RandevuCollection;
use App\Http\Resources\RandevuResource;
use App\Models\Makine;
use App\Models\Randevu;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RandevuController extends Controller
{
    public function getRandevuDays($makid)
    {
        $makine = Makine::where('isActive', 1)->where('id', $makid)->first();

        if (!$makine) {
            return response()->json(['message' => 'Böyle bir makine yok veya devre dışı'], 404);
        }
        $days = RandevuHelper::getAvailableDays();

        return response()->json(
            [
                'message' => $makine->name . ' için günler getirildi',
                'makineId' => $makine->id,
                'gunler' => $days
            ]);
    }

    public function getDaysHours($makid, $tarih)
    {
        $makine = Makine::where('isActive', 1)->where('id', $makid)->first();

        if (!$makine) {
            return response()->json(['message' => 'Böyle bir makine yok veya devre dışı'], 404);
        }

        $validator = Validator::make(['tarih' => $tarih], [
            'tarih' => 'required|date|date_format:Y-m-d|this_week|after_or_equal:today',
        ]);

        if ($validator->fails()) {

            return response()->json([
                'message' => 'Geçersiz tarih formatı veya tarih bu hafta içinde değil',
                'tarih' => $validator->errors()->all()
            ], 422);
        }

        $saatler = RandevuHelper::getDateHours($tarih);
        foreach ($saatler as $key => $saat){
            $isAvailable= RandevuHelper::isMachineAvailableAtThisTime($makid,$tarih,$saat['start_time'],$saat['end_time']);
            $saatler[$key]['available'] = $isAvailable;
        }

        return response()->json([
            'saatler' => $saatler,
        ]);
    }

    public function createRandevu(Request $request, $makid, $tarih)
    {
        //Validasyonlar
        $makine = Makine::where('isActive', 1)->where('id', $makid)->first();

        if (!$makine) {
            return response()->json(['message' => 'Böyle bir makine yok veya devre dışı'], 404);
        }


        $validator = Validator::make(array_merge($request->all(), ['tarih' => $tarih]), [
            'tarih' => 'required|date|date_format:Y-m-d|this_week|after_or_equal:today',
            'start_time' => 'required|date_format:H:i:s',
            'end_time' => 'required|date_format:H:i:s|after:start_time',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Geçersiz veri',
                'errors' => $validator->errors()->all()
            ], 422);
        }
        //Validasyon sonu

        $start_time = $request->start_time;
        $end_time = $request->end_time;


        //Randevunun olup olmadığınnı kontrolü
        $startOfWeek = Carbon::now()->startOfWeek();
        $endOfWeek = Carbon::now()->endOfWeek();
        $userRandevusu = Randevu::where('ogrenci_id', $request->user()->id)
            ->whereBetween('tarih', [$startOfWeek, $endOfWeek])
            ->first();

        if ($userRandevusu) {
            return response()->json([
                'message' => 'Bu hafta zaten bir randevu oluşturdunuz. Haftada yalnızca bir kez randevu alabilirsiniz.',
            ], 403);
        }

        //Randevu var mı?
        $canCreate = RandevuHelper::isMachineAvailableAtThisTime($makid, $tarih, $start_time, $end_time);

        if ($canCreate) {

            $randevu = Randevu::create([
                'makine_id' => $makid,
                'ogrenci_id' => $request->user()->id,
                'tarih' => $tarih,
                'baslangic_saati' => $start_time,
                'bitis_saati' => $end_time,
                'is_verified' => false,
            ]);

            return response()->json([
                'message' => 'Randevu başarıyla oluşturuldu.',
                'randevu' => $randevu
            ], 201);
        } else {
            return response()->json([
                'message' => 'Bu makine için belirtilen tarih ve saatte randevu oluşturulamıyor.',
            ], 409);
        }
    }
    public function aktifRandevularim(Request $request){

        $userRandevulari = Randevu::where('ogrenci_id', $request->user()->id)->get();
        $waitingRandevular = $userRandevulari->filter(function ($randevu) {
            return $randevu->status === 'waiting';
        });
        return response()->json(['randevular' => RandevuResource::collection($waitingRandevular)]);
    }
    public function tumRandevularim(Request $request){

        $userRandevulari = Randevu::where('ogrenci_id', $request->user()->id)->orderBy('tarih','desc')->get();

        // Eğer randevular yoksa uygun bir mesaj döndür
        if ($userRandevulari->isEmpty()) {
            return response()->json([
                'message' => 'Henüz bir randevunuz bulunmamaktadır.',
                'randevular' => []
            ], 200);
        }

        // Randevuları JSON olarak döndür
        return response()->json([
            'message' => 'Randevular başarıyla alındı.',
            'randevular' => new RandevuCollection($userRandevulari)
        ], 200);
    }
    public function cancelRandevu(Request $request,$randevuId){
        $randevu = Randevu::findOrFail($randevuId);


        if (!$randevu) {
            return response()->json(['message' => 'Randevu bulunamadı.'], 404);
        }


        if ($randevu->ogrenci_id !== $request->user()->id) {
            return response()->json(['message' => 'Bu randevu size ait değil.'], 403);
        }


        if ($randevu->status !== 'waiting') {
            return response()->json(['message' => 'Randevu süresi geçmiş ve iptal edilemez.'], 409);
        }

        $randevu->delete();

        return response()->json(['message' => 'Randevu başarıyla iptal edildi.'], 200);
    }




}

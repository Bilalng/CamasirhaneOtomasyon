<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Randevu extends Model
{
    use HasFactory;


    protected $fillable = [
        'makine_id',
        'ogrenci_id',
        'tarih',
        'baslangic_saati',
        'bitis_saati',
        'is_verified',
    ];

    public function ogrenci(){
        return $this->belongsTo(Ogrenci::class);
    }
    public function makine(){
        return $this->belongsTo(Makine::class);
    }

    public function getFulltarihAttribute(){
        $baslangic = Carbon::createFromFormat('H:i:s', $this->baslangic_saati)->format('H:i');
        $bitis = Carbon::createFromFormat('H:i:s', $this->bitis_saati)->format('H:i');
        $tarih = Carbon::createFromFormat('Y-m-d', $this->tarih)->format('d/m/Y');

        return "{$baslangic} - {$bitis} {$tarih}";

        //return Carbon::createFromFormat('Y-m-d H:i:s', $this->tarih . ' ' . $this->baslangic_saati);
    }
    public function getFullsaatAttribute(){
        $baslangic = Carbon::createFromFormat('H:i:s', $this->baslangic_saati)->format('H:i');
        $bitis = Carbon::createFromFormat('H:i:s', $this->bitis_saati)->format('H:i');
        return "{$baslangic} - {$bitis}";
    }

    public function getStatusAttribute(){
        $tarih = Carbon::createFromFormat('Y-m-d H:i:s',$this->tarih.' '.$this->baslangic_saati);


        if ($tarih->isPast()){
            if ($this->is_verified){
                return 'yes';
            }else{
                return 'no';
            }
        }else{
            return 'waiting';
        }

    }
    public function getSpecialTarihAttribute(){
        $tarih = Carbon::createFromFormat('Y-m-d',$this->tarih)->translatedFormat('l d/m/Y');

        return $tarih;
    }

}

<?php

namespace App\Models;


use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Ogrenci extends Authenticatable
{
    use HasFactory, HasApiTokens,Notifiable;
    protected $fillable = [
        'ad',
        'soyad',
        'blok_ad',
        'oda_numarasi',
        'email',
        'password',
    ];
    protected $hidden = [
        'password',

    ];
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    public function getFullnameAttribute(): string
    {
        return $this->ad . ' ' . $this->soyad;
    }
    public function getFullroomAttribute(): string
    {
        return $this->blok_ad.'/'.$this->oda_numarasi;
    }

    public function setBlokAdAttribute($value)
    {

        if (stripos($value, 'Blok') === false) {
            $value .= ' Blok';
        } else {

            $value = preg_replace('/\bblok\b/i', 'Blok', $value);
        }


        $this->attributes['blok_ad'] = $value;
    }

    public function randevus(){
        return $this->hasMany(Randevu::class);
    }

}

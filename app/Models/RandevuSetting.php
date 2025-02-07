<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RandevuSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'monday',
        'tuesday',
        'wednesday',
        'thursday',
        'friday',
        'saturday',
        'sunday',
    ];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            // 'time_for_activation' alanını günün haftasındaki pazar günü 23:59 olarak ayarla
            $model->time_for_activation = now()->endOfWeek(); // Pazar günü 23:59
        });
    }
    public function getMondayAttribute($value)
    {
        return json_decode($value, true);
    }


    public function setMondayAttribute($value)
    {
        $this->attributes['monday'] = json_encode($value);
    }


    public function getTuesdayAttribute($value)
    {
        return json_decode($value, true);
    }


    public function setTuesdayAttribute($value)
    {
        $this->attributes['tuesday'] = json_encode($value);
    }


    public function getWednesdayAttribute($value)
    {
        return json_decode($value, true);
    }


    public function setWednesdayAttribute($value)
    {
        $this->attributes['wednesday'] = json_encode($value);
    }


    public function getThursdayAttribute($value)
    {
        return json_decode($value, true);
    }


    public function setThursdayAttribute($value)
    {
        $this->attributes['thursday'] = json_encode($value);
    }


    public function getFridayAttribute($value)
    {
        return json_decode($value, true);
    }


    public function setFridayAttribute($value)
    {
        $this->attributes['friday'] = json_encode($value);
    }


    public function getSaturdayAttribute($value)
    {
        return json_decode($value, true);
    }


    public function setSaturdayAttribute($value)
    {
        $this->attributes['saturday'] = json_encode($value);
    }


    public function getSundayAttribute($value)
    {
        return json_decode($value, true);
    }


    public function setSundayAttribute($value)
    {
        $this->attributes['sunday'] = json_encode($value);
    }
}

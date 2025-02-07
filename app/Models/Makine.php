<?php

namespace App\Models;

use App\Helper\RandevuHelper;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Makine extends Model
{
    use HasFactory;
    protected $fillable = ['id','name','isActive'];

    protected $casts = [
        'isActive' => 'boolean',
    ];
    public function getIsAvailableAttribute()
    {
        // $this->attributes['tarih'], $this->attributes['start_time'] gibi değerler gerekebilir
        return RandevuHelper::isMachineAvailableAtThisTime($this->id, request('tarih'), request('start_time'), request('end_time'));
    }
}

<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class OgrenciResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'ad' => $this->ad,
            'soyad' => $this->soyad,
            'email' => $this->email,
            'blok_ad' => $this->blok_ad,
            'oda_numarasi' => $this->oda_numarasi,

        ];
    }
}

<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MakineResource extends JsonResource
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
          'name' => $this->name,
          $this->mergeWhen(
              $request->has('start_time') && $request->has('end_time'),
              [
                  'isAvailable' => $this->isAvailable ?? false,
              ]
          ),
      ];
    }
}

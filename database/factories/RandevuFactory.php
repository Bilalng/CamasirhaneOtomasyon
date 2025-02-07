<?php

namespace Database\Factories;

use App\Models\Makine;
use App\Models\Ogrenci;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Randevu>
 */
class RandevuFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'makine_id' => Makine::inRandomOrder()->first()->id,
            'ogrenci_id' => Ogrenci::inRandomOrder()->first()->id,
            'tarih' => Carbon::now()->startOfWeek()->addDays(rand(0, 6))->toDateString(),
            'baslangic_saati' => '08:00:00',
            'bitis_saati' => '10:00:00',
            'is_verified' => $this->faker->boolean(),
        ];
    }
}

<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ogrenci>
 */
class OgrenciFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $bloklar = [
          'A Blok', 'B Blok', 'C Blok', 'D blok'
        ];

        return [
            'ad' => $this->faker->firstName('female'),
            'soyad' => $this->faker->lastName(),
            'email' => $this->faker->unique()->safeEmail(),
            'password' => bcrypt('123456'), // Varsayılan şifre
            'blok_ad' => $this->faker->randomElement($bloklar), // Blok adı
            'oda_numarasi' => $this->faker->numberBetween(100, 600), // Oda numarası
        ];
    }
}

<?php

namespace Database\Seeders;

use App\Models\RandevuSetting;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RandevuSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Örnek veri
        $data = [
            'pazartesi' => [
                [
                    'start_time' => '08:00:00',
                    'end_time' => '10:00:00',
                ],
                [
                    'start_time' => '10:00:00',
                    'end_time' => '12:00:00',
                ],
                [
                    'start_time' => '12:00:00',
                    'end_time' => '14:00:00',
                ],
            ],
            'sali' => [
                [
                    'start_time' => '08:00:00',
                    'end_time' => '10:00:00',
                ],
                [
                    'start_time' => '10:00:00',
                    'end_time' => '12:00:00',
                ],
            ],
            'carsamba' => [
                [
                    'start_time' => '10:00:00',
                    'end_time' => '11:00:00',
                ],
            ],
            'persembe' => [],
            'cuma' => [],
            'cumartesi' => [],
            'pazar' => [],
        ];

        // RandevuSetting kaydını oluştur
        RandevuSetting::create([
            'pazartesi' => $data['pazartesi'], // JSON encode devre dışı bırakıldı
            'sali' => $data['sali'],
            'carsamba' => $data['carsamba'],
            'persembe' => $data['persembe'],
            'cuma' => $data['cuma'],
            'cumartesi' => $data['cumartesi'],
            'pazar' => $data['pazar'],
           //'time_for_activation' => now()->endOfWeek(), // Pazar günü 23:59
        ]);
    }
}

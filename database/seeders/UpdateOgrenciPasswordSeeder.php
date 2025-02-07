<?php

namespace Database\Seeders;

use App\Models\Ogrenci;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UpdateOgrenciPasswordSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Tüm öğrencilerin parolasını '123456' olarak ayarlayın
        Ogrenci::query()->update(['password' => Hash::make('123456')]);
    }
}

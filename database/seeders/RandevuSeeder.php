<?php

namespace Database\Seeders;

use App\Models\Randevu;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RandevuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Randevu::factory()->count(10)->create();
    }
}

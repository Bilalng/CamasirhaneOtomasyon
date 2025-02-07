<?php

namespace Database\Seeders;

use App\Models\Ogrenci;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class OgrenciSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Ogrenci::factory()->count(50)->create();
    }
}

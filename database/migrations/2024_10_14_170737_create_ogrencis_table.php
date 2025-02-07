<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ogrencis', function (Blueprint $table) {

            $table->id();
            $table->string('ad');
            $table->string('soyad');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('blok_ad');
            $table->string('oda_numarasi');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ogrencis');
    }
};

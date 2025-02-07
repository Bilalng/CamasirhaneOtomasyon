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
        Schema::create('randevu_settings', function (Blueprint $table) {
            $table->id();
            $table->json('pazartesi')->nullable();
            $table->json('sali')->nullable();
            $table->json('carsamba')->nullable();
            $table->json('persembe')->nullable();
            $table->json('cuma')->nullable();
            $table->json('cumartesi')->nullable();
            $table->json('pazar')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('randevu_settings');
    }
};

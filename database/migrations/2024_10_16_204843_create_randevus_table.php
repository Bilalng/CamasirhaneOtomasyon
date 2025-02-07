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
        Schema::create('randevus', function (Blueprint $table) {
            $table->id();
            $table->foreignId('makine_id')->constrained();
            $table->foreignId('ogrenci_id')->constrained();
            $table->date('tarih');
            $table->time('saat');
            $table->boolean('is_verified')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('randevus');
    }
};

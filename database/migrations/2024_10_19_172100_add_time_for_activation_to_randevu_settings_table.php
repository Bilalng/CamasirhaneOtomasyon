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
        Schema::table('randevu_settings', function (Blueprint $table) {
            // Time for activation alanı ekleniyor
            $table->timestamp('time_for_activation')->nullable();
        });
    }

    public function down(): void
    {
        Schema::table('randevu_settings', function (Blueprint $table) {
            // Geri almak için time_for_activation alanı kaldırılıyor
            $table->dropColumn('time_for_activation');
        });
    }
};

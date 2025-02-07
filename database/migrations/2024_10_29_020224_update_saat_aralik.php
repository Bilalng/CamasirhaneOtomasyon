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
        Schema::table('randevus', function (Blueprint $table) {
            $table->time('baslangic_saati');
          $table->time('bitis_saati');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('randevus', function (Blueprint $table) {
            //
        });
    }
};

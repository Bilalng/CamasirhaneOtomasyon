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
            $table->renameColumn('saat', 'saat_aralik'); // Sütun adını değiştirme
            $table->string('saat_aralik')->change(); // Sütun tipini string olarak değiştirme
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

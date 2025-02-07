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
            $table->renameColumn('pazartesi', 'monday');
            $table->renameColumn('sali', 'tuesday');
            $table->renameColumn('carsamba', 'wednesday');
            $table->renameColumn('persembe', 'thursday');
            $table->renameColumn('cuma', 'friday');
            $table->renameColumn('cumartesi', 'saturday');
            $table->renameColumn('pazar', 'sunday');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('randevu_settings', function (Blueprint $table) {
            $table->renameColumn('monday', 'pazartesi');
            $table->renameColumn('tuesday', 'sali');
            $table->renameColumn('wednesday', 'carsamba');
            $table->renameColumn('thursday', 'persembe');
            $table->renameColumn('friday', 'cuma');
            $table->renameColumn('saturday', 'cumartesi');
            $table->renameColumn('sunday', 'pazar');
        });
    }
};

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
        Schema::create('tarif_hotel_2024', function (Blueprint $table) {
            $table->id('No');
            $table->string('Provinsi');
            $table->string('Satuan');
            $table->string('Tarif_Eselon_1');
            $table->string('Tarif_Eselon_2');
            $table->string('Tarif_Golongan_IV');
            $table->string('Tarif_Golongan_III_II_I');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tarif_hotel_2024');
    }
};
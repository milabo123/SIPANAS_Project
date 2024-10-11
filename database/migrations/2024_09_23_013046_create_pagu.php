<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('pagus', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('perjadin_id');
            $table->decimal('transport', 10, 2)->nullable();
            $table->decimal('uang_harian', 10, 2)->nullable();
            $table->decimal('hotel', 10, 2)->nullable();
            $table->decimal('taksi', 10, 2)->nullable();
            $table->decimal('representasi', 10, 2)->nullable();
            $table->decimal('paket_meeting', 10, 2)->nullable();
            $table->decimal('tiket_pesawat', 10, 2)->nullable(); // Added this line
            $table->decimal('total_pagu', 10, 2);
            $table->timestamps();

            $table->foreign('perjadin_id')->references('id')->on('perjadins');
        });
    }

    public function down()
    {
        Schema::dropIfExists('pagus');
    }
};
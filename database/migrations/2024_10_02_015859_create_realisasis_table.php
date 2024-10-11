<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('realisasi', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('perjadin_id');
            $table->string('nama');
            $table->string('nip');
            $table->string('pangkat');
            $table->string('jabatan');
            $table->string('golongan');
            $table->string('asal');
            $table->string('tujuan');
            $table->string('kegiatan');
            $table->string('no_akun');
            $table->integer('hari');
            $table->date('tanggal_keberangkatan');
            $table->decimal('transport', 15, 2)->nullable();
            $table->string('transport_file')->nullable();
            $table->decimal('hotel', 15, 2)->nullable();
            $table->string('hotel_file')->nullable();
            $table->decimal('uang_harian', 15, 2)->nullable();
            $table->decimal('taksi', 15, 2)->nullable();
            $table->string('taksi_file')->nullable();
            $table->decimal('paket_meeting', 15, 2)->nullable();
            $table->string('paket_meeting_file')->nullable();
            $table->decimal('representasi', 15, 2)->nullable();
            $table->decimal('tiket_pesawat', 15, 2)->nullable();
            $table->string('tiket_pesawat_file')->nullable();
            $table->decimal('total_realisasi', 15, 2);
            $table->timestamps();
        });

        if (Schema::hasTable('perjadin')) {
            Schema::table('realisasi', function (Blueprint $table) {
                $table->foreign('perjadin_id')
                      ->references('id')
                      ->on('perjadin')
                      ->onDelete('cascade');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('realisasi');
    }
};
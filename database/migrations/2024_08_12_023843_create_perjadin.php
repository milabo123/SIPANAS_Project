<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('perjadins', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pegawai_id');
            $table->string('nama');
            $table->string('nip');
            $table->string('jabatan');
            $table->string('pangkat');
            $table->string('golongan');
            $table->string('asal');
            $table->string('tujuan');
            $table->string('kegiatan');
            $table->string('no_akun');
            $table->integer('hari');
            $table->date('tanggal_keberangkatan');
            $table->date('tanggal_dibuat');
            $table->timestamps();
            
            $table->foreign('pegawai_id')->references('id')->on('pegawais');
        });
    }

    public function down()
    {
        Schema::dropIfExists('perjadins');
    }
};
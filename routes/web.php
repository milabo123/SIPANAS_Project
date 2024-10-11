<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\PerjadinController;
use App\Http\Controllers\KwitansiController;
use App\Http\Controllers\RealisasiController;
use App\Http\Controllers\KegiatanController;
use App\Http\Controllers\TarifHotelController;

Route::get('/', function () {
    return view('home');
})->name('home');

Route::get('/pegawai', [PegawaiController::class, 'index'])->name('pegawai.index');
Route::get('/pegawai/create', [PegawaiController::class, 'create'])->name('pegawai.create');
Route::post('/pegawai', [PegawaiController::class, 'store'])->name('pegawai.store');
Route::get('/pegawai/{id}/edit', [PegawaiController::class, 'edit'])->name('pegawai.edit');
Route::put('/pegawai/{id}', [PegawaiController::class, 'update'])->name('pegawai.update');
Route::delete('/pegawai/{id}', [PegawaiController::class, 'destroy'])->name('pegawai.destroy');
Route::get('/pegawai/{id}', [PegawaiController::class, 'show']);

Route::get('/perjadin', [PerjadinController::class, 'index'])->name('perjadin.index');
Route::get('/perjadin/create', [PerjadinController::class, 'create'])->name('perjadin.create');
Route::post('/perjadin', [PerjadinController::class, 'store'])->name('perjadin.store');
Route::get('/pegawai/{id}', [PerjadinController::class, 'getPegawaiData']);
Route::get('/perjadin/{id}/edit', [PerjadinController::class, 'edit'])->name('perjadin.edit');
Route::put('/perjadin/{id}', [PerjadinController::class, 'update'])->name('perjadin.update');
Route::delete('/perjadin/{id}', [PerjadinController::class, 'destroy'])->name('perjadin.destroy');
Route::get('/perjadin/{id}/download', [PerjadinController::class, 'downloadPDF'])->name('perjadin.download');

Route::get('/api/perjadin/{id}', [PerjadinController::class, 'getPerjadin']);

Route::get('/perjadin/realisasi', [RealisasiController::class, 'index'])->name('realisasi.index');
Route::get('/realisasi/create/{id}', [RealisasiController::class, 'create'])->name('realisasi.create');
Route::post('/realisasi/store/{id}', [RealisasiController::class, 'store'])->name('realisasi.store');

Route::get('/realisasi/export', [RealisasiController::class, 'export'])->name('realisasi.export');

Route::get('/kegiatan', [KegiatanController::class, 'index'])->name('kegiatan.index');
Route::get('/kegiatan/create', [KegiatanController::class, 'create'])->name('kegiatan.create');
Route::post('/kegiatan', [KegiatanController::class, 'store'])->name('kegiatan.store');

Route::get('/SBM', [TarifHotelController::class, 'index'])->name('SBM.index');
Route::post('/SBM/upload', [TarifHotelController::class, 'upload'])->name('SBM.upload');
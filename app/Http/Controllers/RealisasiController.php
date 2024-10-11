<?php

namespace App\Http\Controllers;

use App\Models\Perjadin;
use App\Models\Realisasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\RealisasiExport;

class RealisasiController extends Controller
{
    public function index()
    {
        $realisasis = Realisasi::with('perjadin')->get();
        return view('realisasi.index', compact('realisasis'));
    }

    public function create($id)
    {
        $perjadin = Perjadin::with('pagu')->findOrFail($id);
        return view('realisasi.create', compact('perjadin'));
    }

    public function store(Request $request, $id)
    {
        $perjadin = Perjadin::findOrFail($id);

        $validatedData = $request->validate([
            'nama' => 'required|string',
            'nip' => 'required|string',
            'pangkat' => 'required|string',
            'jabatan' => 'required|string',
            'golongan' => 'required|string',
            'asal' => 'required|string',
            'tujuan' => 'required|string',
            'kegiatan' => 'required|string',
            'no_akun' => 'required|string',
            'hari' => 'required|integer',
            'tanggal_keberangkatan' => 'required|date',
            'tiket_pesawat' => 'nullable|numeric',
            'transport' => 'nullable|numeric',
            'hotel' => 'nullable|numeric',
            'uang_harian' => 'nullable|numeric',
            'taksi' => 'nullable|numeric',
            'paket_meeting' => 'nullable|numeric',
            'representasi' => 'nullable|numeric',
            'tiket_pesawat_file' => 'nullable|file|mimes:png,jpg,jpeg|max:2048',
            'transport_file' => 'nullable|file|mimes:png,jpg,jpeg|max:2048',
            'hotel_file' => 'nullable|file|mimes:png,jpg,jpeg|max:2048',
            'taksi_file' => 'nullable|file|mimes:png,jpg,jpeg|max:2048',
            'paket_meeting_file' => 'nullable|file|mimes:png,jpg,jpeg|max:2048',
        ]);

        $realisasiData = array_merge($validatedData, [
            'perjadin_id' => $perjadin->id,
            'total_realisasi' => 0,
        ]);

        $fields = ['tiket_pesawat', 'transport', 'hotel', 'uang_harian', 'taksi', 'paket_meeting', 'representasi'];

        foreach ($fields as $field) {
            $realisasiData[$field] = $validatedData[$field] ?? 0;
            $realisasiData['total_realisasi'] += $realisasiData[$field];

            if ($request->hasFile("{$field}_file")) {
                $file = $request->file("{$field}_file");
                $path = $file->store('realisasi_files', 'public');
                $realisasiData["{$field}_file"] = $path;
            }
        }

        Realisasi::create($realisasiData);

        return redirect()->route('realisasi.index')->with('success', 'Realisasi berhasil disimpan.');
    }

    public function realisasi()
{
    $realisasis = Realisasi::with('perjadin')->get();
    return view('realisasi.index', compact('realisasis'));
}

public function export()
{
    return Excel::download(new RealisasiExport, 'realisasi.xlsx');
}

}
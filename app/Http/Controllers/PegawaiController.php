<?php

namespace App\Http\Controllers;

use App\Models\Pegawai;
use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->input('search');
    
        $pegawais = Pegawai::when($search, function ($query) use ($search) {
            return $query->where('nama', 'like', "%{$search}%");
        })->get();
    
        // Tambahkan variabel untuk menandai apakah pencarian dilakukan
        $isSearching = !empty($search);
    
        return view('pegawai.index', compact('pegawais', 'isSearching'));
    }

    public function create()
    {
        $pegawais = Pegawai::all(); // Atau query lain sesuai kebutuhan
        return view('pegawai.create', compact('pegawais'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'nip' => 'required|unique:pegawais',
            'nama' => 'required',
            'jabatan' => 'required',
            'pangkat' => 'required',
            'golongan' => 'required',
            'asal' => 'required',
        ]);

        Pegawai::create($request->all());

        return redirect()->route('pegawai.index')
            ->with('success', 'Pegawai berhasil ditambahkan.');
    }

    public function edit($id)
{
    $pegawai = Pegawai::findOrFail($id);
    return view('pegawai.edit', compact('pegawai'));
}

public function update(Request $request, $id)
{
    $request->validate([
        'nip' => 'required|unique:pegawais,nip,'.$id,
        'nama' => 'required',
        'jabatan' => 'required',
        'pangkat' => 'required',
        'golongan' => 'required',
        'asal' => 'required',
    ]);

    $pegawai = Pegawai::findOrFail($id);
    $pegawai->update($request->all());

    return redirect()->route('pegawai.index')
        ->with('success', 'Data pegawai berhasil diperbarui.');
}

public function destroy($id)
{
    $pegawai = Pegawai::findOrFail($id);
    $pegawai->delete();

    return redirect()->route('pegawai.index')
        ->with('success', 'Data pegawai berhasil dihapus.');
}

// app/Http/Controllers/PegawaiController.php
public function show($id)
{
    $pegawai = Pegawai::findOrFail($id); // Ambil pegawai berdasarkan ID
    return response()->json($pegawai); // Kembalikan data pegawai dalam format JSON
} // Tambahkan metode lain seperti show, edit, update, dan destroy sesuai kebutuhan
}
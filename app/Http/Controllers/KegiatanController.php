<?php

namespace App\Http\Controllers;

use App\Models\Kegiatan;
use Illuminate\Http\Request;

class KegiatanController extends Controller
{
    public function index()
    {
        $kegiatans = Kegiatan::all();
        return view('kegiatan.index', compact('kegiatans'));
    }

    public function create()
    {
        return view('kegiatan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_kegiatan' => 'required|string',
            'no_akun' => 'required|string',
            'tahun' => 'required|integer',
        ]);

        Kegiatan::create($request->all());

        return redirect()->route('kegiatan.index')
            ->with('success', 'Kegiatan created successfully.');
    }
}
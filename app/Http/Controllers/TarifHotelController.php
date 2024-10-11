<?php

namespace App\Http\Controllers;

use App\Models\TarifHotel2024;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\TarifHotelImport;
use Illuminate\Support\Facades\Log;

class TarifHotelController extends Controller
{
    public function index()
    {
        $tarifHotels = TarifHotel2024::paginate(15);
        return view('SBM.upload', compact('tarifHotels'));
    }

    public function upload(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls',
        ]);
    
        $file = $request->file('file');
    
        try {
            $import = new TarifHotelImport;
            Excel::import($import, $file);
    
            // Log beberapa baris pertama untuk debugging
            $array = Excel::toArray($import, $file);
            Log::info('First few rows of Excel:', array_slice($array[0], 0, 5));
    
            return redirect()->back()->with('success', 'Data berhasil diupload.');
        } catch (\Exception $e) {
            Log::error('Import error: ' . $e->getMessage());
            return redirect()->back()->with('error', 'Terjadi kesalahan: ' . $e->getMessage());
        }
    }
}
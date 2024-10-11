<?php
namespace App\Http\Controllers;

use App\Models\Pegawai;
use App\Models\Perjadin;
use App\Models\Kota;
use App\Models\Pagu;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Barryvdh\DomPDF\PDF;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use App\Models\Kegiatan;
use App\Models\TarifHotel2024;

class PerjadinController extends Controller
{

    protected $pdf;

    public function __construct(PDF $pdf)
    {
        $this->pdf = $pdf;
    }
    public function create()
    {
        $pegawais = Pegawai::all();
        $kotas = Kota::all();
        $kegiatans = Kegiatan::all();
        return view('perjadin.create', compact('pegawais', 'kotas', 'kegiatans'));
    }

    public function getPegawaiData($id)
    {
        $pegawai = Pegawai::findOrFail($id);
        return response()->json($pegawai);
    }

    
    public function store(Request $request)
    {
        Log::info('Memulai proses penyimpanan Perjadin');
        Log::info('Raw request data: ' . $request->getContent());
        Log::info('Data yang diterima: ' . json_encode($request->all()));

        // Validasi input
        $validatedData = $request->validate([
            'nama' => 'required|exists:pegawais,id',
            'nip' => 'required',
            'jabatan' => 'required',
            'pangkat' => 'required',
            'golongan' => 'required',
            'asal' => 'required',
            'tujuan' => 'required',
            'kegiatan' => 'required|exists:kegiatans,nama_kegiatan',
            'no_akun' => 'required',
            'hari' => 'required|integer|min:1',
            'tanggal_keberangkatan' => 'required|date',
            'tanggal_dibuat' => 'required|date',
            'pagu.tiket_pesawat' => 'nullable|numeric',
            'pagu.transport' => 'nullable|numeric',
            'pagu.uang_harian' => 'nullable|numeric',
            'pagu.hotel' => 'nullable|numeric',
            'pagu.taksi' => 'nullable|numeric',
            'pagu.representasi' => 'nullable|numeric',
            'pagu.paket_meeting' => 'nullable|numeric',
            'pagu.total_pagu' => 'nullable|numeric',
        ]);

        Log::info('Data yang lolos validasi: ' . json_encode($validatedData));

        DB::beginTransaction();

        try {
            // Siapkan data Perjadin
            $perjadinData = $validatedData;
            $perjadinData['pegawai_id'] = $validatedData['nama'];
            
            // Ambil nama pegawai berdasarkan ID
            $pegawai = Pegawai::findOrFail($perjadinData['pegawai_id']);
            $perjadinData['nama'] = $pegawai->nama;

            unset($perjadinData['pagu']);

            Log::info('Data Perjadin yang akan disimpan: ' . json_encode($perjadinData));

            // Simpan data Perjadin
            $perjadin = Perjadin::create($perjadinData);

            Log::info('Perjadin berhasil disimpan dengan ID: ' . $perjadin->id);

            $paguData = array_map(function($value) {
                return $value !== null && $value !== '' ? $value : 0;
            }, $request->input('pagu', []));
    
            $hari = $validatedData['hari'];
            $paguData['total_pagu'] = 
                $paguData['transport'] +
                ($paguData['uang_harian'] * $hari) +
                ($paguData['hotel'] * ($hari - 1)) +
                $paguData['taksi'] +
                ($paguData['representasi'] * $hari) +
                $paguData['paket_meeting'] +
                $paguData['tiket_pesawat'];
    
            $paguData['perjadin_id'] = $perjadin->id;    

            Log::info('Data Pagu yang akan disimpan: ' . json_encode($paguData));

            $pagu = Pagu::create($paguData);
            Log::info('Pagu berhasil disimpan dengan ID: ' . $pagu->id);

            DB::commit();

            Log::info('Transaksi berhasil, data tersimpan');

            return redirect()->route('perjadin.index')->with('success', 'Data Perjadin berhasil disimpan.');
        } catch (\Exception $e) {
            DB::rollback();
            Log::error('Error saat menyimpan data: ' . $e->getMessage());
            Log::error('Stack trace: ' . $e->getTraceAsString());
            return back()->withInput()->with('error', 'Terjadi kesalahan saat menyimpan data: ' . $e->getMessage());
        }
    }

    public function index(Request $request)
    {
        $search = $request->input('search');
        $selectedKegiatan = $request->input('kegiatan');
        $query = Perjadin::with('pagu');
    
        if ($search) {
            $query->where(function($q) use ($search) {
                $q->where('nama', 'LIKE', "%{$search}%")
                  ->orWhere('no_akun', 'LIKE', "%{$search}%");
            });
        }
    
        if ($selectedKegiatan) {
            $query->where('kegiatan', $selectedKegiatan);
        }
    
        $perjadins = $query->get();
        $isSearching = !empty($search);
        $kegiatans = Kegiatan::all();
    
        return view('perjadin.index', compact('perjadins', 'isSearching', 'kegiatans', 'selectedKegiatan'));
    }
    public function edit($id)
    {
        $perjadin = Perjadin::with('pagu')->findOrFail($id);
        $kotas = Kota::all();
        $kegiatans = Kegiatan::all();
        return view('perjadin.edit', compact('perjadin', 'kotas', 'kegiatans'));
    }


public function update(Request $request, $id)
{
    Log::info('Memulai proses update Perjadin');
    Log::info('Raw request data: ' . $request->getContent());

    // Validasi input
    $validatedData = $request->validate([
        'tujuan' => 'required',
        'kegiatan' => 'required|exists:kegiatans,nama_kegiatan',
        'no_akun' => 'required',
        'hari' => 'required|integer|min:1',
        'tanggal_keberangkatan' => 'required|date',
        'pagu.tiket_pesawat' => 'nullable|numeric',
        'pagu.transport' => 'nullable|numeric',
        'pagu.uang_harian' => 'nullable|numeric',
        'pagu.hotel' => 'nullable|numeric',
        'pagu.taksi' => 'nullable|numeric',
        'pagu.representasi' => 'nullable|numeric',
        'pagu.paket_meeting' => 'nullable|numeric',
        'pagu.total_pagu' => 'nullable|numeric',
    ]);

    Log::info('Data yang lolos validasi: ' . json_encode($validatedData));

    DB::beginTransaction();

    try {
        $perjadin = Perjadin::findOrFail($id);
        
        // Update Perjadin data
        $perjadin->update($validatedData);

        Log::info('Perjadin berhasil diupdate dengan ID: ' . $perjadin->id);

        // Update Pagu data
        $paguData = array_map(function($value) {
            return $value !== null && $value !== '' ? $value : 0;
        }, $request->input('pagu', []));

        $hari = $validatedData['hari'];
        $paguData['total_pagu'] = 
            $paguData['transport'] +
            ($paguData['uang_harian'] * $hari) +
            ($paguData['hotel'] * ($hari - 1)) +
            $paguData['taksi'] +
            ($paguData['representasi'] * $hari) +
            $paguData['paket_meeting'] +
            $paguData['tiket_pesawat'];

        $perjadin->pagu()->update($paguData);

        $perjadin->pagu()->update($paguData);

        Log::info('Pagu berhasil diupdate untuk Perjadin ID: ' . $perjadin->id);

        DB::commit();

        Log::info('Transaksi berhasil, data terupdate');

        return redirect()->route('perjadin.index')->with('success', 'Data Perjadin berhasil diupdate.');
    } catch (\Exception $e) {
        DB::rollback();
        Log::error('Error saat mengupdate data: ' . $e->getMessage());
        Log::error('Stack trace: ' . $e->getTraceAsString());
        return back()->withInput()->with('error', 'Terjadi kesalahan saat mengupdate data: ' . $e->getMessage());
    }
}

public function destroy($id)
{
    try {
        DB::beginTransaction();
        
        $perjadin = Perjadin::findOrFail($id);
        
        // Hapus pagu terkait jika ada
        if ($perjadin->pagu) {
            $perjadin->pagu->delete();
        }
        
        // Hapus perjadin
        $perjadin->delete();
        
        DB::commit();
        
        return redirect()->route('perjadin.index')->with('success', 'Data Perjadin berhasil dihapus.');
    } catch (\Exception $e) {
        DB::rollback();
        Log::error('Error saat menghapus data: ' . $e->getMessage());
        return back()->with('error', 'Terjadi kesalahan saat menghapus data: ' . $e->getMessage());
    }
}

private function terbilang($number)
{
    $number = abs($number);
    $words = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
    $temp = "";

    if ($number < 12) {
        $temp = " " . $words[$number];
    } else if ($number < 20) {
        $temp = $this->terbilang($number - 10) . " belas";
    } else if ($number < 100) {
        $temp = $this->terbilang($number / 10) . " puluh" . $this->terbilang($number % 10);
    } else if ($number < 200) {
        $temp = " seratus" . $this->terbilang($number - 100);
    } else if ($number < 1000) {
        $temp = $this->terbilang($number / 100) . " ratus" . $this->terbilang($number % 100);
    } else if ($number < 2000) {
        $temp = " seribu" . $this->terbilang($number - 1000);
    } else if ($number < 1000000) {
        $temp = $this->terbilang($number / 1000) . " ribu" . $this->terbilang($number % 1000);
    } else if ($number < 1000000000) {
        $temp = $this->terbilang($number / 1000000) . " juta" . $this->terbilang($number % 1000000);
    }

    return trim($temp);
}


public function downloadPDF($id)
{
    $perjadin = Perjadin::with(['pagu', 'pegawai'])->findOrFail($id);
    $terbilang = ucwords($this->terbilang($perjadin->pagu->total_pagu ?? 0)) . ' Rupiah';
    
    $pdf = $this->pdf->loadView('perjadin.pdf', [
        'perjadin' => $perjadin,
        'terbilang' => $terbilang
    ]);
    
    return $pdf->download('kwitansi_perjadin_' . $perjadin->id . '.pdf');
}

public function realisasi()
{
    return view('realisasi.index');
}

}
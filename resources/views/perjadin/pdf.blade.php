<!DOCTYPE html>
<html>
<head>
    <title>Kuitansi Perjadin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
        }
        .container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .subtitle {
            font-size: 16px;
            margin-bottom: 5px;
        }
        .content {
            margin-bottom: 30px;
        }
        .row {
            margin-bottom: 10px;
        }
        .label {
            font-weight: bold;
        }
        .signature {
            margin-top: 50px;
            text-align: right;
        }
        .total {
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="title">BADAN METEOROLOGI KLIMATOLOGI DAN GEOFISIKA</div>
            <div class="subtitle">JL. ANGKASA I NO. 2 KEMAYORAN</div>
            <div class="subtitle">J A K A R T A</div>
        </div>
        
        <div class="content">
            <div class="row">
                <span class="label">Tahun Anggaran :</span> {{ date('Y') }}
            </div>
            <div class="row">
                <span class="label">Nomor Bukti :</span> {{ $perjadin->no_akun }}
            </div>
            <div class="row">
                <span class="label">M A K :</span>
            </div>
            <div class="row">
                <span class="label">Sudah diterima dari :</span> KUASA PENGGUNA ANGGARAN SEKRETARIAT UTAMA BADAN METEOROLOGI KLIMATOLOGI DAN GEOFISIKA
            </div>
            <div class="row">
                <span class="label">Uang sebesar :</span> Rp. {{ number_format($perjadin->pagu->total_pagu ?? 0, 0, ',', '.') }},-
            </div>
            <div class="row">
                <span class="label">Terbilang :</span> {{ $terbilang }}
            </div>
            <div class="row">
                <span class="label">Untuk Pembayaran :</span> {{ $perjadin->kegiatan }}
            </div>
            <div class="row">
                <span class="label">Berdasarkan SPPD Nomor :</span> {{ $perjadin->no_akun }}
            </div>
            <div class="row">
                <span class="label">Tanggal :</span> {{ \Carbon\Carbon::parse($perjadin->tanggal_keberangkatan)->format('d/m/Y') }}
            </div>
            <div class="row">
                <span class="label">Untuk Perjalanan dinas dari :</span> {{ $perjadin->asal }} Ke {{ $perjadin->tujuan }}
            </div>
            <div class="row">
                <span class="label">Atas Nama :</span> {{ $perjadin->pegawai->nama ?? 'N/A' }}
            </div>
            <div class="row">
                <span class="label">Pangkat :</span> {{ $perjadin->pangkat }} / {{ $perjadin->golongan }}
            </div>
        </div>
        
        <div class="total">
            <div class="row">
                <span class="label">KUITANSI</span>
            </div>
            <div class="row">
                Rp. {{ number_format($perjadin->pagu->total_pagu ?? 0, 0, ',', '.') }},-
            </div>
        </div>
        
        <div class="signature">
            <p>Jakarta, {{ \Carbon\Carbon::now()->format('d F Y') }}</p>
            <p>Yang menerima</p>
            <br><br><br>
            <p>{{ $perjadin->pegawai->nama ?? 'N/A' }}</p>
            <p>NIP. {{ $perjadin->nip }}</p>
        </div>
    </div>
</body>
</html>
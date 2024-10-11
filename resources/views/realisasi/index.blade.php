@extends('layouts.app')

@section('title', 'Daftar Realisasi')

@section('content')
<div class="container-fluid">
    <div class="sticky-header">
        <h1 class="mb-4">Data Realisasi</h1>

        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('realisasi.index') }}" method="GET" class="form-inline">
                    <div class="input-group">
                        <input type="text" name="search" class="form-control" placeholder="Cari Realisasi" value="{{ request('search') }}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-primary" title="Cari">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6 text-right">
                <a href="{{ route('realisasi.index') }}" class="btn btn-secondary mr-2" title="Refresh">
                    <i class="fas fa-sync-alt"></i>
                </a>
                <a href="{{ route('realisasi.export') }}" class="btn btn-success" title="Export to Excel">
                    <i class="fas fa-file-excel"></i> Export to Excel
                </a>
            </div>
        </div>
    </div>

    @if($realisasis->isEmpty())
        <div class="alert alert-info mt-4">
            Data realisasi tidak ada.
        </div>
    @else
        <div class="table-responsive">
            <table class="table table-striped table-hover">
            <thead class="sticky-thead">
                    <tr>
                        <th>No.</th>
                        <th>Nama</th>
                        <th>NIP</th>
                        <th>Pangkat</th>
                        <th>Jabatan</th>
                        <th>Golongan</th>
                        <th>Asal</th>
                        <th>Tujuan</th>
                        <th>Kegiatan</th>
                        <th>No. Akun</th>
                        <th>Hari</th>
                        <th>Tanggal Keberangkatan</th>
                        <th>Transport</th>
                        <th>Hotel</th>
                        <th>Uang Harian</th>
                        <th>Taksi</th>
                        <th>Paket Meeting</th>
                        <th>Representasi</th>
                        <th>Jumlah</th>
                        <th>Tanggal Dibuat</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($realisasis as $realisasi)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $realisasi->nama }}</td>
                        <td>{{ $realisasi->nip }}</td>
                        <td>{{ $realisasi->pangkat }}</td>
                        <td>{{ $realisasi->jabatan }}</td>
                        <td>{{ $realisasi->golongan }}</td>
                        <td>{{ $realisasi->asal }}</td>
                        <td>{{ $realisasi->tujuan }}</td>
                        <td>{{ $realisasi->kegiatan }}</td>
                        <td>{{ $realisasi->no_akun }}</td>
                        <td>{{ $realisasi->hari }}</td>
                        <td>{{ $realisasi->tanggal_keberangkatan }}</td>
                        <td>Rp.{{ number_format($realisasi->transport, 0, ',', '.') }},00</td>
                        <td>Rp.{{ number_format($realisasi->hotel, 0, ',', '.') }},00</td>
                        <td>Rp.{{ number_format($realisasi->uang_harian, 0, ',', '.') }},00</td>
                        <td>Rp.{{ number_format($realisasi->taksi, 0, ',', '.') }},00</td>
                        <td>Rp.{{ number_format($realisasi->paket_meeting, 0, ',', '.') }},00</td>
                        <td>Rp.{{ number_format($realisasi->representasi, 0, ',', '.') }},00</td>
                        <td>Rp.{{ number_format($realisasi->total_realisasi, 0, ',', '.') }},00</td>
                        <td>{{ $realisasi->created_at }}</td>
 
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endif
</div>
@endsection

@section('styles')
<style>
<style>
    .sticky-header {
        position: sticky;
        top: 0;
        background-color: white;
        z-index: 1001;
        padding: 20px 0;
        box-shadow: 0 2px 4px rgba(0,0,0,.1);
    }

    .table-responsive {
        margin-top: 20px;
        overflow-y: auto;
        max-height: calc(100vh - 200px);
    }

    .sticky-thead {
        position: sticky;
        top: 0;
        background-color: white;
        z-index: 1000;
    }

    .sticky-thead th {
        background-color: #f8f9fa;
        box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
    }

    .table-responsive::-webkit-scrollbar {
        display: none;
    }

    .btn-group {
        display: flex;
        gap: 5px;
    }

    .btn-group .btn {
        flex: 1;
    }
</style>
</style>
@endsection
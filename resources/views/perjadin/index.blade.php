@extends('layouts.app')

@section('title', 'Daftar Perjadin')

@section('content')
<div class="container-fluid">
    <div class="sticky-header">
        <h1 class="mb-4">Data Perjadin</h1>


        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('perjadin.index') }}" method="GET" class="form-inline">
                    <div class="input-group">
                        <input type="text" name="search" class="form-control" placeholder="Cari Pegawai" value="{{ request('search') }}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-primary" title="Cari">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6 text-right">
                <a href="{{ route('perjadin.index') }}" class="btn btn-secondary" title="Refresh">
                    <i class="fas fa-sync-alt"></i>
                </a>

                <a href="{{ route('perjadin.create') }}" class="btn btn-success">
                    <i class="fas fa-plus"></i> Tambah Data
                </a>

                <div class="d-inline-block mr-2">
                    <select name="kegiatan" id="kegiatan-filter" class="form-control">
                        <option value="">Semua Kegiatan</option>
                        @foreach($kegiatans as $kegiatan)
                            <option value="{{ $kegiatan->nama_kegiatan }}" {{ request('kegiatan') == $kegiatan->nama_kegiatan ? 'selected' : '' }}>
                                {{ $kegiatan->nama_kegiatan }}
                            </option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
    </div>

    @if($perjadins->isEmpty() && ($isSearching || request('kegiatan')))
        <div class="alert alert-info mt-4">
            Data perjadin tidak ada.
        </div>
    @else
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="sticky-thead">
                    <tr>
                        <th>No.</th>
                        <th>Nama</th>
                        <th>NIP</th>
                        <th>Jabatan</th>
                        <th>Pangkat</th>
                        <th>Golongan</th>
                        <th>Asal</th>
                        <th>Tujuan</th>
                        <th>Kegiatan</th>
                        <th>No Akun</th>
                        <th>Hari</th>
                        <th>Jumlah</th>
                        <th>Tanggal Keberangkatan</th>
                        <th>Tanggal Dibuat</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($perjadins as $perjadin)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $perjadin->pegawai->nama ?? 'N/A' }}</td>
                        <td>{{ $perjadin->nip }}</td>
                        <td>{{ $perjadin->jabatan }}</td>
                        <td>{{ $perjadin->pangkat }}</td>
                        <td>{{ $perjadin->golongan }}</td>
                        <td>{{ $perjadin->asal }}</td>
                        <td>{{ $perjadin->tujuan }}</td>
                        <td>{{ $perjadin->kegiatan }}</td>
                        <td>{{ $perjadin->no_akun }}</td>
                        <td>{{ $perjadin->hari }}</td>
                        <td>Rp.{{ number_format($perjadin->pagu->total_pagu ?? 0, 0, ',', '.') }},00</td>
                        <td>{{ $perjadin->tanggal_keberangkatan }}</td>
                        <td>{{ $perjadin->tanggal_dibuat }}</td>
                        <td>
                            <a href="{{ route('perjadin.edit', $perjadin->id) }}" class="btn btn-sm btn-warning">
                                <i class="fas fa-edit"></i>
                            </a>
                            <form action="{{ route('perjadin.destroy', $perjadin->id) }}" method="POST" style="display: inline-block;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </form>
                            <a href="{{ route('perjadin.download', $perjadin->id) }}" class="btn btn-sm btn-success">
                                <i class="fas fa-download"></i>
                            </a>
                            <a href="{{ route('realisasi.create', $perjadin->id) }}" class="btn btn-sm btn-info">
                                <i class="fas fa-file-invoice-dollar"></i> Realisasi
                            </a>
                        </td>
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
@endsection

@section('script')
<script>
        document.getElementById('kegiatan-filter').addEventListener('change', function() {
        this.form.submit();
    });
</script>

@endsection
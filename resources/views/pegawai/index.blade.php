@extends('layouts.app')

@section('title', 'Daftar Pegawai')

@section('content')
<div class="container-fluid">
    <div class="sticky-header">
        <h1 class="mb-4">Data Pegawai</h1>

        <div class="row mb-3">
            <div class="col-md-6">
                <form action="{{ route('pegawai.index') }}" method="GET" class="form-inline">
                    <div class="input-group">
                        <input type="text" name="search" class="form-control" placeholder="Cari nama pegawai" value="{{ request('search') }}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-primary" title="Cari">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6 text-right">
                <a href="{{ route('pegawai.index') }}" class="btn btn-secondary" title="Refresh">
                    <i class="fas fa-sync-alt"></i>
                </a>
                <a href="{{ route('pegawai.create') }}" class="btn btn-success">
                    <i class="fas fa-plus"></i> Tambah Data
                </a>
            </div>
        </div>
    </div>

    @if($pegawais->isEmpty() && $isSearching)
        <div class="alert alert-info mt-4">
            Data pegawai tidak ada.
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
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($pegawais as $pegawai)
                    <tr>
                        <td>{{ $pegawai->id }}</td>
                        <td>{{ $pegawai->nama }}</td>
                        <td>{{ $pegawai->nip }}</td>
                        <td>{{ $pegawai->jabatan }}</td>
                        <td>{{ $pegawai->pangkat }}</td>
                        <td>{{ $pegawai->golongan }}</td>
                        <td>{{ $pegawai->asal }}</td>
                        <td>
                        <div class="btn-group" role="group" aria-label="Aksi">
                                <a href="{{ route('pegawai.edit', $pegawai->id) }}" class="btn btn-sm btn-warning" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <form action="{{ route('pegawai.destroy', $pegawai->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-sm btn-danger" title="Delete" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endif
</div>

<div class="modal fade" id="deleteConfirmationModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteConfirmationModalLabel">Konfirmasi Hapus</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Apakah anda yakin ingin menghapus data tersebut?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tidak</button>
                <form id="deleteForm" method="POST" style="display: inline-block;">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">Ya</button>
                </form>
            </div>
        </div>
    </div>
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
        max-height: calc(100vh - 200px); /* Sesuaikan nilai ini berdasarkan tinggi header Anda */
    }

    .sticky-thead {
        position: sticky;
        top: 0;
        background-color: white;
        z-index: 1000;
    }

    .sticky-thead th {
        background-color: #f8f9fa; /* Warna latar belakang untuk header tabel */
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
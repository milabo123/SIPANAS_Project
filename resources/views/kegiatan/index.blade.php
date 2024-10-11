@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Daftar Kegiatan</h2>
    <a href="{{ route('kegiatan.create') }}" class="btn btn-primary mb-3">Tambah Kegiatan</a>
    <table class="table">
        <thead>
            <tr>
                <th>Nama Kegiatan</th>
                <th>No. Akun</th>
                <th>Tahun</th>
            </tr>
        </thead>
        <tbody>
            @foreach($kegiatans as $kegiatan)
            <tr>
                <td>{{ $kegiatan->nama_kegiatan }}</td>
                <td>{{ $kegiatan->no_akun }}</td>
                <td>{{ $kegiatan->tahun }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
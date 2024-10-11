@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Tambah Kegiatan Baru</h2>
    <form action="{{ route('kegiatan.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="nama_kegiatan">Nama Kegiatan</label>
            <input type="text" class="form-control" id="nama_kegiatan" name="nama_kegiatan" required>
        </div>
        <div class="form-group">
            <label for="no_akun">No. Akun</label>
            <input type="text" class="form-control" id="no_akun" name="no_akun" required>
        </div>
        <div class="form-group">
            <label for="tahun">Tahun</label>
            <input type="number" class="form-control" id="tahun" name="tahun" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection
@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Upload Tarif Hotel</h2>
    
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @if(session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif

    <form action="{{ route('SBM.upload') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="file">Pilih file Excel:</label>
            <input type="file" class="form-control-file" id="file" name="file" required>
        </div>
        <button type="submit" class="btn btn-primary">Upload</button>
    </form>

    <hr>

    <h3>Data Tarif Hotel</h3>
    <table class="table">
        <thead>
            <tr>
                <th>No</th>
                <th>Provinsi</th>
                <th>Satuan</th>
                <th>Tarif Eselon 1</th>
                <th>Tarif Eselon 2</th>
                <th>Tarif Golongan IV</th>
                <th>Tarif Golongan III/II/I</th>
            </tr>
        </thead>
        <tbody>
            @foreach($tarifHotels as $tarif)
            <tr>
                <td>{{ $tarif->No }}</td>
                <td>{{ $tarif->Provinsi }}</td>
                <td>{{ $tarif->Satuan }}</td>
                <td>{{ $tarif->Tarif_Eselon_1 }}</td>
                <td>{{ $tarif->Tarif_Eselon_2 }}</td>
                <td>{{ $tarif->Tarif_Golongan_IV }}</td>
                <td>{{ $tarif->Tarif_Golongan_III_II_I }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

    {{ $tarifHotels->links() }}
</div>
@endsection
@extends('layouts.app')

@section('title', 'Realisasi Perjadin')

@section('content')
<div class="container mt-4">
    <h1 class="mb-4">Realisasi PERJADIN</h1>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form id="realisasiForm" action="{{ route('realisasi.store', $perjadin->id) }}" method="POST" enctype="multipart/form-data">
        @csrf

        <!-- Editable fields -->
        <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" id="nama" name="nama" class="form-control" value="{{ $perjadin->nama }}" readonly>
        </div>
        
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="nip">NIP</label>
                    <input type="text" id="nip" name="nip" class="form-control" value="{{ $perjadin->nip }}" readonly>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="jabatan">Jabatan</label>
                    <input type="text" id="jabatan" name="jabatan" class="form-control" value="{{ $perjadin->jabatan }}" readonly>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="pangkat">Pangkat</label>
                    <input type="text" id="pangkat" name="pangkat" class="form-control" value="{{ $perjadin->pangkat }}" readonly>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="golongan">Golongan</label>
                    <input type="text" id="golongan" name="golongan" class="form-control" value="{{ $perjadin->golongan }}" readonly>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="asal">Asal</label>
            <input type="text" id="asal" name="asal" class="form-control" value="{{ $perjadin->asal }}" readonly>
        </div>

        <div class="form-group">
            <label for="tujuan">Tujuan</label>
            <input type="text" id="tujuan" name="tujuan" class="form-control" value="{{ $perjadin->tujuan }}" readonly>
        </div>

        <div class="form-group">
            <label for="kegiatan">Kegiatan</label>
            <input type="text" id="kegiatan" name="kegiatan" class="form-control" value="{{ $perjadin->kegiatan }}" readonly>
        </div>

        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="no_akun">No Akun</label>
                    <input type="text" id="no_akun" name="no_akun" class="form-control" value="{{ $perjadin->no_akun }}" readonly>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="hari">Hari</label>
                    <input type="number" id="hari" name="hari" class="form-control" value="{{ $perjadin->hari }}">
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="tanggal_keberangkatan">Tanggal Keberangkatan</label>
            <input type="date" id="tanggal_keberangkatan" name="tanggal_keberangkatan" class="form-control" value="{{ $perjadin->tanggal_keberangkatan }}">
        </div>

        <h3 class="mt-4 mb-3">Rincian Realisasi Biaya</h3>
        
        @php
            $realisasi_fields = [
                'transport' => 'Transport',
                'uang_harian' => 'Uang Harian',
                'hotel' => 'Hotel (per malam)',
                'taksi' => 'Taksi',
                'paket_meeting' => 'Paket Meeting',
                'representasi' => 'Representasi',
                'tiket_pesawat' => 'Tiket Pesawat'
            ];
        @endphp

        @foreach ($realisasi_fields as $field => $label)
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">{{ $label }}</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="{{ $field }}">Nilai Realisasi</label>
                                <input type="number" step="0.01" id="{{ $field }}" name="{{ $field }}" class="form-control realisasi-input @error($field) is-invalid @enderror" value="{{ $perjadin->pagu->$field ?? 0 }}">
                                @error($field)
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        @if (!in_array($field, ['uang_harian', 'representasi']))
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="{{ $field }}_file">Upload Bukti {{ $label }}</label>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input @error($field.'_file') is-invalid @enderror" id="{{ $field }}_file" name="{{ $field }}_file">
                                        <label class="custom-file-label" for="{{ $field }}_file">Tambahkan file</label>
                                    </div>
                                    @error($field.'_file')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        @endforeach

        <div class="form-group">
            <label for="total_realisasi">Total Realisasi</label>
            <input type="number" step="0.01" id="total_realisasi" name="total_realisasi" class="form-control @error('total_realisasi') is-invalid @enderror" readonly>
            @error('total_realisasi')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mt-3">
            <button type="submit" class="btn btn-primary">Simpan Realisasi</button>
            <a href="{{ route('perjadin.index') }}" class="btn btn-secondary">Batal</a>
        </div>
    </form>
</div>
@endsection

@section('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const realisasiInputs = document.querySelectorAll('.realisasi-input');
    const totalRealisasiInput = document.getElementById('total_realisasi');
    const fileInputs = document.querySelectorAll('input[type="file"]');

    function calculateTotalRealisasi() {
        let total = 0;
        realisasiInputs.forEach(input => {
            total += parseFloat(input.value) || 0;
        });
        totalRealisasiInput.value = total.toFixed(2);
    }

    realisasiInputs.forEach(input => {
        input.addEventListener('input', calculateTotalRealisasi);
    });

    // Initial calculation
    calculateTotalRealisasi();

    // Form validation
    document.getElementById('realisasiForm').addEventListener('submit', function(event) {
        let isValid = true;

        realisasiInputs.forEach(input => {
            const value = parseFloat(input.value) || 0;
            const fileInput = document.getElementById(`${input.id}_file`);
            
            if (value > 0 && fileInput && !fileInput.files.length && !['uang_harian', 'representasi'].includes(input.id)) {
                isValid = false;
                fileInput.classList.add('is-invalid');
            } else if (fileInput) {
                fileInput.classList.remove('is-invalid');
            }
        });

        if (!isValid) {
            event.preventDefault();
            alert('Mohon upload bukti untuk setiap biaya yang diisi (kecuali Uang Harian dan Representasi)');
        }
    });

    // File input validation and custom file input behavior
    fileInputs.forEach(fileInput => {
        fileInput.addEventListener('change', function() {
            const file = this.files[0];
            const fileSize = file.size / 1024 / 1024; // in MB
            if (fileSize > 2) {
                alert('Ukuran file tidak boleh lebih dari 2MB');
                this.value = ''; // Clear the file input
                this.nextElementSibling.innerText = 'Tambahkan file';
            } else if (file) {
                this.nextElementSibling.innerText = file.name;
            } else {
                this.nextElementSibling.innerText = 'Tambahkan file';
            }
        });
    });
});
</script>
@endsection
@extends('layouts.app')

@section('title', 'Form Perjadin')

@section('content')

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if(session('error'))
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
@endif

<div class="container mt-4">
    <h1 class="mb-4">PERJADIN</h1>
    <form id="perjadinForm" action="{{ route('perjadin.store') }}" method="POST">
    @csrf

            <div class="form-group">
                <label for="nama">Nama</label>
                <div class="input-group">
                    <select id="nama" name="nama" class="form-control" onchange="updateFields()">
                        <option value="">Pilih Nama</option>
                        @foreach($pegawais as $pegawai)
                            <option value="{{ $pegawai->id }}">{{ $pegawai->nama }}</option>
                        @endforeach
                    </select>
                    <div class="input-group-append ml-5">
                        <a href="{{ route('pegawai.create') }}" class="btn btn-success" title="Tambah Data Pegawai">
                            <i class="fas fa-plus"></i> Tambah Data Pegawai
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="nip">NIP</label>
                        <input type="text" id="nip" name="nip" class="form-control" readonly>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="jabatan">Jabatan</label>
                        <input type="text" id="jabatan" name="jabatan" class="form-control" readonly>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <label for="pangkat">Pangkat</label>
                        <input type="text" id="pangkat" name="pangkat" class="form-control" readonly>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="golongan">Golongan</label>
                        <input type="text" id="golongan" name="golongan" class="form-control" readonly>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="asal">Asal</label>
                <input type="text" id="asal" name="asal" class="form-control" readonly>
            </div>

            <div class="form-group">
            <label for="tujuan">Tujuan</label>
            <select id="tujuan" name="tujuan" class="form-control">
                <option value="">Pilih Tujuan</option>
                @foreach($kotas as $kota)
                    <option value="{{ $kota->nama_kota }}">{{ $kota->nama_kota }}</option>
                @endforeach
            </select>
        </div>

            <div class="form-group">
                <label for="kegiatan">Kegiatan</label>
                <select id="kegiatan" name="kegiatan" class="form-control">
                    <option value="">Pilih Kegiatan</option>
                    @foreach($kegiatans as $kegiatan)
                        <option value="{{ $kegiatan->nama_kegiatan }}" data-no-akun="{{ $kegiatan->no_akun }}">{{ $kegiatan->nama_kegiatan }}</option>
                    @endforeach
                </select>
            </div>

            
            <div class="form-group">
                <label for="no_akun">No Akun</label>
                <input type="text" id="no_akun" name="no_akun" class="form-control" readonly>
            </div>

            <div class="form-group">
                <label for="hari">Hari</label>
                <input type="number" id="hari" name="hari" class="form-control" min="1">
            </div>

            <div class="form-group">
                <label for="tanggal_keberangkatan">Tanggal Keberangkatan</label>
                <input type="date" id="tanggal_keberangkatan" name="tanggal_keberangkatan" class="form-control">
            </div>

            <div class="form-group">
                <label for="tanggal_dibuat">Tanggal Dibuat</label>
                <input type="date" id="tanggal_dibuat" name="tanggal_dibuat" class="form-control" value="{{ date('Y-m-d') }}" readonly>
            </div>

            <h3 class="mt-4">Rincian Biaya</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="tiket_pesawat">Tiket Pesawat</label>
                    <input type="number" step="0.01" id="tiket_pesawat" name="pagu[tiket_pesawat]" class="form-control pagu-input">
                </div>
            </div>


            <div class="col-md-6">
                <div class="form-group">
                    <label for="transport">Transport</label>
                    <input type="number" step="0.01" id="transport" name="pagu[transport]" class="form-control pagu-input">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="uang_harian">Uang Harian (per hari)</label>
                    <input type="number" step="0.01" id="uang_harian" name="pagu[uang_harian]" class="form-control pagu-input">
                </div>
            </div>
        </div>
        <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="hotel">Hotel (per malam)</label>
                <input type="number" step="0.01" id="hotel" name="pagu[hotel]" class="form-control pagu-input">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="taksi">Taksi</label>
                <input type="number" step="0.01" id="taksi" name="pagu[taksi]" class="form-control pagu-input">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="representasi">Representasi (per hari)</label>
                <input type="number" step="0.01" id="representasi" name="pagu[representasi]" class="form-control pagu-input">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="paket_meeting">Paket Meeting</label>
                <input type="number" step="0.01" id="paket_meeting" name="pagu[paket_meeting]" class="form-control pagu-input">
            </div>
        </div>
        </div>
        <div class="form-group">
            <label for="total_pagu">Jumlah</label>
            <input type="number" step="0.01" id="total_pagu" name="pagu[total_pagu]" class="form-control" readonly>
        </div>

        <div class="mt-3">
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ route('perjadin.index') }}" class="btn btn-secondary">Batal</a>
        </div>
    </form>
</div>
@endsection

@section('scripts')
<script>
document.getElementById('kegiatan').addEventListener('change', function() {
    var selectedOption = this.options[this.selectedIndex];
    var noAkun = selectedOption.getAttribute('data-no-akun');
    document.getElementById('no_akun').value = noAkun || '';
});


document.getElementById('perjadinForm').addEventListener('submit', function(event) {
    if (!validateForm()) {
        event.preventDefault();
        alert("Mohon isi semua field yang diperlukan");
    }
});

function validateForm() {
    var requiredFields = ['nama', 'nip', 'jabatan', 'pangkat', 'golongan', 'asal', 'tujuan', 'kegiatan', 'no_akun', 'tanggal_keberangkatan'];
    
    for (var i = 0; i < requiredFields.length; i++) {
        if (document.getElementById(requiredFields[i]).value == "") {
            return false;
        }
    }
    
    calculateTotalPagu();
    
    return true;
}

function calculateTotalPagu() {
    var total = 0;
    var paguInputs = document.getElementsByClassName('pagu-input');
    var hari = parseInt(document.getElementById('hari').value) || 0;
    
    for (var i = 0; i < paguInputs.length; i++) {
        var value = parseFloat(paguInputs[i].value) || 0;
        
        if (paguInputs[i].id === 'hotel') {
            total += value * Math.max(hari - 1, 0);
        } else if (paguInputs[i].id === 'uang_harian' || paguInputs[i].id === 'representasi') {
            total += value * hari;
        } else {
            total += value;
        }
    }
    
    document.getElementById('total_pagu').value = total.toFixed(2);
}   

function updateFields() {
    var namaId = document.getElementById('nama').value;
    
    if (namaId) {
        fetch(`/pegawai/${namaId}`)
            .then(response => response.json())
            .then(data => {
                document.getElementById('nip').value = data.nip;
                document.getElementById('jabatan').value = data.jabatan;
                document.getElementById('pangkat').value = data.pangkat;
                document.getElementById('golongan').value = data.golongan;
                document.getElementById('asal').value = data.asal;
            })
            .catch(error => console.error('Error:', error));
    } else {
        document.getElementById('nip').value = '';
        document.getElementById('jabatan').value = '';
        document.getElementById('pangkat').value = '';
        document.getElementById('golongan').value = '';
        document.getElementById('asal').value = '';
    }
}

document.getElementById('hari').addEventListener('input', calculateTotalPagu);


// Event listener untuk setiap input pagu
var paguInputs = document.getElementsByClassName('pagu-input');
for (var i = 0; i < paguInputs.length; i++) {
    paguInputs[i].addEventListener('input', calculateTotalPagu);
}

// Add event listener for nama select
document.getElementById('nama').addEventListener('change', updateFields);
</script>
@endsection
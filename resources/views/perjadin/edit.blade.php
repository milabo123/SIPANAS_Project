@extends('layouts.app')

@section('title', 'Edit Perjadin')

@section('content')
<div class="container mt-4">
    <h1 class="mb-4">Edit PERJADIN</h1>

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

    <form id="perjadinForm" action="{{ route('perjadin.update', $perjadin->id) }}" method="POST">
        @csrf
        @method('PUT')

        <!-- Readonly fields -->
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

        <!-- Editable fields -->
        <div class="form-group">
            <label for="tujuan">Tujuan</label>
            <select id="tujuan" name="tujuan" class="form-control @error('tujuan') is-invalid @enderror">
                @foreach($kotas as $kota)
                    <option value="{{ $kota->nama_kota }}" {{ $perjadin->tujuan == $kota->nama_kota ? 'selected' : '' }}>
                        {{ $kota->nama_kota }}
                    </option>
                @endforeach
            </select>
            @error('tujuan')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="kegiatan">Kegiatan</label>
            <select id="kegiatan" name="kegiatan" class="form-control @error('kegiatan') is-invalid @enderror">
                @foreach($kegiatans as $kegiatan)
                    <option value="{{ $kegiatan->nama_kegiatan }}" data-no-akun="{{ $kegiatan->no_akun }}" {{ $perjadin->kegiatan == $kegiatan->nama_kegiatan ? 'selected' : '' }}>
                        {{ $kegiatan->nama_kegiatan }}
                    </option>
                @endforeach
            </select>
            @error('kegiatan')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        
        <div class="form-group">
            <label for="no_akun">No Akun</label>
            <input type="text" id="no_akun" name="no_akun" class="form-control @error('no_akun') is-invalid @enderror" value="{{ $perjadin->no_akun }}" readonly>
            @error('no_akun')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="hari">Hari</label>
            <input type="number" id="hari" name="hari" class="form-control @error('hari') is-invalid @enderror" min="1" value="{{ $perjadin->hari }}">
            @error('hari')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="tanggal_keberangkatan">Tanggal Keberangkatan</label>
            <input type="date" id="tanggal_keberangkatan" name="tanggal_keberangkatan" class="form-control @error('tanggal_keberangkatan') is-invalid @enderror" value="{{ $perjadin->tanggal_keberangkatan }}">
            @error('tanggal_keberangkatan')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="tanggal_dibuat">Tanggal Dibuat</label>
            <input type="date" id="tanggal_dibuat" name="tanggal_dibuat" class="form-control" value="{{ $perjadin->tanggal_dibuat }}" readonly>
        </div>

        <h3 class="mt-4">Rincian Biaya</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="tiket_pesawat">Tiket Pesawat</label>
                    <input type="number" step="0.01" id="tiket_pesawat" name="pagu[tiket_pesawat]" class="form-control pagu-input @error('pagu.tiket_pesawat') is-invalid @enderror" value="{{ $perjadin->pagu->tiket_pesawat ?? 0 }}">
                    @error('pagu.tiket_pesawat')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="transport">Transport</label>
                    <input type="number" step="0.01" id="transport" name="pagu[transport]" class="form-control pagu-input @error('pagu.transport') is-invalid @enderror" value="{{ $perjadin->pagu->transport ?? 0 }}">
                    @error('pagu.transport')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="uang_harian">Uang Harian</label>
                    <input type="number" step="0.01" id="uang_harian" name="pagu[uang_harian]" class="form-control pagu-input @error('pagu.uang_harian') is-invalid @enderror" value="{{ $perjadin->pagu->uang_harian ?? 0 }}">
                    @error('pagu.uang_harian')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
            </div>
        </div>
       
<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label for="hotel">Hotel (per malam)</label>
            <input type="number" step="0.01" id="hotel" name="pagu[hotel]" class="form-control pagu-input @error('pagu.hotel') is-invalid @enderror" value="{{ $perjadin->pagu->hotel ?? 0 }}">
            @error('pagu.hotel')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label for="taksi">Taksi</label>
            <input type="number" step="0.01" id="taksi" name="pagu[taksi]" class="form-control pagu-input @error('pagu.taksi') is-invalid @enderror" value="{{ $perjadin->pagu->taksi ?? 0 }}">
            @error('pagu.taksi')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label for="representasi">Representasi (per hari)</label>
            <input type="number" step="0.01" id="representasi" name="pagu[representasi]" class="form-control pagu-input @error('pagu.representasi') is-invalid @enderror" value="{{ $perjadin->pagu->representasi ?? 0 }}">
            @error('pagu.representasi')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label for="paket_meeting">Paket Meeting</label>
            <input type="number" step="0.01" id="paket_meeting" name="pagu[paket_meeting]" class="form-control pagu-input @error('pagu.paket_meeting') is-invalid @enderror" value="{{ $perjadin->pagu->paket_meeting ?? 0 }}">
            @error('pagu.paket_meeting')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
</div>
        <div class="form-group">
            <label for="total_pagu">Jumlah</label>
            <input type="number" step="0.01" id="total_pagu" name="pagu[total_pagu]" class="form-control @error('pagu.total_pagu') is-invalid @enderror" value="{{ $perjadin->pagu->total_pagu ?? 0 }}" readonly>
            @error('pagu.total_pagu')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mt-3">
            <button type="submit" class="btn btn-primary">Update</button>
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

document.addEventListener('DOMContentLoaded', function() {
    var event = new Event('change');
    document.getElementById('kegiatan').dispatchEvent(event);
});


document.addEventListener('DOMContentLoaded', function() {
    const paguInputs = document.querySelectorAll('.pagu-input');
    const totalPaguInput = document.getElementById('total_pagu');
    const hariInput = document.getElementById('hari');


    function calculateTotalPagu() {
    let total = 0;
    const hari = parseInt(hariInput.value) || 0;

    paguInputs.forEach(input => {
        const value = parseFloat(input.value) || 0;
        
        if (input.id === 'hotel') {
            total += value * Math.max(hari - 1, 0);
        } else if (input.id === 'uang_harian' || input.id === 'representasi') {
            total += value * hari;
        } else {
            total += value;
        }
    });

    totalPaguInput.value = total.toFixed(2);
}

    paguInputs.forEach(input => {
        input.addEventListener('input', calculateTotalPagu);
    });

    hariInput.addEventListener('input', calculateTotalPagu);

    // Initial calculation
    calculateTotalPagu();

    // Form validation
    document.getElementById('perjadinForm').addEventListener('submit', function(event) {
        let isValid = true;

        // Check required fields
        const requiredFields = ['tujuan', 'kegiatan', 'no_akun', 'hari', 'tanggal_keberangkatan'];
        requiredFields.forEach(field => {
            const input = document.getElementById(field);
            if (!input.value.trim()) {
                isValid = false;
                input.classList.add('is-invalid');
            } else {
                input.classList.remove('is-invalid');
            }
        });

        // Check if total pagu is greater than 0
        if (parseFloat(totalPaguInput.value) <= 0) {
            isValid = false;
            totalPaguInput.classList.add('is-invalid');
            alert('Jumlah harus lebih besar dari 0');
        } else {
            totalPaguInput.classList.remove('is-invalid');
        }

        if (!isValid) {
            event.preventDefault();
            alert('Mohon lengkapi semua field yang diperlukan');
        }
    });
});
</script>
@endsection
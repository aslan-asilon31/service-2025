<?php

use App\Livewire\Welcome;
use Illuminate\Support\Facades\Route;

Route::get('/', Welcome::class);



Route::get('/pelanggan', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
// Route::get('/pelanggan/create', \App\Livewire\PelangganResources\PelangganBuat::class)->name('pelanggan.create');
// Route::get('/pelanggan/edit/{id}', \App\Livewire\PelangganResources\PelangganEdit::class)->name('pelanggan.edit');
// Route::get('/pelanggan/show/{id}', \App\Livewire\PelangganResources\PelangganShow::class)->name('pelanggan.show');

Route::get('/barang', \App\Livewire\BarangResources\BarangList::class)->name('barang.list');
// Route::get('/barang/create', \App\Livewire\BarangResources\BarangCrud::class)->name('barang.create');
// Route::get('/barang/edit/{id}', \App\Livewire\BarangResources\BarangCrud::class)->name('barang.edit');
// Route::get('/barang/show/{id}/{readonly}', \App\Livewire\BarangResources\BarangCrud::class)->where('readonly', 'readonly')->name('barang.show');



Route::get('/cabang', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/gudang', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/pegawai', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');


// Surat Perintah Service 
Route::get('/sp-tanda-terima-service', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-kerja', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-kirim', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-mutasi-gudang', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-mutasi-gudang-kirim', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-mutasi-gudang-terima', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-pindah-rak', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-service', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-ambil-rak', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-simpan-rak', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');
Route::get('/sp-kerja', \App\Livewire\PelangganResources\PelangganList::class)->name('pelanggan.list');

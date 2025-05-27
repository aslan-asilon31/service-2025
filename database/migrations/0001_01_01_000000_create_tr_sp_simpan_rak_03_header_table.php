<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tr_sp_simpan_rak_header', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->uuid('simpan_rak_header_polimorf_id');
            $table->foreign('simpan_rak_header_polimorf_id', 'fk_simpan_rak_header_polimorf_id')->references('id')->on('tr_sp_simpan_rak_header_polimorf')->onDelete('cascade')->onUpdate('cascade');


            $table->string('nama');
            $table->integer('nomor');
            $table->string('dibuat_oleh');
            $table->string('diupdate_oleh');
            $table->timestamp('tgl_dibuat')->nullable();
            $table->timestamp('tgl_diupdate')->nullable();
            $table->integer('status')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tr_sp_simpan_rak_header');
    }
};

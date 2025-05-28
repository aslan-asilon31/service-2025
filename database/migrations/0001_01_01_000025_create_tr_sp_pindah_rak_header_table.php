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
        Schema::create('tr_sp_pindah_rak_header', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('nama', 255);
            $table->integer('nomor', 255);
            $table->string('dibuat_oleh', 255)->nullable()->index();
            $table->string('diupdate_oleh', 255)->nullable()->index();
            $table->timestamp('tgl_dibuat');
            $table->timestamp('tgl_diupdate');
            $table->integer('status')->index()->default('active');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tr_sp_pindah_rak_header');
    }
};

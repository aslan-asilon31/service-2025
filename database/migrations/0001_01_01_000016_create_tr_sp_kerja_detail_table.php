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
        Schema::create('tr_sp_kerja_detail', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('kerja_id');
            $table->foreign('kerja_id', 'fk_kerja_id')->references('id')->on('tr_sp_kerja_header')->onDelete('cascade')->onUpdate('cascade');

            $table->uuid('ms_barang_id');
            $table->foreign('ms_barang_id')->references('id')->on('ms_barang')->onDelete('cascade')->onUpdate('cascade');

            $table->integer('qty');
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
        Schema::dropIfExists('tr_sp_kerja_detail');
    }
};

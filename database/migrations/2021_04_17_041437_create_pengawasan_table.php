<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengawasanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengawasan', function (Blueprint $table) {
            $table->id("id_pengawasan")->autoIncrement();
            $table->string("kode_bidang", 100);
            $table->string("no_urut", 11);
            $table->string("no_dpa", 100);
            $table->text("uraian");
            $table->date("tanggal");
            $table->string("ttd", 80);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pengawasan');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('players', function (Blueprint $table) {
            $table->id();
            $table->string('nickname');
            $table->unsignedBigInteger('id_role');
            $table->foreign('id_role')->references('id')->on('roles')->onDelete('cascade');
            $table->boolean('is_alive');
            $table->unsignedBigInteger('id_room');
            $table->foreign('id_room')->references('id')->on('rooms')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('players');
    }
};

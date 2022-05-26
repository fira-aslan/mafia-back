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
        Schema::create('rooms', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_user');
            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade');
            $table->string('room_name');
            $table->boolean('is_private');
            $table->integer('current_players');
            $table->integer('all_players');
            $table->unsignedBigInteger('id_chat');
            $table->datetime('duration');
            $table->datetime('start_time');
            $table->datetime('end_time');
            $table->integer('count_mafia');
            $table->integer('count_non_mafia');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rooms');
    }
};

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;

    protected $fillable = [
      'id_user',
      'room_name',
      'is_private',
      'current_players',
      'all_players',
      'id_chat',
      'duration',
      'start_time',
      'end_time',
      'count_mafia',
      'count_non_mafia',
    ];
}

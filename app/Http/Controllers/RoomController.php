<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Room;

class RoomController extends Controller
{
  public function listRooms(){
    $rooms = Room::all();
    return response()->json([
      'status' => 200,
      'rooms' => $rooms,
    ]);
  }
  
}

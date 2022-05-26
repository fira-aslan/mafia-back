<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Role;
use Session;

class PlayerController extends Controller
{
    public function assign(Request $request){
        $roles = Role::all();
        $value = session('nickname');
        return response()->json([
            'status' => 200,
            'roles' => $roles,
            'nickname'=>$value,
          ]);
    }
}

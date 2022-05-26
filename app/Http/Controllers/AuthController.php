<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\RegisterRequest;
use Laravel\Passport\HasApiTokens;
use Session;

class AuthController extends Controller
{
    public function login(Request $request){
        if(Auth::attempt($request->only('email', 'password'))){
            $user = Auth::user();
            $token = $user->createToken($request->email.'_Token')->plainTextToken;
            session()->regenerate();
            Session::put('key', 'value');
            session(['token' => $token]);
            session(['nickname' => $user->nickname]);
            $nickname = Session::get('nickname');
            return response()->json([
                'status'=>200,
                'token'=>$token,
                'nickname'=>$nickname,
            ]);
        
         }
      return response()->json([
          'status'=>401,
          'error'=>'Invalid Credential',
      ]);
    }


function register(Request $req){
    $this->validate($req, [            
        'email' => 'required|email',
      ]);
    $nickname = $req->input('nickname');
    $email = $req->input('email');
    $password = Hash::make($req->input('password'));
    
    DB::table('users')->insert([
        'nickname' => $nickname,
        'email' => $email,
        'password' => $password,
    ]);
}

}

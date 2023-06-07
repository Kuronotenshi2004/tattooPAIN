<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function registration(Request $request){
        $user = User::create([
            'name' => $request['name'],
            'email' => $request['email'],
            'password' => md5($request['password']),
        ]);
        if ($user) {
            $token = $user->createToken('user_token')->plainTextToken;
            return response()->json([
                "data" => [
                    "user_token" => $token,
                ]
            ], 200, [ "Content-type" => "application/json" ]);
        } else {
            return response()->json(["error" => [
                "code" => 401,
                "message" => "Registration failed"
            ]], 401, [ "Content-type" => "application/json" ]);
        }
    }

    public function login(Request $request){
        $user = User::where('name', '=', $request['name'])->where('password', '=', md5($request->input('password')))->first();
        if ($user) {
            if($user->ban == 1){
                return response()->json([
                    "data" => [
                        "ban" => 1,
                    ]
                ], 403, [ "Content-type" => "application/json" ]); 
            }
            $token = $user->createToken('user_token')->plainTextToken;
            $admin = 0;
            if($user->admin == "1"){
                $admin = 1;
            }
            return response()->json([
                "data" => [
                    "user_token" => $token,
                    "user" => $admin,
                    "ban" => $user->ban,
                ]
            ], 200, [ "Content-type" => "application/json" ]);
        } else {
            return response()->json(["error" => [
                "code" => 401,
                "message" => "Authentication failed"
            ]], 401, [ "Content-type" => "application/json" ]);
        }
    }

    public function logout()
    {
        auth()->user()->tokens()->delete();
        return response()->json([
            "data" => [
                "message" => "logout"
            ]
        ], 200, [ "Content-type" => "application/json" ]);  
    }

}

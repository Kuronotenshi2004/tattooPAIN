<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{

    public function ban($id)
    {
        $user = User::find($id);
        if ($user) {
            $text = 'banned';
            if ($user->ban == null) {
                $user->ban = 1;
            } else {
                $user->ban = null;
                $text = 'unbanned';
            }
            $user->save();

            return response()->json([
                "data" => [
                    "message" => "User " . $text,
                ]
            ], 200, ["Content-type" => "application/json"]);
        } else {
            return response()->json(["error" => [
                "code" => 401,
                "message" => "User not found"
            ]], 403, ["Content-type" => "application/json"]);
        }
    }
}

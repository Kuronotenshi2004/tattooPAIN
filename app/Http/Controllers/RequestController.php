<?php

namespace App\Http\Controllers;

use App\Models\Request as ModelsRequest;
use Illuminate\Http\Request;

class RequestController extends Controller
{

    public function store(Request $request)
    {
        $path = './img/download/request/' . time() . $_FILES['file']['name'];
        copy($_FILES['file']['tmp_name'], $path);

        $data = [
            'name' => auth()->user()->name,
            'email' => auth()->user()->email,
            'partOfBody' => $request['partOfBody'],
            'size' => $request['size'],
            'description' => $request['description'],
            'img' => $path,
        ];

        $request_rez = ModelsRequest::create($data);

        if ($request_rez) {
            return response()->json([
                "data" => [
                    "message" => "Created"
                ]
            ], 200, ["Content-type" => "application/json"]);
        } else {
            return response()->json([
                "data" => [
                    "message" => "error"
                ]
            ], 400, ["Content-type" => "application/json"]);
        }
    }

    public function show(){
        $requestArray = ModelsRequest::all();
        return response()->json($requestArray, 200, ["Content-type" => "application/json"]);
    }

    public function masterRes(Request $request, $id){
        $res = ModelsRequest::find($id);
        $res->status = 1;
        $res->master = $request['text'];
        $res->save();
        return response()->json([
            "data" => [
                "message" => "Updated"
            ]
        ], 200, ["Content-type" => "application/json"]);
    }

    public function index(){
        $requests = ModelsRequest::where('email', "=", auth()->user()->email)->get();
        return response()->json($requests, 200, ["Content-type" => "application/json"]);
    }
}

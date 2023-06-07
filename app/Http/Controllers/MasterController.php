<?php

namespace App\Http\Controllers;

use App\Models\Master;
use App\Models\MasterImg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class MasterController extends Controller
{
    public function index()
    {
        $masters = Master::all();
        return response()->json($masters, 200, ["Content-type" => "application/json"]);
    }

    public function show($id)
    {
        $masters = Master::find($id);
        return response()->json($masters, 200, ["Content-type" => "application/json"]);
    }

    public function createMaster(Request $request)
    {
        $path = 'img/download/' . time() . $_FILES['file']['name'];
        copy($_FILES['file']['tmp_name'], $path);

        $master = [
            'name' => $request['name'],
            'description' => $request['description'],
            'img' => $path,
        ];

        $master_rez = Master::create($master);
        if ($master_rez) {
            return response()->json([
                "data" => [
                    "message" => "Created",
                    "id" => $master_rez->id
                ]
            ], 200, ["Content-type" => "application/json"]);
        }
    }

    public function update(Request $request, $id)
    {
        $master = Master::find($id);
        if(isset($_FILES['file'])){
            unlink($master['img']);
            $path = 'img/download/' . time() . $_FILES['file']['name'];
            copy($_FILES['file']['tmp_name'], $path);
            $master['img'] = $path;
        }
        $master['name'] = $request['name'];
        $master['description'] = $request['description'];
        $master->save();

        return response()->json([
            "data" => [
                "message" => "Updated"
            ]
        ], 200, ["Content-type" => "application/json"]);
    }

    public function delete($id)
    {
        $master = Master::find($id);
        unlink($master['img']);
        $imgs = MasterImg::where('master_id', "=", $id)->get();
        foreach($imgs as $img){
            unlink($img['img']);
            $img->delete();
        }
        $master->delete();
        return response()->json([
            "data" => [
                "message" => "Deleted"
            ]
        ], 200, ["Content-type" => "application/json"]);
    }

    public function addImg(Request $request, $id){
        $path = 'img/download/' . time() . $_FILES['file']['name'];
        copy($_FILES['file']['tmp_name'], $path);

        $img = [
            'master_id' => $id,
            'img' => $path,
        ];

        $img_rez = MasterImg::create($img);
        if ($img_rez) {
            return response()->json([
                "data" => [
                    "message" => "Created"
                ]
            ], 200, ["Content-type" => "application/json"]);
        }
    }

    public function deleteImg($id){
        $img = MasterImg::find($id);
        unlink($img['img']);
        $img->delete();
        return response()->json([
            "data" => [
                "message" => "Deleted"
            ]
        ], 200, ["Content-type" => "application/json"]);
    }

    public function getImg($id){
        $img = MasterImg::where('master_id', "=", $id)->get();
        return response()->json($img, 200, ["Content-type" => "application/json"]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Resources\MakineCollection;
use App\Http\Resources\MakineResource;
use Illuminate\Http\Request;
use App\Models\Makine;
class MakineController extends Controller
{
    public function index(){
        $makineler = Makine::where('isActive', 1)->get();
        return MakineResource::collection($makineler);
    }
}

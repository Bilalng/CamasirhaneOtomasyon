<?php

namespace App\Http\Controllers;

use App\Helper\ResponseHelper;
use App\Http\Resources\OgrenciResource;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Ogrenci;
class OgrenciAuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email|max:255',
            'password' => 'required|min:6|max:50',
        ]);

        $ogrenci = Ogrenci::where('email', $request->email)->first();

        if (!$ogrenci) {
            return response()->json(['message' => 'Öğrenci Bulunamadı'],404);
        }

        if (!Hash::check($request->password, $ogrenci->password)) {
            return response()->json(['message'=>'Hatalı parola'],401);
        }

        $token = $ogrenci->createToken('api-token')->plainTextToken;

        return response()->json(['message' => 'Token geldi', 'token' => $token]);
    }
    public function session(Request $request)
    {
        $ogrenci = $request->user();

        if (!$ogrenci) {
            return response()->json(['message' => 'Kullanıcı bulunamadı'], 404);
        }

        return new OgrenciResource(Ogrenci::findOrFail($ogrenci->id));
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        return response()->json(['message' => 'Başarıyla çıkış yapıldı']);
    }
}

<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class JsonMiddleware
{
    /**
     * Gelen/Giden Yanıtları Formatlama İşlemi
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $request->headers->set('Accept', 'application/json');

        $response = $next($request);


        if ($response instanceof JsonResponse) {
            $originalData = $response->getData(true);
            $formattedData = [
                'code' => $response->status(),
                'success' => $response->status() >= 200 && $response->status() < 300,
                'message' => $originalData['message'] ?? ($response->status() >= 200 && $response->status() < 300 ? 'İstek Başarılı' : 'Bir Hata Meydana Geldi'),
                'data' => $originalData['data'] ??array_diff_key($originalData, array_flip(['message'])),
            ];

            return response()->json($formattedData, $response->status());
        }


        return $response;
    }
}

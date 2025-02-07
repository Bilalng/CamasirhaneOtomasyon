<?php

namespace App\Helper;

use Illuminate\Http\JsonResponse;

class ResponseHelper
{
    /**
     * Standardize the API response format.
     *
     * @param mixed $data
     * @param string $message
     * @param int $statusCode
     * @return JsonResponse
     */
    public static function apiResponse($data = null, $message = '', $statusCode = 200): JsonResponse
    {
        return response()->json([
            'status' => $statusCode >= 200 && $statusCode < 300 ? 'success' : 'error',
            'code' => $statusCode,
            'message' => $message,
            'data' => $data
        ], $statusCode);
    }
}

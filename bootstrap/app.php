<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
    $middleware->appendToGroup('api',[
       \App\Http\Middleware\JsonMiddleware::class,
    ]);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        $exceptions->renderable(function (Throwable $e, $request) {

            if ($request->is('api/*')) {


                if ($e instanceof Illuminate\Validation\ValidationException) {
                    return response()->json(['message' => $e->getMessage(),], 422);
                }
                if ($e instanceof  \Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException){
                    return response()->json(['message' => 'Yetkisiz erişim'], 403);
                }

                if ($e instanceof Illuminate\Auth\AuthenticationException) {
                    return response()->json(['message' => 'Kimlik Doğrulama hatası'], 401);
                }

                if ($e instanceof Symfony\Component\HttpKernel\Exception\NotFoundHttpException) {
                    return response()->json(['message' => 'Aradığınızı Bulamadık'], 404);
                }



                // Diğer tüm hatalar için genel durum
                return response()->json(['data' => null, 'message'=> $e->getMessage()], 500);
            }

            // Eğer istek 'api/*' altında değilse, default exception handling'e devam edebilir.
            return null; // Laravel'in default handling'ini kullanmak için null döndür.
        });
    })->create();

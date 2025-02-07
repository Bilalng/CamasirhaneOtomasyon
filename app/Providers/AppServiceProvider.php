<?php

namespace App\Providers;

use Carbon\Carbon;
use Filament\Facades\Filament;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Validator::extend('this_week', function ($attribute, $value, $parameters, $validator) {
            $date = Carbon::parse($value);
            return $date->isSameWeek(Carbon::now());
        });
    }
}

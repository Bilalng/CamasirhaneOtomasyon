<?php

namespace App\Filament\Pages;

use Filament\Facades\Filament;
use Filament\Pages\Dashboard as BaseDashboard;

class Dashboard extends BaseDashboard
{
    public function getColumns(): array
    {

        return [
            'md' => 1,
            'xl' => 2,
        ];
    }
    public function getWidgets(): array
    {

        return Filament::getWidgets();
    }

}

<?php

namespace App\Filament\Resources\OgrenciResource\Pages;

use App\Filament\Resources\OgrenciResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListOgrencis extends ListRecords
{
    protected static string $resource = OgrenciResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

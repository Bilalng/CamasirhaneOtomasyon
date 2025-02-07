<?php

namespace App\Filament\Resources\MakineResource\Pages;

use App\Filament\Resources\MakineResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListMakines extends ListRecords
{
    protected static string $resource = MakineResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

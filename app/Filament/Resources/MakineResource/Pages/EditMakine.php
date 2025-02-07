<?php

namespace App\Filament\Resources\MakineResource\Pages;

use App\Filament\Resources\MakineResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditMakine extends EditRecord
{
    protected static string $resource = MakineResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

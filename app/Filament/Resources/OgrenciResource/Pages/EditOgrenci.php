<?php

namespace App\Filament\Resources\OgrenciResource\Pages;

use App\Filament\Resources\OgrenciResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditOgrenci extends EditRecord
{
    protected static string $resource = OgrenciResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

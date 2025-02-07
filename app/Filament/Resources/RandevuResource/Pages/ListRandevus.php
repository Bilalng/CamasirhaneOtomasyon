<?php

namespace App\Filament\Resources\RandevuResource\Pages;

use App\Filament\Resources\RandevuResource;
use App\Models\Randevu;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;


class ListRandevus extends ListRecords
{
    protected static string $resource = RandevuResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
            Actions\Action::make('settings')->icon('heroicon-s-cog-6-tooth')->label('Ayarlar')->url(Settings::getUrl())
        ];
    }

}

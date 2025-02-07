<?php

namespace App\Filament\Widgets;

use App\Models\Randevu;
use App\Models\User;
use Filament\Tables;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Database\Eloquent\Builder;

class SonRandevular extends BaseWidget
{
    protected int | string | array $columnSpan = [
        'default' => 2,
        'md' => 1,
        'xl' => 1,
    ];
    protected static ?string $heading = 'Son Alınan Randevular';

    public function table(Table $table): Table
    {
        return $table->query(  Randevu::orderBy('created_at','desc')->take(5))


            ->columns([
                TextColumn::make('ogrenci.fullname')->label('Öğrenci'),
                TextColumn::make('ogrenci.fullroom')->label('Oda/Blok'),
                TextColumn::make('tarih')->label('Randevu tarihi'),


            ])->striped()->paginated(false)
            ;
    }
}

<?php

namespace App\Filament\Widgets;

use App\Models\Randevu;
use Carbon\Carbon;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class GitmeyenOgrenciler extends BaseWidget
{
    protected static ?string $heading = 'Bu hafta randevusuna gitmeyen öğrenciler';
    protected int | string | array $columnSpan = 2;
    public function table(Table $table): Table
    {
        $startOfWeek = Carbon::now()->startOfWeek();
        $endOfWeek = Carbon::now()->endOfWeek();

        return $table
            ->query(
                Randevu::where('is_verified', 0)
                    ->whereBetween('tarih', [$startOfWeek, $endOfWeek])
                    ->whereRaw("CONCAT(tarih, ' ', baslangic_saati) < ?", [Carbon::now()])
                    ->orderBy('tarih', 'desc')
            )
            ->columns([
                TextColumn::make('ogrenci.fullname')->label('Öğrenci'),
                TextColumn::make('ogrenci.fullroom')->label('Oda/Blok'),
                TextColumn::make('tarih')->label('Randevu tarihi'),
                TextColumn::make('fullsaat')->label('Randevu saati'),
            ])
            ->striped()
            ->paginated(false);
    }
}

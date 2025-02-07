<?php

namespace App\Filament\Widgets;

use App\Models\Makine;
use App\Models\Ogrenci;
use App\Models\Randevu;
use Carbon\Carbon;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class OgrenciOverview extends BaseWidget

{
    protected int | string | array $columnSpan = 2;
    protected function getStats(): array
    {
        $ogrenciSayisi = Ogrenci::count();

        $randevuSayisi = Randevu::query()
            ->whereBetween('tarih', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
            ->count();
        $aktifMakine = Makine::query()->where('isActive',1)->count();

        return [
            Stat::make('Toplam Öğrenci', "{$ogrenciSayisi} Kişi")->icon('heroicon-c-academic-cap'),
            Stat::make('Bu Haftaki Toplam Randevu', "{$randevuSayisi} Adet")->icon('heroicon-c-calendar-date-range'),
            Stat::make('Aktif Makine Sayısı', "{$aktifMakine} Adet")->icon('iconpark-washingmachine'),
        ];
    }
}

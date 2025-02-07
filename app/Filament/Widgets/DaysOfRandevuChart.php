<?php

namespace App\Filament\Widgets;

use App\Models\Randevu;
use Carbon\Carbon;
use Filament\Widgets\ChartWidget;

class DaysOfRandevuChart extends ChartWidget
{
    protected static ?string $heading = 'Bu haftaki randevular';
    protected int | string | array $columnSpan = [
        'default' => 2,
        'md' => 1,
        'xl' => 1,
    ];
    protected static ?array $options = [
        'plugins' => [
            'legend' => [
                'display' => false,
            ],
        ],
    ];

    protected function getData(): array
    {

        $daysOfWeek = [
            'Pazartesi', 'Salı', 'Çarşamba', 'Perşembe', 'Cuma', 'Cumartesi', 'Pazar'
        ];

        $startOfWeek = Carbon::now()->startOfWeek();
        $endOfWeek = Carbon::now()->endOfWeek();


        $randevular = Randevu::whereBetween('tarih', [$startOfWeek, $endOfWeek])
            ->get()
            ->groupBy(function ($randevu) {
                return Carbon::parse($randevu->tarih)->dayOfWeek;
            });

        $counts = [];
        foreach (range(0, 6) as $day) {
            $counts[] = $randevular->get($day, collect())->count();
        }



        // Chart verilerini döndürme
        return [
            'labels' => $daysOfWeek, // Gün isimleri
            'datasets' => [
                [
                    'label' => 'Randevu Sayısı',
                    'data' => [$counts[1],$counts[2],$counts[3],$counts[4],$counts[5],$counts[6],$counts[0]], // Her günün randevu sayısı
                    'backgroundColor' => 'rgba(75, 192, 192, 0.2)',
                    'borderColor' => 'rgba(75, 192, 192, 1)',
                    'borderWidth' => 1,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
}

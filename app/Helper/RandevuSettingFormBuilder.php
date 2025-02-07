<?php

namespace App\Helper;

use Closure;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Section;
use Filament\Forms\Get;
use Filament\Forms;
class RandevuSettingFormBuilder
{
    /**
     * Dinamik olarak günler için section oluşturur.
     *
     * @param array $days Gün adlarını içeren dizi
     * @return array Form sectionlarının listesi
     */
    public static function buildSections(array $days): array
    {
        return array_map(function ($key, $day) {
            $lowercaseday = self::turkishToLower($key); // Burada key'i kullanıyoruz
            return Section::make($day)->schema([

                Repeater::make($key)
                    ->label(ucfirst($day) . " saat aralıkları")
                    ->schema([
                        Forms\Components\TimePicker::make('start_time')
                            ->label('Başlangıç Saati')
                            ->required()
                            ->rules([
                                fn (Get $get): Closure => function (string $attribute, $value, Closure $fail) use ($get) {
                                    if ($get('end_time') <= $value) {
                                        $fail("Başlangıç saati bitiş saatinden önce olmalıdır");
                                    }
                                },
                            ]),
                        Forms\Components\TimePicker::make('end_time')
                            ->label('Bitiş Saati')
                            ->required()
                            ->rules([
                                fn (Get $get): Closure => function (string $attribute, $value, Closure $fail) use ($get) {
                                    if ($get('start_time') >= $value) {
                                        $fail("Bitiş saati başlangıç saatinden sonra olmalıdır");
                                    }
                                },
                            ]),
                    ])
                    ->maxItems(10)
                    ->columns(2)
                    ->reorderable(false),
            ])->collapsed();
        }, array_keys($days), $days); // array_map'a key ve value parametreleri ekliyoruz
    }

    /**
     * Türkçe Karakterlere göre çevirme
     *
     * */
   public static function turkishToLower(string $string): string
    {
        $search = ['I', 'İ', 'Ş', 'Ç', 'Ü', 'Ö', 'Ğ','ı','ş','ç','ü','ö','ğ'];
        $replace = ['i', 'i', 's', 'c', 'u', 'o', 'g','i','s','c','u','o','g'];

        return str_replace($search, $replace, strtolower($string));
    }
}

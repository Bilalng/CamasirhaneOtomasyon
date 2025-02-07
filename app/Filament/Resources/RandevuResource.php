<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RandevuResource\Pages;
use App\Filament\Resources\RandevuResource\RelationManagers;
use App\Models\Randevu;
use Filament\Actions\Action;
use Filament\Forms;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Infolists\Components\TextEntry;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Carbon;
use Malzariey\FilamentDaterangepickerFilter\Filters\DateRangeFilter;

class RandevuResource extends Resource
{
    protected static ?string $model = Randevu::class;
    protected static ?string $modelLabel = 'Randevu';
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    public static function canCreate(): bool
    {
        return false;
    }


    public static function getSlug(): string
    {
        return '/yonetim/randevu';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('ogrenci.fullname')->label('Randevuyu Oluşturan'),
                Tables\Columns\TextColumn::make('fulltarih')->label('Randevu tarih/saat')
                    ->sortable(query: function (Builder $query, string $direction): Builder {
                        return $query
                            ->orderBy('tarih', $direction)
                            ->orderBy('baslangic_saati', $direction);
                    }),


                Tables\Columns\TextColumn::make('ogrenci.fullroom')->label('Blok/Oda'),
                Tables\Columns\TextColumn::make('makine.name')->label('Makine'),

                Tables\Columns\IconColumn::make('status')
                    ->icon(fn(string $state): string => match ($state) {
                        'no' => 'heroicon-o-x-circle',
                        'waiting' => 'heroicon-o-clock',
                        'yes' => 'heroicon-o-check-circle',
                    })
                    ->color(fn(string $state): string => match ($state) {
                        'no' => 'danger',
                        'waiting' => 'info',
                        'yes' => 'success',
                        default => 'gray',
                    })
                    ->label('Gitti mi?'),
                Tables\Columns\TextColumn::make('created_at')->label('Oluşturma tarihi')->dateTime('d/m/Y H:i')->sortable(),
            ])->defaultSort(function (Builder $query): Builder {
                return $query
                    ->orderBy('tarih', 'desc')
                    ->orderBy('baslangic_saati', 'desc');
            })
            ->filters([
                Filter::make('ogrenci_fullname')
                    ->form([
                        TextInput::make('ogrenci_fullname')->label('Adı Soyadı'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        return $query->whereHas('ogrenci', function (Builder $query) use ($data) {
                            $query->where('ad', 'like', "%{$data['ogrenci_fullname']}%")
                                ->orWhere('soyad', 'like', "%{$data['ogrenci_fullname']}%");
                        });
                    }),
                DateRangeFilter::make('tarih')->label('Randevu Tarihi'),
                Tables\Filters\SelectFilter::make('status')
                    ->options([
                        'no' => 'Gitmeyenler',
                        'yes' => 'Gidenler',
                        'waiting' => 'Henüz tarihi geçmeyenler',
                    ])
                    ->query(function (Builder $query, array $data) {
                        $today = Carbon::now();
                        if ($data['value'] === 'no') {
                            $query->whereRaw("CONCAT(tarih, ' ', baslangic_saati) < ?", [$today])
                                ->where('is_verified', false);
                        } elseif ($data['value'] === 'yes') {
                            $query->whereRaw("CONCAT(tarih, ' ', baslangic_saati) < ?", [$today])
                                ->where('is_verified', true);
                        } elseif ($data['value'] === 'waiting') {
                            $query->whereRaw("CONCAT(tarih, ' ', baslangic_saati) >= ?", [$today]);
                        }
                    })->label('Gitme durumu'),

                    Tables\Filters\SelectFilter::make('makine')->relationship('makine','name')->searchable()->preload(),

            ], layout: Tables\Enums\FiltersLayout::AboveContent)
            ->actions([

            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([

                ]),
            ])->searchOnBlur();
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRandevus::route('/'),
            'ayarlar' =>Pages\Settings::route('/settings')


        ];
    }
}

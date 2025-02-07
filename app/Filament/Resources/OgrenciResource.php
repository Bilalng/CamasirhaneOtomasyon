<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OgrenciResource\Pages;
use App\Filament\Resources\OgrenciResource\RelationManagers;
use App\Mail\ResetPasswordMail;
use App\Models\Ogrenci;
use Filament\Infolists;
use Filament\Facades\Filament;
use Filament\Forms;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Infolists\Infolist;
use Filament\Notifications\Notification;
use Filament\Resources\Components\Tab;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Malzariey\FilamentDaterangepickerFilter\Filters\DateRangeFilter;


class OgrenciResource extends Resource
{
    protected static ?string $model = Ogrenci::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $modelLabel = 'Öğrenci';

    public static function getSlug(): string
    {
        return '/yonetim/ogrencis';
    }

    public static function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Infolists\Components\TextEntry::make('fullname')->label('Adı Soyadı'),
                Infolists\Components\TextEntry::make('fullroom')->label('Blok/Oda'),
                Infolists\Components\TextEntry::make('email'),
                Infolists\Components\TextEntry::make('created_at')->label('Oluşturulma Tarihi')->dateTime('d F Y')

            ]);
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('ad')->required(),
                TextInput::make('soyad')->required(),
                TextInput::make('email')->required(),
                TextInput::make('blok_ad')->label('Blok')->helperText('Sadece Harf Giriniz ör: A,B,C')->required(),
                TextInput::make('oda_numarasi')->integer()->required(),

                Forms\Components\Grid::make()
                    ->columns(2)
                    ->schema([
                        Forms\Components\TextInput::make('password')
                            ->same('passwordConfirmation')
                            ->password()
                            ->maxLength(255)
                            ->required(fn ($component, $get, $livewire, $model, $record, $set, $state) => $record === null)
                            ->dehydrateStateUsing(fn ($state) => !empty($state) ? Hash::make($state) : '')
                            ->label('Parola'),

                        Forms\Components\TextInput::make('passwordConfirmation')
                            ->password()
                            ->dehydrated(false)
                            ->maxLength(255)
                            ->label('Parolayı Onayla'),
                    ])
            ]);

    }


    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('fullname')->label('Adı Soyadı')

                ,
                Tables\Columns\TextColumn::make('email')->label('E-mail Adresi'),
                Tables\Columns\TextColumn::make('fullroom')->label('Blok/Oda No'),
                Tables\Columns\TextColumn::make('created_at')->label('Oluşturulma Tarihi')->dateTime('d F Y'),
            ]) ->defaultSort(function (Builder $query): Builder {
                return $query
                    ->orderBy('ad')
                    ->orderBy('soyad');
            })
            ->filters([
                Filter::make('fullname')
                    ->form([
                        TextInput::make('fullname')->label('Adı Soyadı'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        return $query->where(function ($query) use ($data) {
                            $query->where('ad', 'like', "%{$data['fullname']}%")
                                ->orWhere('soyad', 'like', "%{$data['fullname']}%");
                        });
                    }),

                Tables\Filters\SelectFilter::make('blok_ad')->label('Blok Seçiniz')
                    ->options(

                        Ogrenci::query()->pluck('blok_ad', 'blok_ad')->unique()->toArray()
                    )->searchable(),

                Filter::make('oda_numarasi')
                    ->form([
                        TextInput::make('oda_numarasi')->label('Oda Numarası'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        return $query->where('oda_numarasi', 'like', '%' . $data['oda_numarasi'] . '%');
                    }),
                    DateRangeFilter::make('created_at')->label('Oluşturulma Tarihi'),


            ], layout: Tables\Enums\FiltersLayout::AboveContent)
            ->actions([

                Tables\Actions\ActionGroup::make([
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\ViewAction::make()
                ]),

            ],)
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    // Tüm kullanıcıların parolasını sıfırlayan toplu işlem (Bulk Action)
                    // Tüm kullanıcıların parolasını sıfırlayan toplu işlem (Bulk Action)
                    Tables\Actions\BulkAction::make('parolaSifirla')
                        ->label('Parolaları Sıfırla') // Butonun adı
                        ->action(function (Collection $records) { // Seçilen öğrencileri al
                            foreach ($records as $student) {
                                // 6 haneli rastgele parola oluştur
                                $newPassword = Str::random(6);
                                $fullname = $student->fullname;
                                // Şifreyi hashleyip kaydet
                                $student->password = Hash::make($newPassword);
                                $student->save();

                                // Yeni parolayı e-posta ile kullanıcıya gönder
                                Mail::to($student->email)->send(new ResetPasswordMail($newPassword,$fullname));
                            }


                            // Bildirim gönder
                            Notification::make()
                                ->title('Başarılı!')
                                ->body('Seçilen öğrencilerin parolaları sıfırlandı ve e-posta ile gönderildi.')
                                ->success()
                                ->send();
                        })
                        ->requiresConfirmation() // İşlem öncesi onay al
                ]),
            ]);
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
            'index' => Pages\ListOgrencis::route('/'),
            'create' => Pages\CreateOgrenci::route('/create'),
            'view' => Pages\ViewOgrenci::route('/{record}'),
            'edit' => Pages\EditOgrenci::route('/{record}/edit'),
        ];
    }
}

<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MakineResource\Pages;
use App\Filament\Resources\MakineResource\RelationManagers;
use App\Models\Makine;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class MakineResource extends Resource
{
    protected static ?string $model = Makine::class;
    protected static ?string $modelLabel='Çamaşır Makinesi';
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function getSlug(): string
    {
        return '/yonetim/makines';
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')->label('Makine Adı')->required(),
                Forms\Components\Toggle::make('isActive')->label('Aktif mi?')->required()->default(true),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name'),
                Tables\Columns\ToggleColumn::make('isActive')->label('Aktif mi?'),
                Tables\Columns\TextColumn::make('created_at')->label('Oluşturulma Tarihi')->dateTime('d F Y'),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListMakines::route('/'),
            'create' => Pages\CreateMakine::route('/create'),
            'edit' => Pages\EditMakine::route('/{record}/edit'),
        ];
    }
}

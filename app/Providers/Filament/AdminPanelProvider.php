<?php

namespace App\Providers\Filament;

use App\Filament\Pages\Dashboard;
use App\Filament\Widgets\DaysOfRandevuChart;
use App\Filament\Widgets\GitmeyenOgrenciler;
use App\Filament\Widgets\OgrenciOverview;
use App\Filament\Widgets\SonRandevular;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages;

use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use SolutionForest\FilamentAccessManagement\FilamentAccessManagementPanel;
use SolutionForest\FilamentAccessManagement\Navigation\NavigationItem;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('admin')
            ->path('admin')
            ->login()
            ->colors([
                'primary' => Color::Amber,
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([


            ])

            ->widgets([

                OgrenciOverview::class,
                SonRandevular::class,
                DaysOfRandevuChart::class,
                GitmeyenOgrenciler::class,
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])->plugin(FilamentAccessManagementPanel::make())->navigationItems([
                NavigationItem::make('Analytics'),
                NavigationItem::make('dashboard')
                    ->label(fn(): string => __('filament-panels::pages/dashboard.title'))
                    ->url(fn(): string => Dashboard::getUrl())
                    ->isActiveWhen(fn() => request()->routeIs('filament.admin.pages.dashboard')),

            ]);
    }
}

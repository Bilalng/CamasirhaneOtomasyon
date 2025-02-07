<?php

namespace App\Filament\Resources\RandevuResource\Pages;

use App\Helper\RandevuSettingFormBuilder;
use App\Helper\RandevuSettingGetter;
use App\Helper\RandevuSettingValidator;
use App\Models\RandevuSetting;
use Closure;
use Filament\Actions\Action;
use Filament\Forms;
use App\Filament\Resources\RandevuResource;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Get;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\Page;
use Illuminate\Contracts\Support\Htmlable;
use Mockery\Matcher\Not;

class Settings extends Page implements HasForms
{
    use InteractsWithForms;

    protected static string $resource = RandevuResource::class;
    protected static ?string $title = 'Randevu Genel Ayarlar';
    protected static string $view = 'filament.resources.randevu-resource.pages.settings';

    public $monday;
    public $tuesday;
    public $wednesday;
    public $thursday;
    public $friday;
    public $saturday;
    public $sunday;

    /**
     * Bilgilendirme için altbaşlık
     *
     * */
    public function getSubheading(): string|Htmlable|null
    {
        return 'Uygulanan yeni ayarlar bir sonraki hafta geçerli olacaktır.';
    }


    /**
     * Geçerli Olan Saat aralıkları için Modal
     * */
    protected function getHeaderActions(): array
    {
       // dd(now()->startOfWeek());
//dd(RandevuSettingGetter::getCurrentSettings());
        return [
            Action::make('currentSettings')
                ->label('Geçerli Ayarları Görüntüle')
                ->icon('heroicon-o-eye')
                ->modal()
                ->modalHeading('Şu an geçerli olan ayarlar')
                ->modalDescription('Bu bölümde mevcut ayarları görebilirsiniz.')
                ->modalContent(fn() => view('filament.resources.randevu-resource.pages.current-settings', [
                    'settings' => RandevuSettingGetter::getCurrentSettings(),
                ]))
                ->modalSubmitAction(false)
                ->modalCancelActionLabel(strval(__('filament-actions::view.single.modal.actions.close.label')))
            ,
        ];
    }

    protected function getFormSchema(): array
    {
        // Gün adları
        $days = ['monday'=> 'Pazartesi',
            'tuesday' => 'Salı',
            'wednesday'=>'Çarşamba',
            'thursday' => 'Perşembe',
            'friday' => 'Cuma',
            'saturday' =>'Cumartesi',
            'sunday'=>'Pazar'];

        // RandevuSettingFormBuilder sınıfından sectionları oluştur
        return RandevuSettingFormBuilder::buildSections($days);
    }

    public function mount(): void
    {
        // Son randevu ayarını al
        $latestSettings = RandevuSetting::latest()->first();
//dd($latestSettings->monday);
        if ($latestSettings) {
            $this->form->fill([
                'monday' => $latestSettings->monday ?? [],
                'tuesday' => $latestSettings->tuesday ?? [],
                'wednesday' => $latestSettings->wednesday ?? [],
                'thursday' => $latestSettings->thursday ?? [],
                'friday' => $latestSettings->friday?? [],
                'saturday' => $latestSettings->saturday ?? [],
                'sunday' => $latestSettings->sunday ?? [],
            ]);
        }
    }
    public function submit()
    {
        $formdata = $this->form->getState();

        // Call the timeValidator for Pazartesi
        $pazartesiError = RandevuSettingValidator::timeValidator($formdata['pazartesi'], 'Pazartesi');

        // If there's a validation error for Pazartesi, show notification and return early
        if ($pazartesiError) {
            Notification::make()
                ->title('Hata!')
                ->body($pazartesiError)
                ->danger()
                ->send();

            return;
        }

        // Proceed with the form submission if validation passes
        //dd($formdata);
        RandevuSetting::create([
            'pazartesi' => $formdata['pazartesi'],
            'sali' => $formdata['sali'],
            'carsamba' => $formdata['carsamba'],
            'persembe' => $formdata['persembe'],
            'cuma' => $formdata['cuma'],
            'cumartesi' => $formdata['cumartesi'],
            'pazar' => $formdata['pazar'],
        ]);
        // Optional: Show a success notification
        Notification::make()
            ->title('Başarılı!')
            ->body('Yeni ayarlar başarıyla kaydedildi.')
            ->success()
            ->send();

    }
}

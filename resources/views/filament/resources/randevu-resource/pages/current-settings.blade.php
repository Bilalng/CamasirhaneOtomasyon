<!-- current-settings.blade.php -->
<div>
    <h3>Geçerli Ayarlar:</h3>
    @if($settings)
        <ul>
            @foreach (['monday' => 'Pazartesi', 'tuesday' => 'Salı', 'wednesday' => 'Çarşamba', 'thursday' => 'Perşembe', 'friday' => 'Cuma', 'saturday' => 'Cumartesi', 'sunday' => 'Pazar'] as $key => $day)
                <li>
                    <b>{{ ucfirst($day) }}</b>:

                    @if(isset($settings->{$key}) && !empty($settings->{$key}))
                        <ul style="list-style-type: square; padding-left: 20px; list-style-position: inside;">
                            @foreach ($settings->{$key} as $timeSlot)
                                <li style="position: relative; padding-left: 40px;">
                                    {{ $timeSlot['start_time'] }} - {{ $timeSlot['end_time'] }}
                                </li>
                            @endforeach
                        </ul>
                    @else
                        "Yok"
                    @endif
                </li>
            @endforeach
        </ul>
    @else
        <p>Bu hafta için ayar bulunmamaktadır.</p>
    @endif
</div>


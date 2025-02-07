<?php

namespace App\Helper;

use Filament\Notifications\Notification;

class RandevuSettingValidator
{
    /**
     * Validate the time ranges for a specific day.
     *
     * @param array $gun - Time ranges for the day
     * @param string $gunAdi - The name of the day (e.g., "Pazartesi", "Salı")
     * @return string|null - Returns an error message if validation fails, null otherwise
     */
    public static function timeValidator($gun, $gunAdi)
    {
        foreach ($gun as $key => $timeRange) {
            if ($key > 0) {
                $previousEndTime = $gun[$key - 1]['end_time'];
                $currentStartTime = $timeRange['start_time'];

                // Check if current start_time is less than previous end_time
                if ($currentStartTime < $previousEndTime) {
                    return "$gunAdi günündeki yeni aralık, bir önceki aralığın bitiş saatinden sonra başlamalıdır.";
                }
            }
        }

        // Return null if no error
        return null;
    }

    public static function settingValidator(){
        // Add any other settings validation logic here if needed
    }
}

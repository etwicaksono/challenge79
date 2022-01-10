<?php
function convertint($number)
{
    try {
        $hours = floor($number / 3600);
        $minutes = floor(($number % 3600) / 60);
        $seconds = ($number % 3600) % 60;
        echo "\n" . $hours . " hours " . $minutes . " minutes " . $seconds . " seconds";
    } catch (Throwable $e) {
        echo $e->getMessage();
    }
}

/*function secondsToTime($seconds)
{
    $dtF = new DateTime('@0');
    $dtT = new DateTime("@$seconds");
    return $dtF->diff($dtT)->format('%a days, %h hours, %i minutes and %s seconds');
}
*/

$input = (int) readline("Enter an integer: ");
convertint($input);
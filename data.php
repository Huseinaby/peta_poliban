<?php
// Array data koordinat
$data = [
    "coordinates" => [
        ["lat" => -3.2956349856617577, "lng" => 114.5819302950645, "popup" => "Lokasi 1"],
        ["lat" => -3.3, "lng" => 114.6, "popup" => "Lokasi 2"],
    ]
];

// Konversi array ke JSON
header('Content-Type: application/json');
echo json_encode($data);
?>

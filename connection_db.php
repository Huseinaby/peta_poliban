<?php
// Koneksi ke database MySQL
$host = "localhost";
$user = "root"; // Username database MySQL
$pass = "";     // Password database MySQL
$dbname = "peta_kampus"; // Nama database MySQL

// Koneksi ke MySQL
$conn = new mysqli($host, $user, $pass, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    http_response_code(500);
    die(json_encode(["error" => "Koneksi ke database gagal: " . $conn->connect_error]));
}

// Query ambil semua data gedung
$sql = "SELECT id, nama_gedung, nama_jurusan, deskripsi, foto, koordinat FROM buildings";
$result = $conn->query($sql);

$buildings = [];

// Periksa apakah ada hasil
if ($result && $result->num_rows > 0) {
    // Fetch data ke dalam array
    while ($row = $result->fetch_assoc()) {
        $buildings[] = [
            "id" => $row['id'],
            "nama_gedung" => $row['nama_gedung'],
            "nama_jurusan" => $row['nama_jurusan'],
            "deskripsi" => $row['deskripsi'],
            "foto" => $row['foto'],
            "koordinat" => $row['koordinat']
        ];
    }
} else {
    // Jika tidak ada data
    http_response_code(404);
    echo json_encode(["message" => "Tidak ada data gedung ditemukan."]);
    exit;
}

// Kirim data sebagai JSON
header('Content-Type: application/json');
echo json_encode($buildings, JSON_PRETTY_PRINT);

// Tutup koneksi
$conn->close();
?>
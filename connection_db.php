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

// Periksa parameter GET untuk menentukan jenis permintaan
if (isset($_GET['id'])) {
    // Ambil detail gedung berdasarkan ID
    $id = $conn->real_escape_string($_GET['id']);
    $sql = "SELECT b.id, b.nama_gedung, b.nama_jurusan, b.deskripsi, b.foto, b.koordinat,
                   db.lantai, db.ruang_teori, db.ruang_lab, db.ruang_rapat,
                   db.ruang_sholat, db.toilet, db.jumlah_ruangan,
                   db.akses_wifi, db.jam_operasional_a, db.jam_operasional_b
            FROM buildings b
            LEFT JOIN building_details db ON b.id = db.building_id
            WHERE b.id = '$id'";

    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $detail = $result->fetch_assoc();
        header('Content-Type: application/json');
        echo json_encode($detail, JSON_PRETTY_PRINT);
    } else {
        http_response_code(404);
        echo json_encode(["message" => "Detail gedung tidak ditemukan."]);
    }
} else {
    // Ambil semua data gedung
    $sql = "SELECT id, nama_gedung, nama_jurusan, deskripsi, foto, koordinat FROM buildings";
    $result = $conn->query($sql);

    $buildings = [];

    if ($result && $result->num_rows > 0) {
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
        header('Content-Type: application/json');
        echo json_encode($buildings, JSON_PRETTY_PRINT);
    } else {
        http_response_code(404);
        echo json_encode(["message" => "Tidak ada data gedung ditemukan."]);
    }
}

// Tutup koneksi
$conn->close();
?>

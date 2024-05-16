<?php
include 'koneksi.php';

// Ambil tanggal dan jam saat ini
$tanggal = date("Y-m-d");
$jam = date("H:i:s");

// Pastikan data POST yang diharapkan ada
if (isset($_POST['ppm']) && isset($_POST['tds']) && isset($_POST['kekeruhan']) && isset($_POST['status'])) {
    // Ambil nilai dari data POST
    $ppm = $_POST['ppm'];
    $tds = $_POST['tds'];
    $kekeruhan = $_POST['kekeruhan'];
    $status = $_POST['status'];

    // Buat query SQL untuk menyimpan data
    $sql = "INSERT INTO data (tanggal, jam, ppm, tds, kekeruhan, status) 
            VALUES ('$tanggal', '$jam', '$ppm', '$tds', '$kekeruhan', '$status')";

    // Jalankan query
    if ($konek->query($sql) === TRUE) {
        echo "Data berhasil disimpan";
    } else {
        echo "Error: " . $sql . "<br>" . $konek->error;
    }
} else {
    // Jika data POST tidak lengkap, kirim respon dengan kode status 400 (Bad Request)
    http_response_code(400);
    echo 'Data lengkap.';
}

// Tutup koneksi
$konek->close();
?>

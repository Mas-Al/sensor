<?php
// Variabel koneksi
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sensor";

// Membuat koneksi
$konek = mysqli_connect($servername, $username, $password, $dbname);

// Memeriksa koneksi
if (!$konek) {
    die("Koneksi Gagal: " . mysqli_connect_error());
}

// Jika koneksi berhasil, tidak perlu menampilkan pesan
// Lanjutkan kode Anda di sini
// ...

?>

<?php
include 'koneksi.php';

// Buat query SQL untuk menghapus semua data
$sql = "TRUNCATE TABLE data";

// Jalankan query
if ($konek->query($sql) === TRUE) {
    echo "Semua data berhasil dihapus";
} else {
    echo "Error: " . $sql . "<br>" . $konek->error;
}

// Tutup koneksi
$konek->close();
?>

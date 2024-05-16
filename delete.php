<?php
include 'koneksi.php';

// Pastikan data POST yang diharapkan ada
if (isset($_POST['id'])) {
    // Ambil ID data yang akan dihapus
    $id = $_POST['id'];

    // Buat query SQL untuk menghapus data
    $sql = "DELETE FROM data WHERE id = $id";

    // Jalankan query
    if ($konek->query($sql) === TRUE) {
        echo "Data berhasil dihapus";
    } else {
        echo "Error: " . $sql . "<br>" . $konek->error;
    }
} else {
    // Jika data POST tidak lengkap, kirim respon dengan kode status 400 (Bad Request)
    http_response_code(400);
    echo 'Data id tidak diterima.';
}

// Tutup koneksi
$konek->close();
?>

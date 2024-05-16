<?php
// Include your database connection file
include('koneksi.php');

// Query SQL untuk mendapatkan data sensor dari database
$query = "SELECT * FROM data";
$result = mysqli_query($konek, $query);

// Buat array untuk menyimpan data sensor
$data = [];
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

// Mengirimkan data sebagai respons JSON
header('Content-Type: application/json');
echo json_encode($data);
?>

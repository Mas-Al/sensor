$(document).ready(function() {
    // Fungsi untuk menghapus data berdasarkan ID
    function deleteData(id) {
        // Konfirmasi penghapusan
        if (confirm('Are you sure you want to delete this data?')) {
            // Kirim permintaan AJAX untuk menghapus data
            $.ajax({
                url: 'delete.php', // Ganti dengan lokasi file PHP Anda yang menangani penghapusan
                type: 'POST',
                data: { id: id },
                success: function(response) {
                    // Refresh tabel setelah penghapusan berhasil
                    $('#sensorTable').DataTable().ajax.reload();
                },
                error: function(xhr, status, error) {
                    console.error(error);
                }
            });
        }
    }

    // Fungsi untuk menghapus semua data
    $('#deleteAllDataButton').on('click', function() {
        // Konfirmasi sebelum menghapus semua data
        if (confirm('Are you sure you want to delete all data? This action cannot be undone.')) {
            // Kirim permintaan AJAX untuk menghapus semua data
            $.ajax({
                url: 'delete_all.php', // Ganti dengan lokasi file PHP Anda yang menangani penghapusan semua data
                type: 'POST',
                success: function(response) {
                    console.log(response);
                    alert(response); // Tampilkan pesan respons
                    // Refresh tabel setelah penghapusan berhasil
                    $('#sensorTable').DataTable().ajax.reload();
                },
                error: function(xhr, status, error) {
                    console.error(error);
                }
            });
        }
    });
});

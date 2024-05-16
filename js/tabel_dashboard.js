$(document).ready(function() {
    var currentPage = 1; // Simpan nomor halaman saat ini

    // Fungsi untuk memperbarui data secara periodik
    function updateData() {
        // Kirim permintaan AJAX ke server untuk mengambil data terbaru
        $.ajax({
            url: 'realtime.php', // Ganti dengan lokasi file PHP Anda yang menyediakan data terbaru
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                // Simpan nomor halaman saat ini sebelum memperbarui data
                currentPage = $('#sensorTable').DataTable().page.info().page + 1;
                
                // Update data dalam tabel
                $('#sensorTable').DataTable().clear().rows.add(response).draw();

                // Atur halaman tabel kembali ke halaman sebelumnya setelah data selesai dimuat
                $('#sensorTable').DataTable().page(currentPage - 1).draw(false);
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    }

    // Panggil fungsi pembaruan data setiap 1 detik
    setInterval(updateData, 1000);

    // Inisialisasi DataTables pada tabel
    $('#sensorTable').DataTable({
        "ajax": {
            "url": "realtime.php", 
            "dataSrc": "" 
        },
        "paging": true, 
        "pagingType": "full_numbers", // Menampilkan tombol navigasi
        "pageLength": 10, 
        "lengthMenu": [5, 10, 20, 50],
        "language": {
            "paginate": {
                "previous": "Previous",
                "next": "Next"
            }
        },
        "columns": [
            { 
                "data": null,
                "render": function (data, type, row, meta) {
                    return meta.row + 1;
                }
            },
            { "data": "tanggal" },
            { "data": "jam" },
            { "data": "ppm" },
            { "data": "tds" },
            { "data": "kekeruhan" },
            { "data": "status" }
        ],
        "dom": 'Bfrtip',
        "buttons": [
            {
                extend: 'copyHtml5',
                text: 'Copy',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'csvHtml5',
                text: 'CSV',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'excelHtml5',
                text: 'Excel',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'pdfHtml5',
                text: 'PDF',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'print',
                text: 'Print',
                exportOptions: {
                    columns: ':visible'
                }
            }
        ]
    });

    // Fungsi untuk memperbarui data secara periodik
    function updateData() {
        $.ajax({
            url: 'realtime.php',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                // Simpan nomor halaman saat ini sebelum memperbarui data
                currentPage = table.page();

                // Update data dalam tabel
                table.clear().rows.add(response).draw();

                // Atur halaman tabel kembali ke halaman sebelumnya setelah data selesai dimuat
                table.page(currentPage).draw(false);
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    }

    // Panggil fungsi pembaruan data setiap 1 detik
    setInterval(updateData, 1000);
});

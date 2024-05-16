$(document).ready(function() {
    // Fungsi untuk memperbarui data secara periodik
    function updateData() {
        $.ajax({
            url: 'realtime.php',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                var table = $('#sensorTable').DataTable();
                var currentPage = table.page();
                table.clear().rows.add(response).draw();
                table.page(currentPage).draw(false);
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    }

    setInterval(updateData, 1000);

    $('#sensorTable').DataTable({
        "ajax": {
            "url": "realtime.php",
            "dataSrc": ""
        },
        "paging": true,
        "pagingType": "full_numbers",
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
                "render": function(data, type, row, meta) {
                    return meta.row + 1;
                }
            },
            { "data": "tanggal" },
            { "data": "jam" },
            { "data": "ppm" },
            { "data": "tds" },
            { "data": "kekeruhan" },
            { "data": "status" },
            { "data": "keterangan" }
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
});

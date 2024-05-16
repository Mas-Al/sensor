$(document).ready(function() {
    var table = $('#sensorTable').DataTable();

    $('#exportButton').on('click', function() {
        table.button('.buttons-excel').trigger();
    });
});

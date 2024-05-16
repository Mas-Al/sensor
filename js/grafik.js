$(document).ready(function() {
    // Fungsi untuk memperbarui data grafik
    function updateChartData() {
        // Kirim permintaan AJAX untuk mendapatkan data terbaru
        $.ajax({
            url: 'realtime.php',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                // Buat array untuk menyimpan label dan data TDS
                var labels = [];
                var ppmData = [];
                var tdsData = [];
                // Loop melalui data response untuk mengambil tanggal dan data TDS
                response.forEach(function(item) {
                    labels.push(item.tanggal);
                    ppmData.push(item.ppm);
                    tdsData.push(item.tds);
                });

                // Update data grafik
                myChart.data.labels = labels;
                myChart.data.datasets[0].data = ppmData;
                myChart.data.datasets[1].data = tdsData;
                myChart.update(); // Update grafik
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    }

    // Panggil fungsi updateChartData setiap 3 detik
    setInterval(updateChartData, 1000);

    // Inisialisasi grafik pada saat dokumen siap
    var ctx = document.getElementById('grafiktds').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: [],
            datasets: [{
                label: 'PPM',
                data: [],
                fill: true,
                borderColor: 'rgb(75, 192, 192)',
                tension: 0.1
            },{
                label: "TDS",
                data: [],
                fill: true,
                borderColor: "rgb(255, 99, 132)",
                tension: 0.1
            }]
        },
        options: {
            plugins: {
                zoom: {
                    zoom: {
                        wheel: {
                            enabled: true,
                        },
                        pinch: {
                            enabled: true
                        },
                        mode: 'xy'
                    }
                }
            },
            scales: {
                x: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Tanggal'
                    }
                },
                y: {
                    display: true,
                    title: {
                        display: true,
                        text: 'NILAI'
                    }
                }
            }
        }
    });
});

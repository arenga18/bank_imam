<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title">Grafik Laporan Komposting</h3>
  </div>
  <div class="box-body">
    <canvas id="kompostingChart"></canvas>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function(){
    const ctx = document.getElementById('kompostingChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: {!! $labels !!},
            datasets: [
                {
                    label: 'Sampah Basah (Kg)',
                    data: {!! $sampah !!},
                    backgroundColor: 'rgba(75,192,192,0.6)'
                },
                {
                    label: 'Hasil Kompos (Kg)',
                    data: {!! $kompos !!},
                    backgroundColor: 'rgba(119,221,119,0.6)'
                }
            ]
        },
        options: {
            responsive:true,
            scales: {
                y: { beginAtZero:true }
            }
        }
    });
});
</script>

{{-- <div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title">Grafik Laporan Komposting</h3>
  </div>
  <div class="box-body">
    <canvas id="kompostingChart"></canvas>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function(){
    const ctx = document.getElementById('kompostingChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [],
            datasets: []
        }
    });
});
</script>

  --}}
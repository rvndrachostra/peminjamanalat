@extends('layouts.app')

@section('title', 'Dashboard Admin - Sport Hub')

@section('content')
<div class="mb-8">
    <h1 class="text-3xl font-bold text-gray-900">Dashboard Admin</h1>
    <p class="text-white-600 mt-2">Selamat datang, {{ Auth::user()->name }}!</p>
</div>

<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
    <div class="bg-white rounded-lg shadow p-6">
        <div class="flex items-center">
            <div class="shrink-0 bg-lime-100 rounded-lg p-3">
                <span class="text-2xl">👥</span>
            </div>
            <div class="ml-4">
                <p class="text-gray-500 text-sm">Total User</p>
                <p class="text-2xl font-bold text-gray-900">{{ $totalUsers }}</p>
            </div>
        </div>
    </div>

    <div class="bg-white rounded-lg shadow p-6">
        <div class="flex items-center">
            <div class="shrink-0 bg-green-100 rounded-lg p-3">
                <span class="text-2xl">🛠️</span>
            </div>
            <div class="ml-4">
                <p class="text-gray-500 text-sm">Total Sport</p>
                <p class="text-2xl font-bold text-gray-900">{{ $totalEquipment }}</p>
            </div>
        </div>
    </div>

    <div class="bg-white rounded-lg shadow p-6">
        <div class="flex items-center">
            <div class="shrink-0 bg-yellow-100 rounded-lg p-3">
                <span class="text-2xl">📋</span>
            </div>
            <div class="ml-4">
                <p class="text-gray-500 text-sm">Total Peminjaman</p>
                <p class="text-2xl font-bold text-gray-900">{{ $totalBorrowings }}</p>
            </div>
        </div>
    </div>

    <div class="bg-white rounded-lg shadow p-6">
        <div class="flex items-center">
            <div class="shrink-0 bg-red-100 rounded-lg p-3">
                <span class="text-2xl">⏳</span>
            </div>
            <div class="ml-4">
                <p class="text-gray-500 text-sm">Peminjaman Pending</p>
                <p class="text-2xl font-bold text-gray-900">{{ $pendingBorrowings }}</p>
            </div>
        </div>
    </div>
</div>

{{-- <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
    <div class="lg:col-span-2 bg-white rounded-lg shadow p-6">
        <h2 class="text-lg font-semibold text-gray-900 mb-4">Grafik Peminjaman (7 Hari Terakhir)</h2>
        <canvas id="borrowingChart"></canvas>
    </div>

    <div class="bg-white rounded-lg shadow p-6">
        <h2 class="text-lg font-semibold text-gray-900 mb-4">Status Peminjaman</h2>
        <canvas id="statusChart"></canvas>
    </div>
</div> --}}

<div class="grid grid-cols-1 lg:grid-cols-1 gap-6">
    <div class="bg-white rounded-lg shadow p-6">
        <h2 class="text-lg font-semibold text-gray-900 mb-4">Menu Manajemen</h2>
        <div class="grid grid-cols-2 md:grid-cols-5 gap-4">
            <a href="{{ route('admin.users.index') }}" class="block p-4 bg-lime-50 rounded-lg hover:bg-lime-100 transition">
                <div class="text-2xl mb-2">👥</div>
                <p class="font-medium text-gray-900 text-sm">Kelola User</p>
                <p class="text-xs text-gray-500">Tambah, edit, hapus user</p>
            </a>

            <a href="{{ route('admin.equipments.index') }}" class="block p-4 bg-green-50 rounded-lg hover:bg-green-100 transition">
                <div class="text-2xl mb-2">🛠️</div>
                <p class="font-medium text-gray-900 text-sm">Kelola Sport</p>
                <p class="text-xs text-gray-500">Kelola inventori Sport</p>
            </a>

            <a href="{{ route('admin.categories.index') }}" class="block p-4 bg-green-300 50 rounded-lg hover:bg-green-300100 transition">
                <div class="text-2xl mb-2">📁</div>
                <p class="font-medium text-gray-900 text-sm">Kategori Sport</p>
                <p class="text-xs text-gray-500">Kelola kategori</p>
            </a>

            <a href="{{ route('admin.borrowings.index') }}" class="block p-4 bg-yellow-50 rounded-lg hover:bg-yellow-100 transition">
                <div class="text-2xl mb-2">📋</div>
                <p class="font-medium text-gray-900 text-sm">Data Peminjaman</p>
                <p class="text-xs text-gray-500">Lihat semua peminjaman</p>
            </a>

            <a href="{{ route('admin.activity-logs.index') }}" class="block p-4 bg-red-50 rounded-lg hover:bg-red-100 transition">
                <div class="text-2xl mb-2">📝</div>
                <p class="font-medium text-gray-900 text-sm">Log Aktivitas</p>
                <p class="text-xs text-gray-500">Pantau aktivitas sistem</p>
            </a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
{{-- <script>
    // Fungsi untuk fetch data peminjaman real-time
    function loadBorrowingData() {
        // fetch('{{ route("admin.borrowing-chart-data") }}')
            .then(response => response.json())
            .then(data => {
                updateBorrowingChart(data.labels, data.values);
                updateStatusChart(data.statusData);
            });
    }

    // Grafik Peminjaman
    let borrowingChart = null;
    function updateBorrowingChart(labels, values) {
        const ctx = document.getElementById('borrowingChart').getContext('2d');

        if (borrowingChart) {
            borrowingChart.data.labels = labels;
            borrowingChart.data.datasets[0].data = values;
            borrowingChart.update();
        } else {
            borrowingChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Jumlah Peminjaman',
                        data: values,
                        borderColor: '#3b82f6',
                        backgroundColor: 'rgba(59, 130, 246, 0.1)',
                        borderWidth: 2,
                        fill: true,
                        tension: 0.4,
                        pointBackgroundColor: '#3b82f6',
                        pointRadius: 5
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            display: true,
                            position: 'top'
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                stepSize: 1
                            }
                        }
                    }
                }
            });
        }
    }

    // Grafik Status Peminjaman
    let statusChart = null;
    function updateStatusChart(statusData) {
        const ctx = document.getElementById('statusChart').getContext('2d');

        if (statusChart) {
            statusChart.data.datasets[0].data = [statusData.active, statusData.returned, statusData.pending];
            statusChart.update();
        } else {
            statusChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Aktif', 'Dikembalikan', 'Pending'],
                    datasets: [{
                        data: [statusData.active, statusData.returned, statusData.pending],
                        backgroundColor: [
                            '#fbbf24',
                            '#34d399',
                            '#f87171'
                        ],
                        borderColor: '#fff',
                        borderWidth: 2
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            position: 'bottom'
                        }
                    }
                }
            });
        }
    }

    // Load data pada saat halaman dimuat
    loadBorrowingData();

    // Refresh data setiap 30 detik
    setInterval(loadBorrowingData, 30000);
</script> --}}
@endsection

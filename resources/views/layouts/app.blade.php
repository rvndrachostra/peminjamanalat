<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Sport Hub')</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Mono:wght@400;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'DM Sans', sans-serif;
            background: linear-gradient(135deg, #064e3b 0%, #065f46 50%, #10b981 100%);
            min-height: 100vh;
        }

        .mono-font {
            font-family: 'Space Mono', monospace;
        }

        .sidebar {
            transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .sidebar-overlay {
            transition: opacity 0.3s ease, visibility 0.3s ease;
        }

        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
        }

        .custom-scrollbar::-webkit-scrollbar-track {
            background: rgba(16, 185, 129, 0.1);
            border-radius: 10px;
        }

        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: rgba(16, 185, 129, 0.4);
            border-radius: 10px;
        }

        .custom-scrollbar::-webkit-scrollbar-thumb:hover {
            background: rgba(16, 185, 129, 0.6);
        }

        .glass-effect {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
        }

        .glass-dark {
            background: rgba(6, 78, 59, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
        }

        .nav-link {
            position: relative;
            overflow: hidden;
            transition: all 0.3s ease;
        }

        .nav-link::before {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width: 3px;
            background: linear-gradient(180deg, #10b981, #22c55e);
            transform: scaleY(0);
            transition: transform 0.3s ease;
        }

        .nav-link:hover::before,
        .nav-link.active::before {
            transform: scaleY(1);
        }

        .nav-link:hover {
            background: rgba(16, 185, 129, 0.15);
            transform: translateX(4px);
        }

        .nav-link.active {
            background: linear-gradient(90deg, rgba(16, 185, 129, 0.25), rgba(16, 185, 129, 0.05));
            color: #34d399;
            font-weight: 600;
        }

        .hamburger-line {
            transition: all 0.3s ease;
            background-color: #047857;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animate-slide-up {
            animation: slideUp 0.6s ease forwards;
        }

        .gradient-text {
            background: linear-gradient(135deg, #10b981 0%, #22c55e 50%, #84cc16 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        @media (max-width: 768px) {
            .sidebar {
                transform: translateX(-100%);
            }

            .sidebar.active {
                transform: translateX(0);
            }
        }
    </style>
</head>
<body class="antialiased">

    <div id="sidebarOverlay"
         class="sidebar-overlay fixed inset-0 bg-black bg-opacity-50 z-40 md:hidden"
         style="opacity: 0; visibility: hidden;"
         onclick="toggleSidebar()">
    </div>

    <aside id="sidebar" class="sidebar fixed left-0 top-0 w-64 h-full glass-dark text-white overflow-y-auto custom-scrollbar z-50 shadow-2xl">
        <div class="p-6">

            <div class="mb-8 pb-6 border-b border-emerald-800">
                <div class="flex items-center justify-between">
                    <div>
                        <h1 class="text-2xl font-bold gradient-text mono-font">Sport Hub</h1>
                        <p class="text-xs text-emerald-300 mt-1">Management System</p>
                    </div>
                    <button onclick="toggleSidebar()" class="md:hidden text-emerald-300 hover:text-white transition">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
                        </svg>
                    </button>
                </div>
            </div>

            @if (Auth::user()->isAdmin())
                <div class="mb-6">
                    <h3 class="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-4 px-3">Admin Panel</h3>
                    <nav class="space-y-1">
                        <a href="{{ route('dashboard') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('dashboard') ? 'active' : '' }}">
                            <span class="text-xl mr-3">📊</span>
                            <span class="text-sm">Dashboard</span>
                        </a>
                        <a href="{{ route('admin.users.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('admin.users.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">👥</span>
                            <span class="text-sm">Kelola User</span>
                        </a>
                        <a href="{{ route('admin.equipments.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('admin.equipments.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">🛠️</span>
                            <span class="text-sm">Kelola Alat</span>
                        </a>
                        <a href="{{ route('admin.categories.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('admin.categories.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">📁</span>
                            <span class="text-sm">Kategori</span>
                        </a>
                        <a href="{{ route('admin.borrowings.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('admin.borrowings.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">📋</span>
                            <span class="text-sm">Peminjaman</span>
                        </a>
                        <a href="{{ route('admin.activity-logs.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('admin.activity-logs.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">📝</span>
                            <span class="text-sm">Log Aktivitas</span>
                        </a>
                    </nav>
                </div>
            @elseif (Auth::user()->isPetugas())
                <div class="mb-6">
                    <h3 class="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-4 px-3">Petugas</h3>
                    <nav class="space-y-1">
                        <a href="{{ route('dashboard') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('dashboard') ? 'active' : '' }}">
                            <span class="text-xl mr-3">📊</span>
                            <span class="text-sm">Dashboard</span>
                        </a>
                        <a href="{{ route('petugas.borrowings.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('petugas.borrowings.index') ? 'active' : '' }}">
                            <span class="text-xl mr-3">✅</span>
                            <span class="text-sm">Setujui Peminjaman</span>
                        </a>
                        <a href="{{ route('petugas.borrowings.monitoring') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('petugas.borrowings.monitoring') ? 'active' : '' }}">
                            <span class="text-xl mr-3">👁️</span>
                            <span class="text-sm">Pantau Pengembalian</span>
                        </a>
                        <a href="{{ route('petugas.reports.borrowings') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('petugas.reports.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">🖨️</span>
                            <span class="text-sm">Cetak Laporan</span>
                        </a>
                    </nav>
                </div>
            @elseif (Auth::user()->isPeminjam())
                <div class="mb-6">
                    <h3 class="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-4 px-3">Peminjam</h3>
                    <nav class="space-y-1">
                        <a href="{{ route('dashboard') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('dashboard') ? 'active' : '' }}">
                            <span class="text-xl mr-3">📊</span>
                            <span class="text-sm">Dashboard</span>
                        </a>
                        <a href="{{ route('peminjam.equipments.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('peminjam.equipments.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">🔍</span>
                            <span class="text-sm">Lihat Daftar Alat</span>
                        </a>
                        <a href="{{ route('peminjam.borrowings.index') }}"
                           class="nav-link flex items-center px-4 py-3 rounded-xl {{ request()->routeIs('peminjam.borrowings.*') ? 'active' : '' }}">
                            <span class="text-xl mr-3">📦</span>
                            <span class="text-sm">Peminjaman Saya</span>
                        </a>
                    </nav>
                </div>
            @endif

            <!-- User Profile Section -->
            <div class="mt-auto pt-6 border-t border-gray-700">
                <div class="px-3 py-3 rounded-xl bg-gray-800 bg-opacity-50">
                    <div class="flex items-center space-x-3">
                        <div class="w-10 h-10 rounded-full bg-gradient-to-br from-green-500 to-pink-500 flex items-center justify-center text-white font-bold">
                            {{ substr(Auth::user()->name, 0, 1) }}
                        </div>
                        <div class="flex-1 min-w-0">
                            {{-- <p class="text-sm font-semibold text-white truncate">{{ Auth::user()->name }}</p> --}}
                            <p class="text-xs text-gray-400">
                                @if(Auth::user()->isAdmin())
                                    Administrator
                                @elseif(Auth::user()->isPetugas())
                                    Petugas
                                @else
                                    Peminjam
                                @endif
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Logout Button -->
                <form method="POST" action="{{ route('logout') }}" class="mt-3">
                    @csrf
                    <button type="submit" class="w-full flex items-center justify-center px-4 py-3 rounded-xl bg-red-500 bg-opacity-20 hover:bg-opacity-30 text-red-400 transition">
                        <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"/>
                        </svg>
                        <span class="text-sm font-medium">Logout</span>
                    </button>
                </form>
            </div>
        </div>
    </aside>

    <!-- Main Content Area -->
    <div class="md:ml-64 min-h-screen">
        <!-- Top Navigation Bar -->
        <nav class="glass-effect sticky top-0 z-30 shadow-sm border-b border-gray-200">
            <div class="px-4 sm:px-6 lg:px-8">
                <div class="flex items-center justify-between h-16">
                    <!-- Hamburger Menu (Mobile) -->
                    <button onclick="toggleSidebar()" class="hamburger md:hidden p-2 rounded-lg hover:bg-gray-100 transition">
                        <div class="w-6 h-5 flex flex-col justify-between">
                            <span class="hamburger-line w-full h-0.5 bg-gray-700 rounded"></span>
                            <span class="hamburger-line w-full h-0.5 bg-gray-700 rounded"></span>
                            <span class="hamburger-line w-full h-0.5 bg-gray-700 rounded"></span>
                        </div>
                    </button>

                    <!-- Page Title (Mobile) -->
                    <h2 class="md:hidden text-lg font-bold gradient-text mono-font">Sport Hub</h2>

                    <!-- Right Side (Desktop) -->
                    <div class="hidden md:flex items-center space-x-4 ml-auto">
                        <div class="text-right">
                            {{-- <p class="text-sm font-semibold text-gray-800">{{ Auth::user()->name }}</p> --}}
                            <p class="text-xs text-gray-500">
                                @if(Auth::user()->isAdmin())
                                    Administrator
                                @elseif(Auth::user()->isPetugas())
                                    Petugas
                                @else
                                    Peminjam
                                @endif
                            </p>
                        </div>
                        <div class="w-10 h-10 rounded-full bg-gradient-to-br from-green-500 to-pink-500 flex items-center justify-center text-white font-bold shadow-lg">
                            {{ substr(Auth::user()->name, 0, 1) }}
                        </div>
                    </div>

                    <!-- Mobile User Avatar -->
                    <div class="md:hidden w-8 h-8 rounded-full bg-gradient-to-br from-green-500 to-pink-500 flex items-center justify-center text-white text-sm font-bold">
                        {{ substr(Auth::user()->name, 0, 1) }}
                    </div>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <main class="p-4 sm:p-6 lg:p-8">
            <div class="max-w-7xl mx-auto">
                @yield('content')
            </div>
        </main>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const overlay = document.getElementById('sidebarOverlay');
            const hamburger = document.querySelector('.hamburger');

            sidebar.classList.toggle('active');
            hamburger.classList.toggle('active');

            if (sidebar.classList.contains('active')) {
                overlay.style.opacity = '1';
                overlay.style.visibility = 'visible';
            } else {
                overlay.style.opacity = '0';
                overlay.style.visibility = 'hidden';
            }
        }

        // Close sidebar on mobile when clicking a link
        document.querySelectorAll('.nav-link').forEach(link => {
            link.addEventListener('click', function() {
                if (window.innerWidth < 768) {
                    toggleSidebar();
                }
            });
        });

        // Animate cards on page load
        window.addEventListener('load', function() {
            const cards = document.querySelectorAll('.animate-slide-up');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.1}s`;
            });
        });
    </script>
</body>
</html>

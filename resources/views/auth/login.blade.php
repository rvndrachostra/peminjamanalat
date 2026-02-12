<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Login - SportHub</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        .gradient-bg {
            background: linear-gradient(135deg, #66ea71 0%, rgb(75, 162, 110) 100%);
        }
        .glass-effect {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
        }
        .animate-float {
            animation: float 3s ease-in-out infinite;
        }
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }
        .input-focus:focus {
            border-color: rgb(102, 234, 133);
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
    </style>
</head>
<body class="bg-gradient-to-br from-green-50 via-blue-50 to-indigo-100">
    <!-- Background Decoration -->
    <div class="fixed inset-0 overflow-hidden pointer-events-none">
        <div class="absolute -top-40 -right-40 w-80 h-80 bg-green-300 rounded-full mix-blend-multiply filter blur-xl opacity-30 animate-float"></div>
        <div class="absolute -bottom-40 -left-40 w-80 h-80 bg-emerald-300 rounded-full mix-blend-multiply filter blur-xl opacity-30 animate-float" style="animation-delay: 2s;"></div>
        <div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-80 h-80 bg-lime-300 rounded-full mix-blend-multiply filter blur-xl opacity-30 animate-float" style="animation-delay: 4s;"></div>
    </div>

    <div class="min-h-screen flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8 relative">
        <div class="max-w-md w-full space-y-8">

            <!-- Logo & Title -->
          \
<div class="text-center">
    <div class="flex justify-center mb-6">
        <div class="gradient-bg p-4 rounded-2xl shadow-2xl">
            
            <!-- LOGO SEPATU SPORT -->
            <svg class="w-12 h-12 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" 
                      stroke-linejoin="round" 
                      stroke-width="2"
                      d="M3 14c2 0 3-2 5-2s3 2 5 2 3-2 5-2 3 2 3 2v3H3v-3z"/>
                <path stroke-linecap="round" 
                      stroke-linejoin="round" 
                      stroke-width="2"
                      d="M3 17h18"/>
            </svg>

        </div>
    </div>

    <h1 class="text-4xl font-bold bg-gradient-to-r from-green-600 to-emerald-500 bg-clip-text text-transparent mb-2">
        SportHub
    </h1>
    <p class="text-gray-600 text-lg">Sistem Peminjaman Sport</p>
    <p class="text-gray-500 text-sm mt-2">Masuk untuk melanjutkan</p>
</div>


            <!-- Alert Success -->
            @if (session('success'))
                <div class="glass-effect rounded-2xl p-4 border-l-4 border-green-500 shadow-lg">
                    <div class="flex items-center">
                        <svg class="w-6 h-6 text-green-500 mr-3 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <p class="text-green-700 font-medium">{{ session('success') }}</p>
                    </div>
                </div>
            @endif

            <!-- Alert Error -->
            @if (session('error'))
                <div class="glass-effect rounded-2xl p-4 border-l-4 border-red-500 shadow-lg">
                    <div class="flex items-center">
                        <svg class="w-6 h-6 text-red-500 mr-3 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                        <p class="text-red-700 font-medium">{{ session('error') }}</p>
                    </div>
                </div>
            @endif

            <!-- Login Form -->
            <div class="glass-effect rounded-3xl shadow-2xl p-8 md:p-10 space-y-6">
                <form method="POST" action="{{ route('login') }}" class="space-y-6" id="loginForm">
                    @csrf

                    <!-- Email Input -->
                    <div>
                        <label for="email" class="block text-sm font-semibold text-gray-700 mb-2">
                            Email Address
                        </label>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <svg class="h-5 w-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207"></path>
                                </svg>
                            </div>
                            <input
                                type="email"
                                name="email"
                                id="email"
                                value="{{ old('email') }}"
                                required
                                autofocus
                                autocomplete="email"
                                class="input-focus w-full pl-12 pr-4 py-3.5 border-2 @error('email') border-red-400 @else border-gray-200 @enderror rounded-xl focus:outline-none transition-all"
                                placeholder="nama@example.com">
                        </div>
                        @error('email')
                            <div class="mt-2 flex items-center text-sm text-red-600">
                                <svg class="w-4 h-4 mr-1 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd"></path>
                                </svg>
                                <span>{{ $message }}</span>
                            </div>
                        @enderror
                    </div>

                    <!-- Password Input -->
                    <div>
                        <label for="password" class="block text-sm font-semibold text-gray-700 mb-2">
                            Password
                        </label>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <svg class="h-5 w-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                                </svg>
                            </div>
                            <input
                                type="password"
                                name="password"
                                id="password"
                                required
                                autocomplete="current-password"
                                class="input-focus w-full pl-12 pr-4 py-3.5 border-2 @error('password') border-red-400 @else border-gray-200 @enderror rounded-xl focus:outline-none transition-all"
                                placeholder="••••••••">
                        </div>
                        @error('password')
                            <div class="mt-2 flex items-center text-sm text-red-600">
                                <svg class="w-4 h-4 mr-1 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd"></path>
                                </svg>
                                <span>{{ $message }}</span>
                            </div>
                        @enderror
                    </div>

                    <!-- Remember Me & Forgot Password -->
                    <div class="flex items-center justify-between">
                        <div class="flex items-center">
                            <input
                                type="checkbox"
                                name="remember"
                                id="remember"
                                {{ old('remember') ? 'checked' : '' }}
                                class="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300 rounded cursor-pointer">
                            <label for="remember" class="ml-2 block text-sm text-gray-700 cursor-pointer select-none">
                                Ingat saya
                            </label>
                        </div>
                        <div>
                            <a href="#" class="text-sm font-medium text-green-600 hover:text-green-500 transition">
                                Lupa password?
                            </a>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <button
                        type="submit"
                        class="w-full gradient-bg text-white py-3.5 rounded-xl hover:opacity-90 transition-all duration-200 font-bold text-lg shadow-lg hover:shadow-xl transform hover:-translate-y-0.5 active:scale-95">
                        <span class="flex items-center justify-center">
                            <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1"></path>
                            </svg>
                            Masuk Sekarang
                        </span>
                    </button>
                </form>

                <!-- Register Link -->
                <div class="text-center pt-4 border-t border-gray-100">
                    <p class="text-sm text-gray-600">
                        Belum punya akun?
                        <a href="#" class="font-semibold text-green-600 hover:text-green-500 transition">
                            Daftar sekarang
                        </a>
                    </p>
                </div>
            </div>

            <!-- Footer Text -->
            <div class="text-center space-y-2">
                <p class="text-gray-600 text-sm">
                    SportHub © 2026 - Sistem Peminjaman Sport
                </p>
                <div class="flex items-center justify-center space-x-4 text-xs text-gray-500">
                    <a href="#" class="hover:text-green-600 transition">Kebijakan Privasi</a>
                    <span>•</span>
                    <a href="#" class="hover:text-green-600 transition">Syarat & Ketentuan</a>
                    <span>•</span>
                    <a href="#" class="hover:text-green-600 transition">Bantuan</a>
                </div>
            </div>

            <!-- Back to Home Button -->
            <div class="text-center">
                <a href="{{ url('/') }}" class="inline-flex items-center text-sm font-medium text-gray-600 hover:text-green-600 transition">
                    <svg class="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
                    </svg>
                    Kembali ke Beranda
                </a>
            </div>
        </div>
    </div>

    <script>
    // Form validation
    document.getElementById('loginForm').addEventListener('submit', function(e) {
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;

        if (!email || !password) {
            e.preventDefault();
            alert('Email dan password harus diisi!');
            return false;
        }

        // Email validation
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            e.preventDefault();
            alert('Format email tidak valid!');
            return false;
        }

        // Show loading state
        const submitBtn = this.querySelector('button[type="submit"]');
        submitBtn.disabled = true;
        submitBtn.innerHTML = '<span class="flex items-center justify-center"><svg class="animate-spin h-5 w-5 mr-2" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"><circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle><path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path></svg>Memproses...</span>';
    });
    </script>
</body>
</html>

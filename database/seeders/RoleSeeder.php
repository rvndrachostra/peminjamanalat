<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Role;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Hash;

class RoleSeeder extends Seeder
{
    public function run()
    {
        // Create roles
        $roles = [
            ['name' => 'admin', 'label' => 'Administrator'],
            ['name' => 'petugas', 'label' => 'Petugas'],
            ['name' => 'peminjam', 'label' => 'Peminjam'],
        ];

        foreach ($roles as $r) {
            Role::firstOrCreate(['name' => $r['name']], $r);
        }

        // Create admin user
        $admin = User::where('email', 'admin@example.com')->first();
        if (!$admin) {
            $admin = User::create([
                'name' => 'Administrator',
                'email' => 'admin@example.com',
                'password' => Hash::make('password'),
                'phone' => '081234567890',
            ]);
        }

        $adminRole = Role::where('name', 'admin')->first();
        if ($adminRole && !$admin->roles()->where('role_id', $adminRole->id)->exists()) {
            $admin->roles()->attach($adminRole->id);
        }

        // Create petugas user
        $petugas = User::where('email', 'petugas@example.com')->first();
        if (!$petugas) {
            $petugas = User::create([
                'name' => 'Petugas Penyetujuan',
                'email' => 'petugas@example.com',
                'password' => Hash::make('  '),
                'phone' => '081234567891',
            ]);
        }

        $petugasRole = Role::where('name', 'petugas')->first();
        if ($petugasRole && !$petugas->roles()->where('role_id', $petugasRole->id)->exists()) {
            $petugas->roles()->attach($petugasRole->id);
        }

        // Create peminjam user
        $peminjam = User::where('email', 'peminjam@example.com')->first();
        if (!$peminjam) {
            $peminjam = User::create([
                'name' => 'Anggota Peminjam',
                'email' => 'peminjam@example.com',
                'password' => Hash::make('password'),
                'phone' => '081234567892',
            ]);
        }

        $peminjamRole = Role::where('name', 'peminjam')->first();
        if ($peminjamRole && !$peminjam->roles()->where('role_id', $peminjamRole->id)->exists()) {
            $peminjam->roles()->attach($peminjamRole->id);
        }


        foreach ($categories as $cat) {
            Category::firstOrCreate(['name' => $cat['name']], $cat);
        }
    }
}

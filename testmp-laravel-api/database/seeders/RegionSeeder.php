<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RegionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('regiones')->insert([
            [
                'nombre' => 'Región del Biobío'
            ],
            [
                'nombre' => 'Región de La Araucanía'
            ],
            [
                'nombre' => 'Región de Los Ríos'
            ]
        ]);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    protected $table = 'regiones';

    use HasFactory;

    protected $fillable = [
        'nombre'
    ];

    public function provincias(){
        return $this->hasMany(Provincia::class);
    }
}

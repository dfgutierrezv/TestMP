<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProvinciasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        
        Schema::create('provincias', function (Blueprint $table) {
            
            $table->id();
            $table->string('nombre');
            $table->timestamps();
            $table->unsignedBigInteger('region_id');
            
            $table->foreign('region_id')
                    ->references('id')->on('regiones')
                    ->onDelete('cascade');
            
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('provincias');
    }
}

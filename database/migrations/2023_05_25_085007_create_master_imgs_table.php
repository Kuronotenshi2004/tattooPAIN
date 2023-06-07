<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('master_imgs', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('master_id')->unsigned();
            $table->foreign('master_id')
                            ->references('id')
                            ->on('masters')
                            ->onDelete('cascade');
            $table->text('img');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('master_imgs');
    }
};

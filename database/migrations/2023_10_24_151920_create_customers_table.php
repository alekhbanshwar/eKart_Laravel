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
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string("name");
            $table->string("email");
            $table->string("mobile");
            $table->string("password");
            $table->string("address")->default("NULL");
            $table->string("city")->default("NULL");
            $table->string("state")->default("NULL");
            $table->string("zip")->default("NULL");
            $table->string("company")->default("NULL");
            $table->string("gstin")->default("NULL");
            $table->integer("status");
            $table->integer("is_verify");
            $table->integer("is_forgot_password");
            $table->integer("rand_id");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customers');
    }
};

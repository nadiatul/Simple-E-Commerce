<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->string('order_number');
            $table->decimal('subtotal', $precision = 15, $scale = 2);
            $table->integer('discount_percentage');
            $table->decimal('total_discount', $precision = 15, $scale = 2);
            $table->decimal('shipping_fee', $precision = 15, $scale = 2);
            $table->decimal('total', $precision = 15, $scale = 2);
            $table->string('status_payment');
            $table->string('status_shipping');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}

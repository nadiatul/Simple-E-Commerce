<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
        /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id',
        'order_number',
        'subtotal',
        'discount_percentage',
        'total_discount',
        'shipping_fee',
        'total',
        'status_payment',
        'status_shipping'
    ];

}

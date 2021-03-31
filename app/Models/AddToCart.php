<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddToCart extends Model
{
    use HasFactory;
    
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'carts';


     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'products_id',
        'user_id',
        'quantity'
    ];

       /**
     * Get the phone associated with the user.
     */
    public function product()
    {
        return $this->hasOne(Product::class, 'id', 'products_id');
    }
}

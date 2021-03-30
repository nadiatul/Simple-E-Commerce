<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\AddToCart;


class AddToCartController extends Controller
{
        
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $userId = Auth::user()->id;
        $carts = AddToCart::where('user_id', $userId)->get();
        return view('addToCarts');
    } 

    public function getCartList($userId)
    {
        $carts = AddToCart::where('user_id', $userId)->get();
        return $carts;
    } 

    public function store(Request $request) {
        $cart = new AddToCart;
        $cart->products_id = $request->productId;
        $cart->user_id = $request->userId;
        $cart->quantity = 1;
        $cart->save();
        return ['message'=> 'Item is added to Cart'];
    } 
}

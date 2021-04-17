<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Cart;


class CartController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $userId = Auth::user()->id;
        $carts = Cart::where('user_id', $userId)->get();
        return view('cart');
    }

    public function getCartList($userId)
    {
        $carts = AddToCart::with('product')->where('user_id', $userId)->get();
        return $carts;
    }


    public function delete($id)
    {
        AddToCart::destroy($id);
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

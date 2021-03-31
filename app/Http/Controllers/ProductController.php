<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function index() {
        $products = Product::get();
        return $products;
    }

    public function view($id) {
        $product = Product::find($id);
        return $product;
    }

    public function filterByCategory($category,$id) {
        $field = '';
        
        if($category == 'category'){
            $field = 'categories_id';
        } else {    
            $field = 'brands_id';
        }
        
        $product = Product::where('categories_id', $id)->get();
        return $product;
    }
}

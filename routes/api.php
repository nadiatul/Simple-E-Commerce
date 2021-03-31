<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/home', []);
Route::get('/products-list', [App\Http\Controllers\ProductController::class, 'index'])->name('products');
Route::get('/product/{id}', [App\Http\Controllers\ProductController::class, 'view'])->name('view');
Route::get('/product-category/{category}/{id}', [App\Http\Controllers\ProductController::class, 'filterByCategory'])->name('view');
Route::post('/add-to-cart', [App\Http\Controllers\AddToCartController::class, 'store']);

Route::get('/get-carts/{userId}', [App\Http\Controllers\AddToCartController::class, 'getCartList']);
Route::delete('/delete-cart/{userId}', [App\Http\Controllers\AddToCartController::class, 'delete']);

Route::get('/get-membership-discount/{userId}', [App\Http\Controllers\MembershipController::class, 'getMembershipDscount']);


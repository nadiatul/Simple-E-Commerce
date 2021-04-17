<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/product-details/{id}', [App\Http\Controllers\HomeController::class, 'productDetails'])->name('product-details');

Route::get('/add-to-carts', [App\Http\Controllers\CartController::class, 'index'])->name('add-to-carts');

Route::get('/order-history', [App\Http\Controllers\HomeController::class, 'orderHistory'])->name('order-history');

Route::get('/place-order', [App\Http\Controllers\HomeController::class, 'placeOrder'])->name('place-order');

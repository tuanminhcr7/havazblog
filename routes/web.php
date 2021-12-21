<?php

use App\Http\Controllers\PagesController;
use App\Http\Controllers\PostsController;
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

Route::get('/', [PagesController::class, 'index']);

Route::resource('/blog', PostsController::class);
// Route::get('/blog', [PostsController::class, 'index']);

// Route::get('/blog/create', [PostsController::class, 'create']);
// Route::post('/blog', [PostsController::class, 'store']);
// Route::get('/blog/{slug}', [PostsController::class], 'show');

Auth::routes();

Route::get('/home', [\App\Http\Controllers\HomeController::class, 'index'])->name('home');


<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



Route::get('posts', 'App\Http\Controllers\PostController@index');
Route::get('posts/{id}', 'App\Http\Controllers\PostController@postById');
Route::post('posts/store', 'App\Http\Controllers\PostController@store');
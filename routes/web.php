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
Route::get('/', function () {
    return redirect()->route('index');
});
use App\Http\Controllers\ApplicationController;
Route::get('application','App\Http\Controllers\ApplicationController@index')->name('index');
Route::post('save','App\Http\Controllers\ApplicationController@store')->name('datastore');
Route::get('tests/{id}', 'App\Http\Controllers\ApplicationController@show')->name('applicants.show');
Route::post('submit-answers', 'App\Http\Controllers\ApplicationController@submitAnswers');



<?php

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

Route::get('/', 'PageController@index');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/blog','BlogController@index');

Route::get('/blog/{slug}','BlogController@view');

Route::get('/projects','ProjectController@index');

Route::get('/project/{slug}','ProjectController@view');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

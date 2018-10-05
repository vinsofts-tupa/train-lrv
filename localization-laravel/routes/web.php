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

Route::get('/', function () {
    return view('welcome');
});

//localization
// Route::group(['prefix'=>'localization'],function(){
// 	Route::resource('/a','LocalizationController');
// 	Route::get('/{en}',function($en){
// 		App::setLocale($en);
// 		return trans('messages.title');
// 	});
// 	Route::get('/{vn}',function($vn){
// 		App::setLocale($vn);
// 		return trans('messages.title');
// 	});
// });
Route::group(['prefix'=>'/{lang}'],function(){
	Route::get('localization','LocalizationController@index');
	Route::get('add','LocalizationController@create');
	Route::post('store','LocalizationController@store');
	Route::get('delete/{id}','LocalizationController@delete');
	Route::get('edit/{id}','LocalizationController@edit');
	Route::post('update/{id}','LocalizationController@update');
	Route::get('capnhat','LocalizationController@capnhat');
});

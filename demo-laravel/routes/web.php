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


Route::get('dangnhap',function(){
	return view('dangnhap');
});
Route::get('hienthi',function(){
	return view('hienthi');
});
Route::post('kiemtra','TenController@login');
Route::post('token','TenController@getUserInfo');


//
Route::get('lienhe','ConController@getlienhe');
Route::post('lienhe111','ConController@postlienhe');


//localization
Route::get('localization',function(){
	// App::setLocale('en');
	return view('localization');
});
Route::get('localization/{lang}',function($lang){
	App:setLocale('en');
	return view('localization');
});

Route::get('trangchu',function(){
	return view('trangchu');
})->middleware('MyMiddle');
Route::get('login',function(){
	return view('login');
});
Route::post('check','LoginController@kiemtra');
Route::get('logout','LoginController@thoat');


//encode
Route::get('encryption','EncodeController@encryption');
Route::get('dencryption','EncodeController@dencryption');

Route::get('encode','EncodeController@encode');

Route::resource('resource','ResourceController');

Route::get('hash','EncodeController@sosanh');


Route::get('calculator', function(){
	echo 'Hello from the calculator package!';
});
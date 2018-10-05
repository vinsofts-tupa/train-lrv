<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class LoginController extends Controller
{
    public function kiemtra(Request $request){
    	$email = $request['email'];
    	$password = $request['password'];
    	$remember = false;
		if($request['remember'] == "on")
    	{
    		$remember = true;
    	}
    	if(Auth::attempt(['email'=>$email,'password'=>$password],$remember))
    	{
    		return redirect('trangchu');
    	}
    	else{
    		return redirect('login');
    	}
    }

    public function thoat(){
    	Auth::logout();
    	return redirect('login');
    }
}

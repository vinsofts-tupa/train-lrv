<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use JWTAuth;

class AuthController extends Controller
{
    public function __construct(){
        $this->middleware('guest',['except' => 'getLogout']);
    }

    public function authenticate(Request $request){
    	$crendentials = $request->only('email','password');

    	try{
    		if(!$token = JWTAuth::attempt($crendentials)){
    			return $this->response->error(['error' => 'User crendentials are not correct!'],401);
    		}
    	}catch(JWTException $ex){
    		return $this->response->error(['error' => 'SomeThing went wrong!'],500);
    	}

    	return $this->response->array(compact('token'));
    }
}

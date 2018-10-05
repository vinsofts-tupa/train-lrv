<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Hash;

use Crypt;

class EncodeController extends Controller
{
    public function encode(){
    	$afterEncrypt = Crypt::encrypt('hello world');
    	dump($afterEncrypt);
    	dump(Crypt::decrypt($afterEncrypt));
    }

    public function sosanh(){
    	$pw = 123456;
    	$hash = Hash::make($pw);
    	dd(Hash::check(1234567,$hash));
    }

    public function encryption(){
        return encrypt("Hello world");
    }

    public function dencryption(){
        return decrypt("eyJpdiI6IjN1Wk93ZXpoOEZ5aElZNXFIR1RMU1E9PSIsInZhbHVlIjoiSzRNU1BRaGxtQmwyZDE4S1RWNklhQW1kNytpeFhlNXdSSG1Cb0ZOTDQ5UT0iLCJtYWMiOiI4NDkyMTNkMDIxZmRiYjk3YWQwMTA4ZWUyMTEyYzNkM2Y0MmY4MTU1YjNjZDQ2ODAyYTc2ZDE2NWZhYzIzY2VmIn0");
    }
}

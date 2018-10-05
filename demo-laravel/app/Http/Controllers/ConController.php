<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Mail;

class ConController extends Controller
{
    public function getlienhe(){
        return view('mail');
    }

    public function postlienhe(Request $request){
    	$data = ['hoten' => $request->name, 'mota' => $request->description];
    	Mail::send('send',$data,function($msg){
    		$msg->from('tupa@vinsofts.net','Anh Tu');
    		$msg->to('tupa@vinsofts.net','Admin')->subject('Feedback');
    	});
    	return redirect()->back();

     //    Mail::send('send',[], function($message){
	    //     $message->to('tupa@vinsofts.net', 'Visitor')->subject('Visitor Feedback!');
	    // });

     //    echo "OK";
    }
}

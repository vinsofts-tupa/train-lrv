<?php
 
namespace App\Http\Controllers;
 
use Mail;
use App\User;
use App\Mail\OrderShipped;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

 
class EmailController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    
 
    // public function sendEmailReminder(Request $request)
    // {
    //     $id = 1; // điền 1 mã id bất kỳ của user trong bảng users 
    //     $user = User::findOrFail($id);
 
    //     Mail::to($user)->send(new UserEmail());
    // }
    

    public function postlienhe(Request $request){
    	$data = ['foo' => 'baz'];
    	Mail::send('sendmail',$data,function($msg){
    		$msg->from('tupa@vinsofts.net','Anh Tu');
    		$msg->to('tupa@vinsofts.net','Admin')->subject('Feedback');
    	});
    	return redirect()->back();
    }
}
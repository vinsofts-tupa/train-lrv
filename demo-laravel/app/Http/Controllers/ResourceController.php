<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Products;
use Crypt;
use Illuminate\Support\Facades\Cache;

class ResourceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        //-------
        // $value = Cache::get('key',Products::all());
        // dd($value);
        // $data = Cache::remember('products', 2, function () {
        //     return Products::all();
        // });
        
        // Cache::forget('products');
        //-------
        // $data = Products::all();
        //return view('resource.list',compact('data'));


        Cache::tags('people')->put('John', 'thang', 2);

        Cache::tags('people')->put('Anne    ', 'asdasd', 2);

        echo Cache::tags('people')->get('John'); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::user()->role_id==1){
            return view('resource.add');
        }else{
            return redirect('resource');
        }
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $sp = new Products;
        $sp->name = $request->txtSP;
        $sp->price = $request->txtSL;
        $sp->save();
        return redirect('resource'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Products::find($id);
        return view('resource.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $sp = Products::find($id);
   //      $sp->fill([
			// 'name'	=>	decrypt($request->txtSP)
   //      ])->save();
        $sp->name = $request->txtSP;
        $sp->save();
        return redirect('resource');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Auth::user()->role_id==1){
            $data = Products::destroy($id);
            return redirect('resource');
        }else{
            return redirect('resource');
        }    
    }
}

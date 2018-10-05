<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;

class TrailerController extends Controller
{
    public function index(){
    	return Products::all();
    }
    public function show(Products $id){
    	return $id;
    }
    public function create(Request $request){
    	$pr = new Products;
    	$pr->name = $request->name;
    	$pr->price = $request->price;
    	$pr->save();
    	return response()->json($pr,200);
    }
    public function delete(Products $id){
    	$id->delete();
    	return response()->json(null,204);
    }
    public function edit(Request $request,Products $id){
    	$id->name = $request->name;
    	$id->price = $request->price;
    	$id->save();
    	return response()->json($id,200);
    }
}
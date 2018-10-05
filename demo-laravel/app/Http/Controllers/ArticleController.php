<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use Validator;

class ArticleController extends Controller
{
    public function index()
    {
    	
		$data = Article::all();
    	return response()->json($data, 200);
    	
    }

    public function show(Article $article)
    {
        return $article;
    }

    public function store(Request $request)
    {
    	$data = new Article;
    	if($request->title != null){
    		if($request->body != null){
    			$data->title = $request->title;
		    	$data->body = $request->body;
		    	$data->save();
	    		return response()->json($data,201);
    		}else{
    			echo "body rong";
    		}
    	}else
    		echo "title rong";
    	
        // $article = Article::create($request->all());
        // return response()->json($article, 201);
    }

    public function update(Request $request, Article $article)
    {
    	$v = Validator::make($request->all(),
                [
                    'title' => 'required|unique:articles,title',
                    'body' =>  'required',
                ],
                [
                    'required' => ':attribute khong de trong',
                    'unique' => ':attribute trùng',
                ],
                [
                	"title"=>"Tieu de",
                	"body"=>"Noi dunng"
                ]
            );
        if ($v->fails()) {
            // return redirect()->back()->withErrors($v->errors());
            return response()->json($v->errors());
        }
		$article->title = $request->title;
		$article->body  = $request->body;
        $article->save();
        return response()->json($article, 200);
    }

    public function delete(Article $article)
    {
    	if($article != null){
    		$article->delete();
        	return response()->json(null, 204);
    	}else{
    		echo "id null";
    	}
    }
}
<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

use App\Article;

class BlogController extends Controller
{
    public function index()
    {
        $articles = Article::all();
        return view('blog', compact('articles'));
    }

    public function view($slug)
    {
        if(!$data = DB::table('articles')->where('slug',$slug)->first()){
            abort(404);
        }
        return view('post', compact('data'));
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BlogController extends Controller
{
    public function index()
    {
        $articles = DB::table('articles')->get();
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

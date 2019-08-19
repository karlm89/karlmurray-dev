<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{
    public function index()
    {
        $projects = DB::table('projects')->get();
        $articles = DB::table('articles')->get();
        $testimonials = DB::table('testimonials')->get();

        return view('index',compact('articles','projects','testimonials'));
    }

}

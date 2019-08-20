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
        $technologies = DB::table('projects')->get('stack');
        $testimonials = DB::table('testimonials')->get();

        $collection = collect($technologies);
        $tech = $collection->unique()->values()->all();

        return view('index',compact('articles','projects','testimonials','tech'));
    }

}

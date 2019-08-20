<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{
    public function index()
    {
        $projects = DB::table('projects')->orderBy('updated_at','ASC')->get();
        $articles = DB::table('articles')->orderBy('updated_at','DESC')->get();
        $technologies = DB::table('projects')->orderBy('stack', 'ASC')->get('stack');
        $testimonials = DB::table('testimonials')->orderBy('author', 'ASC')->get();

        $collection = collect($technologies);
        $tech = $collection->unique()->values()->all();

        return view('index',compact('articles','projects','testimonials','tech'));
    }

}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{
    public function index()
    {
        //Stores DB Queries as related variables
        $projects = DB::table('projects')->orderBy('updated_at','ASC')->get();
        $articles = DB::table('articles')->orderBy('updated_at','DESC')->get();
        $technologies = DB::table('projects')->orderBy('stack', 'ASC')->get('stack');
        $testimonials = DB::table('testimonials')->orderBy('author', 'ASC')->get();
        $interests = DB::table('interests')->get();

        //changes $technologies to a a collection then parses out each unique value.
        $collection = collect($technologies);
        $tech = $collection->unique()->values()->all();

        //returns the view with all data from the database
        return view('index',compact('articles','interests','projects','testimonials','tech'));
    }

}

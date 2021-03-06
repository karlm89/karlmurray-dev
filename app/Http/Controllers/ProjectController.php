<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProjectController extends Controller
{
    public function index()
    {
        $projects = DB::table('projects')->orderBy('title')->get();
        return view('projects', compact('projects'));
    }

    public function view($slug)
    {
        if(!$data = DB::table('projects')->where('slug',$slug)->first()){
            abort(404);
        }
        $challenges = DB::table('challenges')->where('project_slug', $slug)->get();

        return view('project', compact('data','challenges'));
    }
}

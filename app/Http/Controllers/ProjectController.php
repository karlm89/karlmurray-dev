<?php

namespace App\Http\Controllers;

use App\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProjectController extends Controller
{
    public function index()
    {
        $projects = Project::all();
        return view('projects', compact('projects'));
    }

    public function view($slug)
    {
        if(!$data = DB::table('projects')->where('slug',$slug)->first()){
            abort(404);
        }
        return view('project', compact('data'));
    }
}

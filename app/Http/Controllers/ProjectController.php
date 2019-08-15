<?php

namespace App\Http\Controllers;

use App\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function index()
    {
        $projects = Project::all();
        return view('projects', compact('projects'));
    }

    public function create()
    {
        //
    }

    public function store(StoreArticlesRequest $request)
    {
        // 
    }

    public function edit($id)
    {
        //
    }

    public function update(UpdateArticlesRequest $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}

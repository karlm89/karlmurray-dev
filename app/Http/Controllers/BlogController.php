<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Article;

class BlogController extends Controller
{
    public function index()
    {
        $articles = Article::all();
        return view('blog', compact('articles'));
    }

    public function create()
    {
        //
    }

    public function store(StoreArticlesRequest $request)
    {
        // ... to be discussed later
    }

    public function edit($id)
    {
        // ... to be discussed later
    }

    public function update(UpdateArticlesRequest $request, $id)
    {
        // ... to be discussed later
    }

    public function destroy($id)
    {
        // ... to be discussed later
    }
}

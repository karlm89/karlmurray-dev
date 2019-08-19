@extends('layouts.layout')

@section('title')
    Projects
@endsection

@section('content')
    <h1> Projects </h1>
    @isset($projects)
        <div class="flex-container">
            @foreach($projects as $project)
                <div class="flex-item blog-item">
                    <h3>{{ $project->title }}</h3>
                    <a class="link" href={{ $project->link }} target="_blank">{{ $project->link }}
                    <img src={{ env('APP_STORAGE_URL').$project->image }}></a>
                </div>
            @endforeach 
        </div>
    @endisset
@endsection

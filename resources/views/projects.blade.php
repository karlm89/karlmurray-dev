@extends('layouts.layout')

@section('title')
    Projects
@endsection

@section('content')
    <h1> Projects </h1>
    @isset($projects)
        <div class="flex-container">
            @foreach($projects as $project)
                <div class="flex-item">
                    @isset($project->image)
                        <img src={{ env('APP_STORAGE_URL').$project->image }}>
                    @endisset
                    <a href="/project/{{ $project->slug}}"><h3>{{ $project->title }}</h3></a>
                    <a class="link" href={{ $project->link }} target="_blank">{{ $project->link }}</a>
                    <p>Stack : {{ $project->stack }}</p>
                </div>
            @endforeach 
        </div>
    @endisset
@endsection

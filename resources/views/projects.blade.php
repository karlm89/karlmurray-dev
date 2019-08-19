@extends('layouts.layout')

@section('title')
    Projects
@endsection

@section('content')
    <div class="flex-container">
        <div class="flex-item">
            <h1> Projects </h1>
            @isset($projects)
                <div class="flex-container">
                    @foreach($projects as $project)
                        <div class="flex-item">
                            <h3>{{ $project->title }}</h3>
                        </div>
                    @endforeach 
                </div>
            @endisset
        </div>
    </div>
@endsection

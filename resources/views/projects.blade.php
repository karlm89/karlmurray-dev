@extends('layouts.layout')

@section('title')
    Projects
@endsection

@section('content')
    <div class="flex-container">
        <div class="flex-item">
            <h1> Projects </h1>
            @isset($projects)
                @foreach($projects as $project)
                    <h3>hello</h3>
                @endforeach
            @endisset
        </div>
    </div>
@endsection

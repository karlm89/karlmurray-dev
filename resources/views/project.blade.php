@extends('layouts.layout')

@section('title')
    {{$data->title}}
@endsection

@section('content')

    <h1 class="page-heading">{{ $data->title }}</h1>
    <h2>{{ $data->stack }}</h2>

    <div class="flex-container">
        <div class="flex-item">
            <h4>Links :</h4>
            <a href={{ $data->link }}>Visit Website</a>
            @if(!empty($data->repo))
                <a href={{ $data->repo }}>Visit Github Repo</a>
            @else
                <p>Repo is set to private at client's request</p>
            @endif
        </div>
    </div>
    @isset($challenges)
        <div class="fullwidth-container">
            <h3>Challenges : </h3>
            @foreach($challenges as $challenge)
                <p>Here is a challenge.</p>
            @endforeach
        </div>
    @endisset
@endsection

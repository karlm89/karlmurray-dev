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
            @if($data->private == false && isset($data->repo))
                <br><a href={{ $data->repo }} target="_blank">Visit Github Repo</a>
            @else
                <p>Repo is set to private at client's request</p>
            @endif
        </div>
    </div>
    @isset($challenges)
        <div class="fullwidth-container">
            <h3>Challenges : </h3>
            @foreach($challenges as $challenge)
                <p><b>{{ $challenge->problem }}</b></p>
                <p class="tab">{{ $challenge->solution }}</p>
            @endforeach
        </div>
    @endisset
@endsection

@extends('layouts.layout');

@section('title')
    {{$data->title}}
@endsection

@section('content')
    @isset($data)
        <img class="featured-img" src={{ env('APP_STORAGE_URL').$data->featured_image }}>
        <h1>{{$data->title}}</h1>
        <div class="blog-content">
            {!! $data->article_text !!}
        </div>
    @endisset
@endsection

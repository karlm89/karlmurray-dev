@extends('layouts.layout');

@section('title')
    Home 
@endsection

@section('content')
    <img class="featured-img" src="/assets/header.jpg">
    <h1 class="page-heading">Karl Murray</h1>
    <div class="flex-container">
        @if(count($projects)>0)
            <div class="flex-item">
                <h4>Projects :</h4>
                @foreach($projects as $project)
                    <a href="/project/{{$project->slug}}">{{ $project->title}}</a><br>
                @endforeach
            </div>
        @endif
        @if(count($tech)>0)
            <div class="flex-item">
                <h4>Technologies :</h4>
                @foreach($tech as $data)
                    <p>{{$data->stack}}</p>
                @endforeach
            </div>
        @endif
        @if(count($interests)>0)
            <div class="flex-item">
                <h4>Interested in Learning :</h4>
                @foreach($interests as $interest)
                    <p>{{ $interest->interest }}</p>
                @endforeach
            </div>
        @endif
        @if(count($articles)>0)
            <div class="flex-item">
                <h4>Blog Posts</h4>
                @foreach($articles as $article)
                    <a href="/blog/{{$article->slug}}">" {{ $article->title}} "</a>
                @endforeach
            </div>
        @endif
    </div>
    @if(count($testimonials)>0)
        <div class="fullwidth-container">
            <h4>Testimonials</h4>
            @foreach($testimonials as $data)
                <p>"{{ $data->text}}" - {{ $data->author }}</p>
            @endforeach
        </div>
    @endif
@endsection
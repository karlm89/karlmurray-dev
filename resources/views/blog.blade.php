@extends('layouts.layout');

@section('title')
    Blog
@endsection

@section('content')
    @isset($articles)
        <div class="flex-container">
            @foreach($articles as $article)
                <div class="flex-item blog-item">
                    @isset($article->featured_image)
                        <img src={{ env('APP_STORAGE_URL').$article->featured_image }}>
                    @endisset
                    <a href="/blog/view/{{$article->id}}"><h3>{{$article->title}}</h3></a>
                    @isset($article->category)
                        <p>Category : {{$article->category}}</p>
                    @endisset
                    <p>{{$article->created_at}}</p>
                </div>
            @endforeach
        </div>
    @endisset
@endsection
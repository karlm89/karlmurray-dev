@extends('layouts.layout');

@section('title')
    Blog
@endsection

@section('content')
    <div class="flex-container">
        @foreach($articles as $article)
            <div class="flex-item">
                @isset($article->featured_image)
                    <img src={{$article->featured_image}}>
                @endisset
                <a href="/blog/view/{{$article->id}}"><h3>{{$article->title}}</h3></a>
                @isset($article->category)
                    <p>Category : {{$article->category}}</p>
                @endisset
                <p>{{$article->created_at}}</p>
            </div>
        @endforeach
    </div>
    
@endsection
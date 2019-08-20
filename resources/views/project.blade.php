@extends('layouts.layout')

@section('title')
    {{$data->title}}
@endsection

@section('content')
    <div class="flex-container">
        <h1 class="page-heading">{{ $data->title }}</h1>
    </div>
@endsection

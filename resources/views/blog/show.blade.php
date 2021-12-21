@extends('layouts.app')

@section('content')
<div class="background-image grid grid-cols-1 m-auto" style="background-image: url('/images/{{ $post->image_path }}');">
    <div class="flex text-gray-100 pt-10">
        <div class="m-auto pt-4 pb-16 sm:m-auto w-4/5 block text-center">
            <h1 class="sm:text-gray-400 text-5xl uppercase font-bold text-shadow-md pb-14">
                {{ $post->title }}
            </h1>
        </div>
    </div>
</div>

    <div class="w-4/5 m-auto pt-20">    
        <span class="text-gray-500">
            By <span class="font-bold italic text-gray-800">{{ $post->user->name }}</span>, 
            Created on {{ date('jS M Y', strtotime($post->updated_at)) }} {{ date('H:i', strtotime($post->updated_at)) }}
        </span>
        <div class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light text-justify">
            {!! html_entity_decode($post->description) !!}
        </div>
    </div>

    

    
@endsection
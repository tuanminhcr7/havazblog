@extends('layouts.app')

@section('content')
    <div class="w-4/5 m-auto text-center">
        <div class="py-15 border-b border-gray-200">
            <h1 class="text-6xl">
                Blog Posts
            </h1>
        </div>
    </div>

    @if (session()->has('message'))
        <div class="w-4/5 m-auto mt-10 pl-2">
            <p class="w-1/6 text-center text-gray-50 bg-green-500 rounded-2xl py-4">
                {{ session()->get('message') }}
            </p>
        </div>
    @endif

    @if (Auth::check())
        <div class="pt-15 w-4/5 m-auto">
            <a href="/blog/create" class="bg-blue-500 uppercase bg-transparent text-gray-100 text-xs font-extrabold py-3 px-5 rounded-3xl">
                Create Post
            </a>
        </div>
    @endif

    @foreach ($posts as $post)
        <div class="sm:grid grid-cols-2 gap-20 w-4/5 mx-auto py-15 border-b border-gray-200">
            <div>
                <img src="{{ asset('images/' . $post->image_path) }}" width="700" alt="">
            </div>
            <div>
                <h2 class="text-gray-700 font-bold text-5xl pb-4">
                    {{ $post->title }} 
                </h2>
                <span class="text-gray-500">
                    By <span class="font-bold italic text-gray-800">{{ $post->user->name }}</span>, 
                    Created on {{ date('jS M Y', strtotime($post->updated_at)) }} {{ date('H:i', strtotime($post->updated_at)) }}
                </span>
                <div class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light text-justify">
                    {!! html_entity_decode($post->description) !!}
                </div>
                <a href="/blog/{{ $post->slug }}" class="uppercase bg-blue-500 text-gray-100 text-lg font-extrabold py-4 px-8 rounded-3xl">
                    Show Post
                </a>

                @if (isset(Auth::user()->id) && Auth::user()->id == $post->user_id)                  

                    <span class="float-right">
                        <form action="/blog/{{ $post->slug }}" method="POST">
                            @csrf
                            @method('delete')

                            <button class="mr-2 uppercase bg-red-500 text-gray-700 py-1 italic p-2" type="submit" onclick="return confirm('Bạn có muốn xóa bài này không?')">
                                Delete
                                
                            </button>
                        </form>
                    </span>

                    <span class="float-right">
                        <a href="/blog/{{ $post->slug }}/edit" class="mr-2 uppercase bg-green-500 text-gray-700 p-1 italic">
                            Edit Post
                        </a>
                    </span>
                @endif
            </div>
        </div>
    @endforeach

    {{-- <div class="row">
        <div class="container bg-blue-500 p-2 ml-20 text-white w-1/5 d-flex justify-content-center">
            {{ $posts->links('pagination::semantic-ui') }}        
        </div>
    </div> --}}

    <div class="w-1/5 m-auto text-center">
        <div class="py-1 px-1 border-gray-200">
            <div class="pagination">
                    {{ $posts->links('pagination::semantic-ui') }}
            </div>
        </div>
    </div>
@endsection
@extends('layouts.main-page')
@section('content')
{{-- @if (session('status'))
    <div class="alert alert-success" role="alert">
        {{ session('status') }}
    </div>
@endif --}}
    <nav-component :username="{{Auth::user()}}"></nav-component>
    <header-component></header-component>
    
    <add-to-carts-component :user="{{Auth::user()}}"></add-to-carts-component>
    
    <footer-component></footer-component>
@endsection

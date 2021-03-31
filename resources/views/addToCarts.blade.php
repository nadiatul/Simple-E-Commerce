@extends('layouts.main-page')
@section('content')
    <add-to-carts-component v-bind:user="{{Auth::user()}}"></add-to-carts-component>
@endsection

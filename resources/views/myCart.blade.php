@extends('layouts.mainPage')
@section('content')
    <my-cart v-bind:user="{{Auth::user()}}"></my-cart>
@endsection

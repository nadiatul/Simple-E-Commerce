@extends('layouts.mainPage')
@section('content')
    <vue-main v-bind:user="{{Auth::user()}}" ></vue-main>
@endsection

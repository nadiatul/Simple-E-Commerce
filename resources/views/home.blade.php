@extends('layouts.main-page')
@section('content')
    <vue-main v-bind:user="{{Auth::user()}}" ></vue-main>
@endsection

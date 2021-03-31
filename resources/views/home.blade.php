@extends('layouts.main-page')
@section('content')
    <main-component v-bind:user="{{Auth::user()}}" ></main-component>
@endsection

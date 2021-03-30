@extends('layouts.main-page')
@section('content')
    <main-component :user="{{Auth::user()}}" ></main-component>
@endsection

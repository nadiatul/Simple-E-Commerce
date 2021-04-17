@extends('layouts.main-page')
@section('content')
    <cart v-bind:user="{{Auth::user()}}"></cart>
@endsection

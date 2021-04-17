@extends('layouts.mainPage')
@section('content')
    <product-detail :product-id="{{$id}}" :user="{{Auth::user()}}"></product-detail>
@endsection

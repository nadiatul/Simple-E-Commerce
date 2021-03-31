@extends('layouts.main-page')
@section('content')
    <product-details-component :product-id="{{$id}}" :user="{{Auth::user()}}"></product-details-component>
@endsection

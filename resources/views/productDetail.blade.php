@extends('layouts.main-page')
@section('content')
    <product-detail :product-id="{{$id}}" :user="{{Auth::user()}}"></product-detail>
@endsection

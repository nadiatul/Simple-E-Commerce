@extends('layouts.main-page')
@section('content')
    <product-details-component :user="{{Auth::user()}}"></product-details-component>
@endsection

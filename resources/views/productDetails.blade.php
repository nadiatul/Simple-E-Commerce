@extends('layouts.main-page')
@section('content')
    <nav-component :username="{{Auth::user()}}"></nav-component>
    <header-component></header-component>
    
    <product-details-component></product-details-component>
    
    <footer-component></footer-component>
@endsection

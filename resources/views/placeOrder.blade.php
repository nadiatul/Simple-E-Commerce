@extends('layouts.main-page')
@section('content')
    <nav-component :username="{{Auth::user()}}"></nav-component>
    <header-component></header-component>
    
    <place-order-component></place-order-component>
    
    <footer-component></footer-component>
@endsection

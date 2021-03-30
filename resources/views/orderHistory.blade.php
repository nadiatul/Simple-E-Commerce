@extends('layouts.main-page')
@section('content')
    <nav-component :username="{{Auth::user()}}"></nav-component>
    <header-component></header-component>
    
    <order-history-component></order-history-component>
    
    <footer-component></footer-component>
@endsection

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>
        @yield('title')
    </title>
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    {{-- Favicon --}}
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('images/favicon/logo.png')}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('images/favicon/logo.png')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('images/favicon/logo.png')}}">
    <link rel="manifest" href="{{ asset('images/favicon/logo.png') }}">
    {{-- Typography --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hanken+Grotesk:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    {{-- Template Stylesheet --}}
    <link href="{{ asset('we-cycle-app/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="{{ asset('we-cycle-app/bootstrap/css/main.css') }}" rel="stylesheet" />
    <link href="{{ asset('we-cycle-app/bootstrap/css/pages/dashboard.css') }}" rel="stylesheet" />
    <!-- Bootstrap Font Icon CSS -->
    {{-- Libraries --}}
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    @yield('style')
</head>

<body>
    <main class="my-0 mx-auto min-h-full max-w-screen-sm">
        {{-- Content Landing Page Start --}}
        @yield('content')
        {{-- Content Landing Page End --}}
    </main>
    <script src="https://kit.fontawesome.com/a027d00185.js" crossorigin="anonymous"></script>
    <script src="{{ asset('we-cycle-app/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    @yield('scripts')
   {{-- NAVIGATION MENU --}}
    @include('layout.navigation')

</body>
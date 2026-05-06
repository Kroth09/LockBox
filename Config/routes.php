<?php

use App\Controllers\IndexController;
use App\Controllers\LoginController;
use App\Controllers\DashboardController;
use App\Controllers\RegisterController;
use App\Controllers\LogoutController;
use App\Controllers\Notas;
use Core\Route;


(new Route())

    //Usuario não autenticado
    ->get('/', IndexController::class )
    ->get('/login',[ LoginController::class, 'index' ])
    ->post('/login', [ LoginController::class, 'login'])
    ->get('/logout', LogoutController::class )
    ->get('/registrar', [RegisterController::class, 'index'])
    ->post('/registrar', [RegisterController::class, 'register'])


    //Usuario autenticado
    ->get('/dashboard',  DashboardController::class )
    ->get('/Notas/criar', [Notas\CriarController ::class , 'index'] )
    ->post('/notas/criar', [Notas\CriarController ::class , 'store'] )




    ->run();


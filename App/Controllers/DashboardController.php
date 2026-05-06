<?php

namespace App\Controllers;

class DashboardController
{
    public function __invoke()
    {
        if (!auth())
        {
            header('Location: /login');
            exit();
        }
        return view('dashboard');

    }
}
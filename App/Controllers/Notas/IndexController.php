<?php

namespace App\Controllers\Notas;

class IndexController
{
    public function __invoke()
    {
        if (!auth())
        {
            header('Location: /login');
            exit();
        }
        return view('notas');

    }
}
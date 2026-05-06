<?php

namespace App\Controllers;

use Core\Validacao;
use Core\Database;


class RegisterController
{
    public function index()
    {
        return view('registrar', template: 'guest');
    }
    public function register()
    {

        $validacao = Validacao::validar([
            'nome' => ['required'],
            'email' => ['required', 'email', 'confirmed', 'unique:usuarios,email'],
            'senha' => ['required', 'min:8', 'max:16', 'strong'],

        ], $_POST);

        if ($validacao->naoPassou()) {
            return view('registrar', template: 'guest');
        }


        $config = require __DIR__ . '/../../Config/config.php';
        $DB = new Database($config['database']);

        $DB->query(query: "insert into usuarios (nome, email, senha) values(:nome, :email , :senha)",
            params: [
            'nome' => $_POST['nome'],
            'email' => $_POST['email'],
            'senha' => password_hash($_POST['senha'], PASSWORD_DEFAULT),
        ]);


        flash()->push('mensagem', 'Registrado com sucesso!');
        return view('login');
    }
}
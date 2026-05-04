<?php

//require 'Validacao.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $config = require __DIR__ . '/../config.php';
    $DB = new Core\Database($config['database']);

    $validacao = Core\Validacao::validar([
        'nome' => ['required'],
        'email' => ['required', 'email', 'confirmed', 'unique:USUARIOS'],
        'senha' => ['required', 'min:8', 'max:16', 'strong'],

    ], $_POST);

    if (!empty($validacao->naoPassou())) {
        view('registrar');
        exit();
    }


    $resultado = $DB->query(query: "insert into usuarios (nome, email, senha) values(:nome, :email , :senha)", params: [
        'nome' => $_POST['nome'],
        'email' => $_POST['email'],
        'senha' => password_hash($_POST['senha'], PASSWORD_DEFAULT),
    ]);


//    header('location: /login?mensagem=Registrado com sucesso');

    flash()->push('mensagem', 'Registrado com sucesso!');
    header('location: /login');  // ou '/'
    exit();

}

view('registrar');
<?php


// 1 - Receber o formulário com email e senha

//dump($_SESSION);



if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $config = require __DIR__ . '/../config.php';
    $DB = new Core\Database($config['database']);

    $email = $_POST['email'];
    $senha = $_POST['senha'];


    $validacao = Core\Validacao::validar([
        'email' => ['required', 'email'],
        'senha' => ['required'],
    ], $_POST);

    if ($validacao->naoPassou()) {

        view('login');
        exit();
    }

    // 2 - Fazer uma consulta ao banco de dados com o email e senha
// email e senha

    $usuario = $DB->query(
        query: " SELECT * FROM usuarios WHERE email = :email",
        class: App\Models\Usuario::class,
        params: compact('email', )
    )->fetch();

    if ($usuario && password_verify($_POST['senha'], $usuario->senha)) {

        $_SESSION['auth'] = $usuario;

        flash()->push('mensagem', "Seja bem-vindo " . $usuario->nome . "!");

        header("Location: /dashboard");

        exit();

    } else {

        flash()->push('validacoes', ['email' => ['Usuário ou senha estão incorretos!']]);

    }
    $senhaDoPost = $_POST['senha'];
    $senhaDoBanco = $usuario->senha;


    $_SESSION['auth'] = $usuario;

    flash()->push('mensagem', 'Logado com sucesso!');

    header('location: /');
    exit();


// 3- Se existir, adicionar na sessão que o usuário está autenticado


// 4 - Mudar a informação no nosso navbar pra mostrar o nome do usuário


}
view('login');
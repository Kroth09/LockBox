<?php
require '../Core/functions.php';

define('ROOT_PATH', dirname(__DIR__));

spl_autoload_register(function ($class) {
    $file = str_replace('\\', DIRECTORY_SEPARATOR, $class) . '.php';
    require ROOT_PATH . DIRECTORY_SEPARATOR . $file;

});


session_start();


$config = require base_path('Config/config.php');
require base_path('Config/routes.php');
<?php
require '../Core/functions.php';

define('ROOT_PATH', dirname(__DIR__));

spl_autoload_register(function ($class) {
    $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require base_path("{$class}.php");

});


session_start();


$config = require base_path('Config/config.php');
require base_path('Config/routes.php');
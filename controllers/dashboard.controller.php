<?php

if (!auth()){
    header('location: login.php');
    exit();
}

echo "Estou logado @usekor";
<?php

function conectar() {
    $pdo=new PDO('mysql:host=localhost;port=3306;dbname=ej', 'joaquin', 'over348');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     return   $pdo;
}

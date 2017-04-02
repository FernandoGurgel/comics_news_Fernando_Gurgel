<?php

abstract class Conexao{
    private $conecao;
    function __construct(){
        $host="localhost";
        $usuario="root";
        $senha="root";
        $banco="comicsnews";

        $conecta="mysql:host=$host;dbname=$banco;charset=utf8";
        $opcoes = array (PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES UTF8');
        $this->conecao = new PDO($conecta,$usuario,$senha,$opcoes);

        if(mysql_connect_error()){
            die (" Error! concexao falhou.".mysqli_connect_error());
        }
    }
}

?>
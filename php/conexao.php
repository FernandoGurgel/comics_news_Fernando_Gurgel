<?php
require_once ("noticias.php");

class Conexao {
    
    private $noticia;
    private $conecao;
    private $query;
    
    function __construct(){
        $host="localhost";
        $usuario="root";
        $senha="root";
        $banco="comicsnews";

        $conecta="mysql:host=$host;dbname=$banco;charset=utf8";
        $opcoes = array (PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES UTF8');
        $this->conecao = new PDO($conecta,$usuario,$senha,$opcoes);

        if(mysqli_connect_error()){
            die (" Error! concexao falhou.".mysqli_connect_error());
        }
    }
    
    
    public function inserirNoticias(Noticia $noticia){
        $this->query ="INSERT INTO noticia(titulo, descricao, img, data, autor) VALUE ('".$noticia->get('titulo')."',
        '".$noticia->get('descricao')."',
        '".$noticia->get('img')."',
        now(),
        '".$noticia->get('autor')."')";
        
        if($this->conecao->exec($this->query)>0){
            echo '<script> exibiMensagem("Notícia salva com sucesso!"); </script>';
        }else{
            echo '<script> exibiMensagem("Error ao salvar!"); </script>';
        }
    }
    
    public function selectNoticia(){
        $this->query = "SELECT * FROM noticia order by data desc limit 20";
        
        $result = $this->conecao->query($this->query);
        $lista = array();
        
        while ($dados = $result->fetchObject()) {
            $this->noticia = new Noticia($dados->ID,
                                  $dados->titulo,
                                  $dados->descricao,
                                  $dados->img,
                                  $dados->data,
                                  $dados->autor);
           
            array_push($lista,$this->noticia);
        }
        return $lista;
    }
    
    public function selectID(Noticia $noticia){
        
        $this->query = "SELECT * FROM noticia where ID = ".$noticia->get('codigo')."";
        
        $result = $this->conecao->query($this->query);
        
        while ($dados = $result->fetchObject()) {
            $this->noticia = new Noticia($dados->ID,
                                  $dados->titulo,
                                  $dados->descricao,
                                  $dados->img,
                                  $dados->data,
                                  $dados->autor);
        }
        return $this->noticia;
    }
}

?>
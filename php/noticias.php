<?php 

class Noticia{
    
    private $codigo;
    private $titulo;
    private $descricao;
    private $img;
    private $data;
    private $autor;
    
    function __construct1($codigo,$titulo,$descricao,$img,$data,$autor){
       $this->data = $data;
       $this->codigo = $codigo;
       $this->titulo = $titulo;
       $this->descricao = $descricao;
       $this->img = $img;
       $this->autor = $autor;
    }
    
    function __construct($titulo,$descricao,$img,$autor){
        $this->titulo = $titulo;
        $this->descricao = $descricao;
        $this->img = $img;
        $this->autor = $autor;
        
    } 
    
    public function get ($variavel){
        return $this->$variavel;
    }
}

?>
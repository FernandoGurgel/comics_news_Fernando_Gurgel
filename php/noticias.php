<?php 

class Noticia{
    
    private $codigo;
    private $titulo;
    private $descricao;
    private $img;
    private $data;
    private $autor;
    
    function __construct($a1,$a2,$a3,$a4,$a5,$a6){
       $this->data = $a5;
       $this->codigo = $a1;
       $this->titulo = $a2;
       $this->descricao = $a3;
       $this->img = $a4;
       $this->autor = $a6;
    }
    
    public function get ($variavel){
        return $this->$variavel;
    }
}

?>
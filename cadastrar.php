
<div class="card-panel modal" id="modal1">
    <form class="modal-content" action="" method="post" enctype="multipart/form-data">
        <div class="input-field col s12">
            <h4 class="left-align"> Nova notícia</h4>
        </div>
        <div class="row ">
            <div class="input-field col s10 offset-s1">
                <i class="material-icons prefix">account_circle</i>
                <input id="nome" type="text" name="autor" class="validate">
                <label for="nome">Nome Completo</label>
            </div>
        </div>
        <div class="row ">
            <div class="input-field col s10 offset-s1">
                <input type="text" id="titulo"  name="titulo" class="valide" required>
                <label for="titulo">titulo</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s10 offset-s1">
                <textarea  name="descricao" id="descricao" class="materialize-textarea" required></textarea>
                <label for="descricao">Descrição</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s10 offset-s1">
                <div class="file-field input-field">
                    <div class="btn">
                        <span>Seleciona Arquivo</span>
                        <input type="file" name="arquivo">
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path valide" type="text" name="img">
                    </div>
                </div>
            </div>
        </div>
        <div class="row right-align">
            <div class="col s12 m12 ">
                <div class="col s12 ">
                    <button class="btn  waves-effect modal-close waves-light red darken-1" type="reset">
                        <i class="material-icons right">delete</i> Cancelar
                    </button>                                                     
                    <button class="btn  waves-effect waves-light  green darken-1" type="submit" name="metodo" value="cadastraNoticia">
                        <i class="material-icons right">send</i> Salvar
                    </button>
                </div>
            </div>
        </div>                 
    </form>
</div>
<?php
    require_once ("php/noticias.php");
    require_once ("php/conexao.php");

    $metodo = @$_POST['metodo'];
    $autor = @$_POST['autor'];
    $titulo = @$_POST['titulo'];
    $descricao = @$_POST['descricao'];
    $img = @$_POST['img'];
    $arqName = @$_FILES['arquivo']['name'];
    $arqTemp = @$_FILES['arquivo']['tmp_name'];
    $arqError = @$_FILES['arquivo']['error'];

    if((!empty($metodo))&& ($metodo == 'cadastraNoticia')){
        
        if($arqError == 0){
            $pasta = 'img/';
            $upload = move_uploaded_file($arqTemp, $pasta . $arqName);
            $noticia = new Noticia(null,$titulo,$descricao,$img,null,$autor);
            $conexao = new Conexao();
            $conexao->inserirNoticias($noticia);
        }
    }
?>
    
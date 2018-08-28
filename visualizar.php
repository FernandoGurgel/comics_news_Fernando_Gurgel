<?php 
    require_once ("php/conexao.php");
    require_once ("php/noticias.php");


    $codigo = @$_REQUEST['id'];

    if(!empty($codigo)){
        $conexao = new Conexao();
        $noticia = new Noticia($codigo,null,null,null,null,null);

        $noticia = $conexao->selectID($noticia);
    }
?> 
<! DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Últimas Notícias</title>
        <link rel="icon" href="img/news mov.gif">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/materialize.css"/>
        <link type="text/css" rel="stylesheet" href="css/personalizado.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.js"></script>        
        <script type="text/javascript" src="js/controle.js"></script>
    </head>
    <body class="grey lighten-3">
        <nav class="green lighten-1">
            <div class="nav-wrapper">
                <a href="index.php" class="brand-logo center">Comicsnews</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="index.php"><i class="material-icons left">store</i>Home</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="index.php"><i class="material-icons left">store</i>Home</a></li>
                </ul>
            </div>
        </nav>
        <div class="container section">
            <div class="row">
                <div class="col s12 m10 offset-m1">
                  <div class="card">
                    <div class="card-image">
                      <img src="img/<?php echo $noticia->get('img');?>" width="200" height="250" >
                    </div>
                    <div class="card-content">
                        <span class="card-title"><?php echo $noticia->get('titulo');?></span>
                        <div class="chip">
                            <?php echo $noticia->get('autor');?>
                        </div>
                        <div class="chip">
                            <?php echo $noticia->get('data');?>
                        </div>
                      <p class="flow-text text-darken-4 textInten"><?php echo $noticia->get('descricao');?></p>
                    </div>
                  </div>
                </div>
              </div>
        </div>
        <script> alteraTitulo("<?php echo $noticia->get("titulo"); ?>");</script>
    </body>
</html>
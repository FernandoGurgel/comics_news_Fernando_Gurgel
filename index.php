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
                <a href="#!" class="brand-logo center">Comicsnews</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="#modal1"><i class="material-icons left">mode_edit</i>Criar Notícia</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="#modal1"><i class="material-icons left">mode_edit</i>Criar Notícia</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <?php include 'cadastrar.php'; 
                $conexao = new Conexao();
            
                $list = $conexao->selectNoticia();
                
                $mensagem = '<div class="row section">
                <div class="col s8 offset-s2">
                ';
                foreach($list as $get){
                    $mensagem.='<div class="col s4">
                        <div class="card ">
                        <div class="card-image waves-effect waves-block waves-light">
                          <img class="activator" width="200" height="250" src="img/'.$get->get("img").'">
                        </div>
                        <div class="card-content">
                          <span class="card-title activator grey-text text-darken-4 maxText">
                          '.$get->get("titulo").'
                          </span>
                            <p><a href="
                              visualizar.php/?id='.$get->get("codigo").'">
                                Ir para ntícia
                            </a></p>
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4">Mais detalhes...<i class="material-icons right">close</i></span>
                          <p>'.$get->get("titulo").'</p>
                        </div>
                      </div>
                    </div>';
                }
                $mensagem.='</div>
                </div>';
                
                echo $mensagem;
            ?>
                
                
        </div>
        <script>
            exibiMensagem("Seja Bem Vindo!!");
        </script>
    </body>
  </html>

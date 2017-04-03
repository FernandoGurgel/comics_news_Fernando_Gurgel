<! DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Últimas Notícias</title>
        <link rel="icon" href="img/news mov.gif">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/materialize.css"/>
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
            
                list = $conexao->selectNoticia();
            
                for($i = 0; $i < count(list); $i++){
                    
                }
                
            ?>
        </div>
        <script>
            exibiMensagem("Seja Bem Vindo!!");
        </script>
    </body>
  </html>

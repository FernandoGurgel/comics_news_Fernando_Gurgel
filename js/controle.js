function exibiMensagem(mensagem){
    Materialize.toast(mensagem, 4000);
};

function alteraTitulo(mensagem){
    document.title = mensagem;
}

$(document).ready(function(){
    $('.modal').modal();
});


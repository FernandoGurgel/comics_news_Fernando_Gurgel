function exibiMensagem(mensagem) {
    Materialize.toast(mensagem, 4000);
};

function alteraTitulo(mensagem) {
    document.title = mensagem;
}

$(document).ready(function () {
    $('.modal').modal();
});

bkLib.onDomLoaded(function () { nicEditors.allTextAreas() }); // convert all text areas to rich text editor on that page

bkLib.onDomLoaded(function () {
    new nicEditor().panelInstance('area1');
}); // convert text area with id area1 to rich text editor.
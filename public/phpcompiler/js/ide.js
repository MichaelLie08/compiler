let editor;

window.onload = function() {
    editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/php");
}

function executeCode() {

    $.ajax({
        type: "POST",

        url: "../phpcompiler/app/compiler.php",


        data: {
            language: 'php',
            code: editor.getSession().getValue(),
        },

        success: function (response) {
            $(".output").text(response);
        },
    });

}

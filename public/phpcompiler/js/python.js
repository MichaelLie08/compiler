let editor;
var inputs = $("#input");

window.onload = function() {
    editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/python");
}


function executeCode() {

    $.ajax({
        type: "POST",

        url: "../phpcompiler/app/compiler.php",


        data: {
            language: 'python',
            input: inputs.val(),
            code: editor.getSession().getValue(),
        },

        success: function (response) {
            $(".output").text(response);
        },
    });
}

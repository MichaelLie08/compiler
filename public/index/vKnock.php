<?php

    $html= $_POST['html'];
    $js= $_POST['js'];

 $combine =
'<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
    <style>
        body {
            font-family: Helvetica, Arial
        }

        input:not([type]),
        input[type=text],
        input[type=password],
        select {
            background-color: #FFFFCC;
            border: 1px solid gray;
            padding: 2px;
        }
        .codeRunner ul {
            list-style-type: none;
            margin: 1em 0;
            background-color: #cde;
            padding: 1em;
            border-radius: 0.5em;
        }

        .codeRunner ul li a {
            color: Gray;
            font-size: 90%;
            text-decoration: none
        }

        .codeRunner ul li a:hover {
            text-decoration: underline
        }

        .codeRunner input:not([type]),
        input[type=text] {
            width: 30em;
        }

        .codeRunner input[disabled] {
            text-decoration: line-through;
            border-color: Silver;
            background-color: Silver;
        }

        .codeRunner textarea {
            width: 30em;
            height: 6em;
        }

        .codeRunner form {
            margin-top: 1em;
            margin-bottom: 1em;
        }
        table {
            background-color: #cde;
            padding: 1em;
            border-radius: 0.5em;
        }

        table th {
            text-align: left;
        }

        table th:last-child {
            min-width: 130px;
        }

        .starRating span {
            width: 24px;
            height: 24px;
            background-image: url(index/stars.png);
            display: inline-block;
            cursor: pointer;
            background-position: -24px 0;
        }

        .starRating span.chosen {
            background-position: 0 0;
        }

        .starRating:hover span {
            background-position: -24px 0;
        }

        .starRating:hover span.hoverChosen {
            background-position: 0 0;
        }
    </style>

 </head>
 <body>'
 ."$html".
'</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.0.0/knockout-min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/start/jquery-ui.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>
<script type="text/javascript"> '."$js".'</script>

 </html>'
;
echo $combine;

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
            background-image: url(indexes3/stars.png);
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.0.0/knockout-min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/start/jquery-ui.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>
    <title>Document</title>

 </head>
 <body>'
 ."$html".
'</body>
<script type="text/javascript"> '."$js".'</script>

 </html>'
;
echo $combine;

<?php

    $html= $_POST['html'];
    $js= $_POST['js'];

 $combine =
'<!DOCTYPE html>
 <html lang="en">
 <head>
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

        body {
            font-family: Helvetica, Arial
        }

        .folders {
            background-color: #bbb;
            list-style-type: none;
            padding: 0;
            margin: 0;
            border-radius: 7px;
            background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #d6d6d6), color-stop(0.4, #c0c0c0), color-stop(1, #a4a4a4));
            margin: 10px 0 16px 0;
            font-size: 0px;
        }

        .folders li:hover {
            background-color: #ddd;
        }

        .folders li:first-child {
            border-left: none;
            border-radius: 7px 0 0 7px;
        }

        .folders li {
            font-size: 16px;
            font-weight: bold;
            display: inline-block;
            padding: 0.5em 1.5em;
            cursor: pointer;
            color: #444;
            text-shadow: #f7f7f7 0 1px 1px;
            border-left: 1px solid #ddd;
            border-right: 1px solid #888;
        }

        .folders li {
            *display: inline !important;
        }

        /* IE7 only */
        .folders .selected {
            background-color: #444 !important;
            color: white;
            text-shadow: none;
            border-right-color: #aaa;
            border-left: none;
            box-shadow: inset 1px 2px 6px #070707;
        }

        .mails {
            width: 100%;
            table-layout: fixed;
            border-spacing: 0;
        }

        .mails thead {
            background-color: #bbb;
            font-weight: bold;
            color: #444;
            text-shadow: #f7f7f7 0 1px 1px;
        }

        .mails tbody tr:hover {
            cursor: pointer;
            background-color: #68c !important;
            color: White;
        }

        .mails th,
        .mails td {
            text-align: left;
            padding: 0.4em 0.3em;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .mails th {
            border-left: 1px solid #ddd;
            border-right: 1px solid #888;
            padding: 0.4em 0 0.3em 0.7em;
        }

        .mails th:nth-child(1),
        .mails td:nth-child(1) {
            width: 20%;
        }

        .mails th:nth-child(2),
        .mails td:nth-child(2) {
            width: 15%;
        }

        .mails th:nth-child(3),
        .mails td:nth-child(3) {
            width: 45%;
        }

        .mails th:nth-child(4),
        .mails td:nth-child(4) {
            width: 15%;
        }

        .mails th:last-child {
            border-right: none
        }

        .mails tr:nth-child(even) {
            background-color: #EEE;
        }

        .viewMail .mailInfo {
            background-color: #dae0e8;
            padding: 1em 1em 0.5em 1.25em;
            border-radius: 1em;
        }

        .viewMail .mailInfo h1 {
            margin-top: 0.2em;
            font-size: 130%;
        }

        .viewMail .mailInfo label {
            color: #777;
            font-weight: bold;
            min-width: 2.75em;
            text-align: right;
            display: inline-block;
        }

        .viewMail .message {
            padding: 0 1.25em;
        }
    </style>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>

 </head>
 <body>'
 ."$html".
'</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.0.0/knockout-min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="indexes4/sammy.js"></script>
<script type="text/javascript"> '."$js".'</script>

 </html>'
;
echo $combine;

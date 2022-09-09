<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Learn Knockout</title>
    <style>
        :root {
            --dark-blue: #14007a;
            --blue: #1a009c;
            --light-blue: rgb(74, 225, 255);
            --pink: rgb(255, 40, 113);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .code-editor {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            background-color: #fff;
            border-radius: 1rem;
            overflow: hidden;
            padding: 0px 10px 10px 10px;
        }

        .container {
            height: 455px;
            background-color: gray;
            padding: 1rem;
            overflow-y: auto;
        }

        .code {
            display: grid;
            /* grid-template-columns: repeat(1,1fr); */
            grid-template-rows: repeat(2, 1fr);
            overflow-y: auto;
            height: 910px;

            background-color: gray;
            padding: 1rem;
        }

        .editor {
            background-color: white;
        }

        h1 {
            font: 600 1.2rem sans-serif;
            margin: 1rem 0;
            color: black;
        }

        h1>img {
            width: 1.3rem;
            margin-right: 1rem;
            vertical-align: middle;
        }

        .code textarea {
            width: 100%;
            height: calc(100% - 4rem);
            background-color: white;
            color: black;
            border: none;
            padding: 1rem;
            font-size: 1.1rem;
            resize: vertical;
        }

        .code textarea::-webkit-scrollbar {
            width: .4rem;
        }

        .code textarea::-webkit-scrollbar-thumb {
            background-color: var(--pink);
            border-radius: .4rem;
        }

        #result {
            width: 100%;
            height: 100%;
            border: none;
            background-color: white;
        }
    </style>
    <script type="text/javascript" href="knockout-3.2.0.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>

</head>


<body>
    <nav class="navbar navbar-expand-md navbar-light bg-faded">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item text-center"><a class="dropdown-item" href="{{ url('/') }}">Introduction</a>
            </li>
            <li class="nav-item active text-center"><a class="dropdown-item active" href="{{ url('index2') }}">Working
                    With List
                    and
                    Collection</a></li>
            <li class="nav-item text-center"><a class="dropdown-item" href="{{ url('index3') }}">Single page
                    application</a>
            </li>
            <li class="nav-item text-center"><a class="dropdown-item" href="{{ url('index4') }}">Create custom
                    bindings</a>
            </li>
            <li class="nav-item text-center"><a class="dropdown-item" href="{{ url('index5') }}">Loading and saving
                    data</a>
            </li>
        </ul>
    </nav>
    <div class="code-editor">
        <div class="code">
            <div class="card" style="overflow-y: auto;">
                <div id="carouselExampleControls" data-bs-touch="false" class="carousel slide" data-bs-ride="carousel"
                    data-bs-interval="false">
                    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" type="button" data-bs-target="#carouselExampleControls"
                                        data-bs-slide="prev">Previous</a>
                                </li>
                            </ul>
                        </div>
                        <div class="navbar-collapse collapse w-200 order-3 dual-collapse2">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link" type="button" data-bs-target="#carouselExampleControls"
                                        data-bs-slide="next">Next</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            {!! $knockout[5]->instruction !!}
                        </div>
                        <div class="carousel-item">
                            {!! $knockout[6]->instruction !!}
                        </div>
                        <div class="carousel-item">
                            {!! $knockout[7]->instruction !!}
                        </div>
                        <div class="carousel-item">
                            {!! $knockout[8]->instruction !!}
                        </div>
                        <div class="carousel-item">
                            {!! $knockout[9]->instruction !!}
                        </div>
                    </div>
                </div>


            </div>
            <div class="result-code">
                Output
                <div id="result">
                </div>
            </div>

        </div>

        <div class="code">
            <div class="html-code">
                <h1>HTML</h1>
                <textarea></textarea>
            </div>
            <div class="js-code">
                <h1>JS</h1>

                <textarea spellcheck="false" id="transfer">

                </textarea>
            </div>

        </div>

    </div>

    <script src="script.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.0.0/knockout-min.js"
    integrity="sha512-qaH3u2SeIg81DnURksW33Tx8XguHZmtjkQxjOFVLj+v7+Fgb+o4D4XDnt0MOv2wi32J+xTGxQu1o5CbyP5KqUw=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.1/jquery.min.js"
    integrity="sha512-BkBgWiL0N/EFIbLZYGTgbksKG5bS6PtwnWvVk3gccv+KhtK/4wkLxCRGh+kelKiXx7Ey4jfTabLg3AEIPC7ENA=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>

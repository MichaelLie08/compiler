<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Learn Knockout</title>
    <script type="text/javascript" href="knockout-3.2.0.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js">
    </script>
</head>

<body>
    <div class="ui inverted segment">
        <div class="ui inverted secondary pointing menu">
            <a class="active item" href="{{ url('index1') }}">Introduction</a>
            <a class="item" href="{{ url('index2') }}">Working
                With List
                and
                Collection</a>
            <a class="item" href="{{ url('index3') }}">Single page
                application</a>
            <a class="item" href="{{ url('index4') }}">Create custom
                bindings</a>
            <a class="item" href="{{ url('index5') }}">Loading and saving
                data</a>
        </div>
    </div>
    <div class="ui two column stackable left aligned grid" style="height: 800px">
        <div class="left aligned row">
            <div class="column">
                <div class="ui segment" style="height: 500px; width: 100%; overflow-y: auto;">
                    <div id="carouselExampleControls" data-bs-touch="false" class="carousel slide"
                        data-bs-ride="carousel" data-bs-interval="false">
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
                                {!! $module[0]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[1]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[2]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[3]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[4]->description !!}

                            </div>
                        </div>
                    </div>
                </div>
                <div class="ui segment" style="height: 300px; width: 100%; overflow-y: auto;">
                    <div class="header">Output</div>
                    <iframe id="result">
                    </iframe>
                </div>
            </div>
            <div class="column">
                <div class="ui segment html-code" style="height:50%;width:100%;">
                    <div class="header">
                        <h1>HTML</h1>
                    </div>
                    <textarea style="width: 100%;height: calc(100% - 4rem);margin-right: 100%"></textarea>
                </div>
                <div class="ui segment js-code" style="height:48.3%;width:100%;">
                    <div class="header">
                        <h1>JS</h1>
                    </div>
                    <textarea spellcheck="false" id="transfer"
                        style="width:100%;height: calc(100% - 4rem); margin-right: 100%">
                        </textarea>
                </div>
            </div>
        </div>
    </div>
    {{-- <div class="container" style="align-content: center">
        <div class="ui inverted segment">
            <div class="ui inverted secondary pointing menu">
                <a class="active item" href="{{ url('index1') }}">Introduction</a>
                <a class="item" href="{{ url('index2') }}">Working
                    With List
                    and
                    Collection</a>
                <a class="item" href="{{ url('index3') }}">Single page
                    application</a>
                <a class="item" href="{{ url('index4') }}">Create custom
                    bindings</a>
                <a class="item" href="{{ url('index5') }}">Loading and saving
                    data</a>
            </div>
        </div>
        <div class="ui grid">
            <div class="eight wide column">
                <div class="ui segment" style="height: 500px; width: 100%; overflow-y: auto;">
                    <div id="carouselExampleControls" data-bs-touch="false" class="carousel slide"
                        data-bs-ride="carousel" data-bs-interval="false">
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
                                {!! $module[0]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[1]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[2]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[3]->description !!}
                            </div>
                            <div class="carousel-item">
                                {!! $module[4]->description !!}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="eight wide column">
                <div class="ui segment html-code" style="height:500px;width:100%;">
                    <div class="header">
                        <h1>HTML</h1>
                    </div>
                    <textarea style="width: 100%;height: calc(100% - 4rem);margin-right: 100%"></textarea>
                </div>
            </div>
            <div class="eight wide column">
                <div class="ui segment" style="height: 300px; width: 100%; overflow-y: auto;">
                    <div class="header">Output</div>
                    <iframe id="result">
                    </iframe>
                </div>
            </div>
            <div class="eight wide column">
                <div class="ui segment js-code" style="height:300px;width:100%;">
                    <div class="header">
                        <h1>JS</h1>
                    </div>
                    <textarea spellcheck="false" id="transfer"
                        style="width:100%;height: calc(100% - 4rem); margin-right: 100%">
                                        </textarea>
                </div>
            </div>

        </div>
    </div> --}}
    <script src="script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.0.0/knockout-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</body>

</html>

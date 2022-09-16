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
            <a class="active item" href="{{ url('php1') }}">Operator dan Variabel</a>
            <a class="item" href="{{ url('php2') }}">Conditional IF</a>
            <a class="item" href="{{ url('php3') }}">Looping</a>
            <a class="item" href="{{ url('php4') }}">Function</a>
            <a class="item" href="{{ url('php5') }}">Array</a>
        </div>
    </div>
    <div class="control-panel" style="padding-left:15px;">
        Select Language:
        &nbsp; &nbsp;
        <select id="languages" class="languages" onchange="changeLanguage()">
            <option value="php"> PHP </option>
        </select>
    </div>
    {{-- <div class="editor" id="editor" style="height: 500px"></div>

    <div class="button-container">
        <button class="btn" onclick="executeCode()"> Run </button>
    </div>

    <div class="output"></div> --}}

    <div class="ui two column stackable left aligned grid" style="height: 800px; padding-left:10px;">
        <div class="left aligned row">
            <div class="column">
                <div class="ui segment" style="height: 500px; width: 100%; overflow-y: auto;">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            {!! $module[24]->description !!}
                        </div>
                    </div>
                </div>
                <div class="ui segment" style="height: 350px; width: 100%;">
                    <div class="header">
                        <div class="button-container">
                            <h3>Output</h3>
                            <button class="ui secondary button btn" onclick="executeCode()">
                                Run
                            </button>
                        </div>
                    </div>
                    <div class="output"></div>
                </div>
            </div>
            <div class="column">
                <div class="ui segment html-code" style="height:100%;width:100%;">
                    <div class="header">
                        <h1>PHP</h1>
                    </div>
                    <div class="editor" id="editor" style="height: 800px"></div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="phpcompiler/js/lib/ace.js"></script>
    <script src="phpcompiler/js/lib/theme-monokai.js"></script>
    <script src="phpcompiler/js/ide.js"></script>
</body>

</html>

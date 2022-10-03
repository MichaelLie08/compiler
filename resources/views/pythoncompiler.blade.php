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
            <?php $i=0; foreach ( $id_module as $id) : ?>
            <a class="item" href="{{ url('python1/'.$id->id_course_module_parent) }}">
                <?php echo $id->name;?>
            </a>
            <?php $i++; endforeach ?>
        </div>
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
                                        <a class="nav-link" id="next" type="button" data-bs-target="#carouselExampleControls"
                                            data-bs-slide="next">Next</a>
                                        <a class="nav-link" id="selesai" type="button">Selesai</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                        <div class="carousel-inner">
                            <?php $i=0; foreach ( $module as $modules) : ?>
                            <?php if ($i==0) {$set_ = 'active'; } else {$set_ = ''; } ?>
                            <div class="carousel-item <?php echo $set_; ?>">
                                {!! $modules->description !!}
                            </div>
                            <?php $i++; endforeach ?>
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
                <div class="ui segment html-code" style="height:50%;width:100%;">
                    <div class="header">
                        <h1>PHP</h1>
                    </div>
                    <div class="editor" id="editor" style="height: 90%"></div>
                </div>
                <div class="ui segment html-code" style="height:48.3%;width:100%;">
                    <div class="header">
                        <h1>Input</h1>
                    </div>
                    <textarea name="input" id="input" style="height: 90%;width:100%"></textarea>
                </div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="{{ asset('phpcompiler/js/lib/ace.js') }}"></script>
    <script src="{{ asset('phpcompiler/js/lib/theme-monokai.js') }}"></script>
    <script src="{{ asset('phpcompiler/js/python.js') }}"></script>
<script type="text/javascript">
    $('#selesai').hide();
        var i = 0;
        $( "#run" ).click(function() {
            html_code = run();
            js_code = run();
        });
        function run() {
            // Storing data in Local Storage
            var html_code = $("#html_code", html_code).val();
            var js_code = $("#js_code", js_code).val();
            const data = { html: html_code, js: js_code };
                $.ajax({
                    type: "POST",
                    url: '{{ asset("index/vKnock.php")}}',
                    data: data,
                    success: function (result) {
                        $("#result").html(result);
                        console.log(result);
                        $("#result").attr("srcdoc", result);
                    },
                });
        }
        $("#next").on('click', function() {
            i++;
            console.log(i);
            var total = "<?php echo count($module)?>";
            console.log(total);
            if(i!=total-1){
                $('#next').show();
                $('#selesai').hide();
            }
            else{
                $('#next').hide();
                $('#selesai').show();
            }
        });
        $("#selesai").on('click', function() {
            $.ajax({
                type: "POST",
                url: '{{ asset("index/vKnock.php")}}',
                data: data,
                success: function (result) {
                $("#result").html(result);
                console.log(result);
                $("#result").attr("srcdoc", result);
                },
            });
        });
        // Checking if user is typing anything in input field


</script>
</body>

</html>

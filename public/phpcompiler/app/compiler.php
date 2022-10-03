<?php
$language = strtolower($_POST['language']);
$code = $_POST['code'];



if ($language == "php") {
    $random = substr(md5(mt_rand()), 0, 7);
    $filePath = "temp/" . $random . "." . $language;
    $programFile = fopen($filePath, "w");
    fwrite($programFile, $code);
    fclose($programFile);
    $output = shell_exec("C:\php\php.exe $filePath 2>&1");
    echo $output;
}
if ($language == "python") {
    $input = $_POST['input'];
    $random = substr(md5(mt_rand()), 0, 7);
    $filePath = "temp/" . $random . "." . "py";
    $programFile = fopen($filePath, "w");
    fwrite($programFile, $code);
    fclose($programFile);

    $inputfilepath = "temp/input.txt";
    $inputfile = fopen($inputfilepath, "w");
    fwrite($inputfile, $input);
    fclose($inputfile);

    $commond = "python $filePath 2>&1" . "<" . "temp/input.txt";
    $output = shell_exec($commond);
    echo $output;
}
?>

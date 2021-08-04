<!DOCTYPE html>
<html lang="ru">
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8" />
	<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="css/main.css" />
	<base target="_blank">
</head>
<body>

<p align="center"><span lang="ru">Тематические вопросы</span></p> 
<div align="center"> 
<table border="1" width="76%" bgcolor="#FFFFFF"> 
<tr> 
<td width="77" align="center"><span lang="ru">1</span></td> 
<td align="center">


<?php
require_once 'connection.php';
$link = mysqli_connect($host, $user, $password, $database);
if (!$link) {
    echo "Ошибка: Невозможно установить соединение с MySQL." . PHP_EOL;
    echo "Код ошибки errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Текст ошибки error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

#var_dump($_POST);
#проверка получения значений

$column = $_POST['Column'];
$row = $_POST['Row'];

#print_r($column);
#print_r($row);
#проверка правильности присвоения


$result = mysqli_query($link, "SELECT $column FROM tablewithsomevalues WHERE id = $row");

if (!$result) {
	die('Error:' . mysqli_error($link));
}


while ($rowres = $result->fetch_assoc()) {
    printf($rowres[$column]);
}


mysqli_free_result($result);
#удаляем результат
mysqli_close($link);
#закрываем соединение
?>
</td>
</tr>


</body>
</html>

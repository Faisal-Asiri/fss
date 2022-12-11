<link rel="stylesheet" href="style.css">
<?php session_start();
if (isset($_SESSION['username'])) {
?>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>لوحة التحكم</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Alexandria&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>لوحة التحكم</h1>
    <img src="images/4445.jpg" id="reg">

    <?php
     include"user.php";
     
    ?>
    <a href='logout.php' id='logout'>سجل خروج</a>
</body>
<?php
}else{

echo"<image src='images/404.jpg' id='reg'>";
}?>
</html>

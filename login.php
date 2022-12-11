<?php session_start();?>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>سجل الدخول الى حسابك</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Alexandria&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>سجل الدخول الى حسابك</h1>
    <img src="images/20943447.jpg" id="reg">
    <form  method="POST" id="regform">
        <lable>اسم المستخدم</lable><input type="text" name="username" require>
        
        <lable>كلمة المرور</lable><input type="password"require>
        <input type="submit" name="login" value="سجل دخولك">
    </form>
    <?php
    require("include/config.php");
    if(isset($_POST["login"])){
        $username= mysqli_real_escape_string($conn,$_POST['username']);
        
        $password= mysqli_real_escape_string($conn,$_POST['password']);
        $encpassword=hash('sha256',$password);
        $sql="SELECT * FROM users WHERE username='$username' AND password='$encpassword' ";
        $result =mysqli_query($conn, $sql);
        $count= mysqli_num_rows($result);
        if($count ==1){
            $_SESSION['username']=$username;
           
        }else{
            echo"تاكد من اسم المستخدم وكلمة المرور";
        }
    }
    if(isset($_SESSION['username'])){
        echo"تم تسجيل دخولك بنجاح";
        echo"
        <meta HTTP-EQUIV='REFRESH' content='2;url=dashborad.php'/>
        ";
    }
    ?>
</body>
</html>
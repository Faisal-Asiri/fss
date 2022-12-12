<?php include("header.php");?>
<?php session_start();?>

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
<?php include("header.php");?>
    <h1>سجل الآن</h1>
    <img src="images/20943447.jpg" id="reg">
    <form  method="POST" id="regform">
        <lable>اسم المستخدم</lable><input type="text" name="username" require>
        <lable>البريد الإلكتروني </lable><input type="text" name="email"require>
        <lable>رقم الجوال</lable><input type="text" name="phone"require>
        <lable>كلمة المرور</lable><input type="password"require>
        <input type="submit" name="reg" value="سجل">
    </form>
    <?php
    require("include/config.php");
    if(isset($_POST["reg"])){
        $username= mysqli_real_escape_string($conn,$_POST['username']);
        $email= mysqli_real_escape_string($conn,$_POST['email']);
        $phone= mysqli_real_escape_string($conn,$_POST['phone']);
        $password= mysqli_real_escape_string($conn,$_POST['password']);
        $encpassword=hash('sha256',$password);
        $sql="INSERT INTO users (username,	email, phone, password) VALUES('$username',
        '$email','$phone','$encpassword')";
        $result =mysqli_query($conn, $sql);
        if($result){
            echo"تم تسجيلك بنجاح";
        }else{
            echo"لم يتم تسجيل حسابك لوجود خطأ ما";
        }
    }
    ?>
</body>
</html>
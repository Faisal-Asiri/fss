<?php include("header.php");?>
<?php session_start();
if (isset($_SESSION['username'])) {
?>

<br>
    <h1>لوحة التحكم</h1>
    <img src="images/4445.jpg" id="reg">

    
    <div class="row">
    <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/4565.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">ملفك الشخصي</h5>
    <p class="card-text">يمكنك من خلال هذه الصفحة تعديل بياناتك الشخصية</p>
    <a href="profile.php" class="btn btn-primary">الملف الشخصي</a>
  </div>
</div>
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/location.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">عناوينك</h5>
    <p class="card-text">يمكنك من خلال هذه الصفحة اضافة عناوينك وتحديد عنوان الاستلام الرئيسي</p>
    <a href="address.php" class="btn btn-primary">عناوينك</a>
  </div>
</div></div>
</body>
<?php
}else{

    include("404.html");
}?>
</html>

<?php
session_start();
session_destroy();
echo"تم تسجيل خروجك بنجاح";
echo"
        <meta HTTP-EQUIV='REFRESH' content='2;url=login.php'/>
        ";
?>
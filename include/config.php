<?php 
$conn =mysqli_connect('localhost','yourservername','yourpwd');
if(!$conn){
    die("database connection failed".mysqli_error($conn));

}
$select_db=mysqli_select_db($conn,'fss');
if(!$select_db){
    die("database selection failed".mysqli_error($conn));

}?>

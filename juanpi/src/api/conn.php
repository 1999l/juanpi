<?php

//1.建立连接
$servername = "localhost";//主机
$username = "root";//用户名
$password = "root";//密码
$dbname = "juanpi";//数据库名

$conn = new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
    die("连接失败：" . $conn ->connect_error);
}else{

}
?>
<?php
include 'conn.php';


$username = isset($_REQUEST['username'])?$_REQUEST['username']:'';
$password = isset($_REQUEST['password'])?$_REQUEST['password']:'';
$fangfa = isset($_REQUEST['fangfa'])?$_REQUEST['fangfa']:'';

if($fangfa == 'yan'){
    $sql = "SELECT * FROM yonghu  WHERE username='$username' ";

    //2.执行语句
    $res = $conn->query($sql);
   //  var_dump($res)
   if($res->num_rows) {
       //用户名已存在
       echo 'no';
   }else{
       //不存在可以注册
       echo 'yes';
   }
}
if($fangfa == 'zhuce'){
    $sql = "INSERT INTO yonghu (username, psw)VALUES ('$username','$password')";
    $res = $conn->query($sql);
    if($res) {
        //注册成功
        echo 'yes';
    }else{
        //注册失败
        echo 'no';
    }
}
if($fangfa == 'denglv'){
    $sql = "SELECT * FROM yonghu  WHERE username='$username' AND psw='$password' ";

    //2.执行语句
    $res = $conn->query($sql);
    // var_dump($res->num_rows);
   if($res->num_rows) {
       //存在可以登录
       echo 'yes';
   }else{
       //不存在可以登录
       echo 'no';
   }
}
 //5.关闭数据库
//  $res ->close();
 $conn ->close();
?>
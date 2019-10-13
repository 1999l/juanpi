<?php
include 'conn.php';

$page = isset($_REQUEST['ipage'])?$_REQUEST['ipage']:'1';
$num = isset($_REQUEST['num'])?$_REQUEST['num']:'80';
$paixu = isset($_REQUEST['paixu'])?$_REQUEST['paixu']:'';
$min = isset($_REQUEST['min'])?$_REQUEST['min']:'';
$max = isset($_REQUEST['max'])?$_REQUEST['max']:'';
$val = isset($_REQUEST['val'])?$_REQUEST['val']:'';
$cha = isset($_REQUEST['cha'])?$_REQUEST['cha']:'';
$sid = isset($_REQUEST['sid'])?$_REQUEST['sid']:'';

$index = ($page - 1) * $num;


if($paixu){
    $sql = "SELECT * FROM shangpin ORDER BY price $paixu LIMIT $index,$num ";
    $sql2 = "SELECT * FROM shangpin";
    if($min &$max){
        $sql ="SELECT * FROM shangpin WHERE price BETWEEN $min AND $max  ORDER BY price $paixu LIMIT $index,$num ";
        $sql2 ="SELECT * FROM shangpin WHERE price BETWEEN $min AND $max  ORDER BY price $paixu";
    }
 }else if($min &$max){
     $sql ="SELECT * FROM shangpin WHERE price BETWEEN $min AND $max LIMIT $index,$num ";
     $sql2 = "SELECT * FROM shangpin WHERE price BETWEEN $min AND $max";
 }else if($val){
    $sql = "SELECT * FROM shangpin WHERE  title  or tipo LIKE '%$val%' LIMIT $index,$num";
    $sql2 = "SELECT * FROM shangpin WHERE  title  or tipo  LIKE '%$val%'";
} else{
    $sql = "SELECT * FROM shangpin LIMIT $index,$num";
    $sql2 = "SELECT * FROM shangpin";
 }
 
if($cha){
    $sql = "SELECT * FROM shangpin WHERE sid=$sid";
}

 //2.执行语句
 $res = $conn->query($sql);
 
 //3.提取数据
 $arr = $res ->fetch_all(MYSQLI_ASSOC);
//  print_r($arr);
 
 //语句：查询整个表的
 
 $res2 = $conn ->query($sql2);

//  var_dump($arr);
 //4.把数组转成字符串，echo给前端
 $data = array(//制作关联数组，就可以一次传多个值给前端
    'total' =>$res2->num_rows,
    'list' =>$arr,
    'page' =>$page,
    'num' =>$num
 );
//  print_r($data);
 echo json_encode($data,JSON_UNESCAPED_UNICODE);

 //5.关闭数据库
 $res ->close();
 $conn ->close();

?>
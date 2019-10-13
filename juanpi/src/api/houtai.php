<?php
include 'conn.php';

$fangfa = isset($_REQUEST['fangfa'])?$_REQUEST['fangfa']:'';
$username = isset($_REQUEST['username'])?$_REQUEST['username']:'';
$password = isset($_REQUEST['password'])?$_REQUEST['password']:'';
$id = isset($_REQUEST['id'])?$_REQUEST['id']:'';
$email = isset($_REQUEST['email'])?$_REQUEST['email']:'';



if($fangfa=='deng'){
    $sql = "SELECT * FROM guanli WHERE ming='$username'";
    $res = $conn->query($sql);
    if($res->num_rows){
        $sql2 = "SELECT * FROM guanli WHERE psw='$password'";
        $res2 = $conn->query($sql2);
        if($res2->num_rows){
            echo 1;
        }else{
           echo -1;
        };
    }else{
echo -2;
    };
}else if ($fangfa=='gai'){
    $sql = "UPDATE guanli SET psw='$password'  WHERE ming='$username' ";
    $res = $conn->query($sql);
    if($res) {
        //注册成功
        echo '1';
    }else{
        //注册失败
        echo '0';
    };
}else if($fangfa =='csh'){
    $sql = "SELECT * FROM yonghu ";
    $res = $conn->query($sql);
 
    //3.提取数据
    $arr = $res ->fetch_all(MYSQLI_ASSOC);

    $data = array(//制作关联数组，就可以一次传多个值给前端
       'total' =>$res->num_rows,
       'list' =>$arr,
      
    );
    echo json_encode($data,JSON_UNESCAPED_UNICODE);
}else if($fangfa =='xiu'){
    $sql = "UPDATE yonghu SET email ='$email',psw='$password'  WHERE  id='$id' ";
      $res = $conn ->query($sql);
}else if($fangfa =='shanchu'){
    $sql = "DELETE FROM yonghu  WHERE id='$id' ";
    $res = $conn ->query($sql);
}else if($fangfa =='tian'){
    $sql = "INSERT INTO yonghu (username, psw ,email)VALUES ('$username', '$password','$email')";
    $res = $conn ->query($sql);
}

// $sql = "SELECT * FROM shangpin WHERE sid=$sid";

// $res = $conn->query($sql);
 
//  //3.提取数据
//  $arr = $res ->fetch_all(MYSQLI_ASSOC);
// //  print_r($arr);
 
//  //语句：查询整个表的
 
//  $res2 = $conn ->query($sql2);

// //  var_dump($arr);
//  //4.把数组转成字符串，echo给前端
//  $data = array(//制作关联数组，就可以一次传多个值给前端
//     'total' =>$res2->num_rows,
//     'list' =>$arr,
//     'page' =>$page,
//     'num' =>$num
//  );
// //  print_r($data);
//  echo json_encode($data,JSON_UNESCAPED_UNICODE);

//  //5.关闭数据库
//  $res ->close();
 $conn ->close();

?>
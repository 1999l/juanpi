<?php
include 'conn.php';


$username = isset($_REQUEST['username'])?$_REQUEST['username']:'';
$sid = isset($_REQUEST['sid'])?$_REQUEST['sid']:'';
$title = isset($_REQUEST['title'])?$_REQUEST['title']:'';
$oldprice = isset($_REQUEST['oldprice'])?$_REQUEST['oldprice']:'';
$price = isset($_REQUEST['price'])?$_REQUEST['price']:'';
$img = isset($_REQUEST['img'])?$_REQUEST['img']:'';
$num = isset($_REQUEST['num'])?$_REQUEST['num']:'';
$color = isset($_REQUEST['color'])?$_REQUEST['color']:'';
$size = isset($_REQUEST['size'])?$_REQUEST['size']:'';
$goodcar = isset($_REQUEST['goodcar'])?$_REQUEST['goodcar']:'';



if($goodcar=='changdu'){
    $sql = "SELECT * FROM car WHERE username=$username";
    $res = $conn->query($sql);
 
    //3.提取数据
    $arr = $res ->fetch_all(MYSQLI_ASSOC);

    $data = array(//制作关联数组，就可以一次传多个值给前端
       'total' =>$res->num_rows,
       'list' =>$arr,
      
    );
    echo json_encode($data,JSON_UNESCAPED_UNICODE);
}else if($goodcar =='addgou'){
    $sql = "SELECT * FROM car  WHERE username='$username' AND sid='$sid' AND size='$size' AND color='$color' ";

    //2.执行语句
    $res = $conn->query($sql);
    // var_dump($res->num_rows);
   if($res->num_rows) {
       //存在修改
       $arr = $res ->fetch_all(MYSQLI_ASSOC);
      $x= $arr[0]["num"]+$num;
   
      $sql2 = "UPDATE car SET num ='$x'  WHERE username='$username' AND sid='$sid' AND size='$size' AND color='$color' ";
      $res2 = $conn ->query($sql2);
   }else{
       //不存在插入
       $sql2 = "INSERT INTO car (username, sid, title,oldprice,price,img,num,color,size)VALUES ('$username', '$sid', '$title','$oldprice','$price','$img','$num','$color','$size')";
       $res2 = $conn ->query($sql2);
    }
}else if($goodcar =='csh'){
    $sql = "SELECT * FROM car WHERE username=$username";
    $res = $conn->query($sql);
 
    //3.提取数据
    $arr = $res ->fetch_all(MYSQLI_ASSOC);

    $data = array(//制作关联数组，就可以一次传多个值给前端
       'total' =>$res->num_rows,
       'list' =>$arr,
      
    );
    echo json_encode($data,JSON_UNESCAPED_UNICODE);
}else if($goodcar =='add'){
    $sql2 = "UPDATE car SET num ='$num'  WHERE username='$username' AND sid='$sid' ";
    $res2 = $conn ->query($sql2);
}
else if($goodcar =='shanchu'){
    $sql = "DELETE FROM car  WHERE username='$username' AND sid='$sid'AND size='$size' AND color='$color' ";
    $res = $conn ->query($sql);
}else if($goodcar =='huoqu'){
    $sql = "SELECT * FROM zuji WHERE username=$username order by cid desc";
    $res = $conn->query($sql);
 
    //3.提取数据
    $arr = $res ->fetch_all(MYSQLI_ASSOC);

    $data = array(//制作关联数组，就可以一次传多个值给前端
       'total' =>$res->num_rows,
       'list' =>$arr,
      
    );
    echo json_encode($data,JSON_UNESCAPED_UNICODE);
}else if($goodcar =='cun'){
    $sql = "SELECT * FROM shangpin WHERE sid=$sid";
    $res = $conn->query($sql);
 
    //3.提取数据
    $arr = $res ->fetch_all(MYSQLI_ASSOC);

    $data = array(//制作关联数组，就可以一次传多个值给前端
       'total' =>$res->num_rows,
       'list' =>$arr,
      
    );
    echo json_encode($data,JSON_UNESCAPED_UNICODE);
}else if($goodcar =='cunru'){
    $sql = "DELETE FROM zuji  WHERE username='$username' AND sid='$sid' ";

    $res = $conn->query($sql);
    $sql2 = "INSERT INTO zuji(username,sid,title,price,oldprice,img) VALUES('$username','$sid','$title',$price,$oldprice,'$img')"; 

    $res2 = $conn->query($sql2);
}
 //2.执行语句
//  $res = $conn->query($sql);
 
 //3.提取数据
//  $arr = $res ->fetch_all(MYSQLI_ASSOC);
//  print_r($arr);
 

 //语句：查询整个表的
 
//  $res2 = $conn ->query($sql2);

//  var_dump($arr);
 //4.把数组转成字符串，echo给前端
//  $data = array(//制作关联数组，就可以一次传多个值给前端
//     'total' =>$res->num_rows,
//     'list' =>$arr,
   
//  );
//  print_r($data);
//  echo json_encode($data,JSON_UNESCAPED_UNICODE);

 //5.关闭数据库
//  $res ->close();
 $conn ->close();


?>
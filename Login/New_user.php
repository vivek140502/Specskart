<?php 
session_start();
include "../DB/db_conn.php";
if (isset($_POST['uname']) && isset($_POST['psword']) && isset($_POST['psword1']))
{
  function validate($data){
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;
  }
  $uname=validate($_POST['uname']);
  $pass=validate($_POST['psword']);
  $cpass=validate($_POST['psword1']);
  
  if(empty($uname)){
    header("location: ../New_user.php?error=Username is required");
    exit();
  }
  else if(empty($pass))
  {
    header("location: ../New_user.php?error=Password is required");
    exit();
  }
  else {
    if($pass==$cpass){
    $sql="insert into users values(NULL,'$uname','$pass') ";
    $result=mysqli_query($conn, $sql);
    header("Location: ./login.php");

    }else{
      header("location: ../New_user.php?error=Password does not match");
      exit();
    }

    // if(mysqli_num_rows($result)===1)
    // {
    //     $row=mysqli_fetch_assoc($result);
    //     if($row['Username']===$uname && $row['pass_word']=== $pass){
    //        $_SESSION['Username']=$row['Username'];
    //        $_SESSION['name']=$row['name'];
    //        $_SESSION['id']=$row['id'];
    //        header("location: home.php");
    //        exit();
    //     }
        
    // }
    // else{
    //     header("location: ../New_user.php?error=Username or Password is incorrect");
    //     exit();
    // }
  }
}

else{
    header("location: ../New_user.php");
    exit();
}
?>
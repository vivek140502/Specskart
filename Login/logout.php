<?php
session_start(); //to ensure you are using same session
unset($_SESSION['id']);  
unset($_SESSION['Username']);  
session_destroy(); //destroy the session
header("location: ../index.php");
?>
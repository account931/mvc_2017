<?php

// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **                                                                                  **
//WALL.tpl?
//the  script  that  set  the  value  for  edit  form   of  the  clicked  item
//it  could  be  located  directly in the  wall.tpl  ,just carried  out  for  less  complicated    syntax, it  just  put  the   selected  entry value  to a  form 

include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

$resW = $db->query("SELECT* FROM mvcWall WHERE mWall_id LIKE '{$_GET['wID']}'     ORDER BY mWall_id DESC");
while ($row =$resW->fetch())
{


$_SESSION['edd']=$row;
$edd=$_SESSION['edd']['mWall_mess'];

echo $edd;
}


//echo"REQUIRE";
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
?>
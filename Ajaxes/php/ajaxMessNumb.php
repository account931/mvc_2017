<?php 
//NOT  WORKING THIS PHP

//Fetch  the  number of  messages   received 
// ajax  to  fetch counted number  of message delivered (my  messages) 
//Number is  displayed  in left  column=>messages 
// it is fixed=( so far, Jquery  is not  responsive and  cause   crashes)
// Triggered in Jquery  every N  seconds (interval is  set ) and  trigged  1  time  from  Jquery  1-time  function 
include("config/database.php");
session_start();

$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 
$db->exec('SET NAMES utf8');


//  working  but  disabled
/*
$res = $db->query(" SELECT COUNT(*)  FROM mvcMess  ");
$rows =$res->fetchAll();
echo json_encode($rows);*/
//




if (isset($_GET['getNumb']))   //GET  triggerred  in JQUERY setTimeOUT
 {   
// Count  results   working=shows  array
//$resC = $db->query(" SELECT COUNT(*)  FROM mvcMess  ");
$resC = $db->query(" SELECT COUNT(*)  FROM mvcMess WHERE mvcMess_to LIKE '{$_SESSION['login']}'  ");
 
$rows =$resC->fetchAll();
echo json_encode($rows);
 } 


//

  






?>
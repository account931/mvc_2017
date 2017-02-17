<?php
class RecordStatisticsSQL{




// it  records  to  database 

// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **                                                                                  **
//Start Function  to  record  Visits  to  DB mvcStats---------------------------------------------------------------------------------------
static function Record(){
//WORKING
session_start();
include("config/database.php");
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


date_default_timezone_set('Europe/Kiev');
$date=date("Y-m-d")." ".date("h:i:sa");

//settin Values to insert to DB
$time=$date;
$ip=$_SERVER['REMOTE_ADDR'];
$href=$_SERVER['HTTP_REFERER'];
$agent=$_SERVER['HTTP_USER_AGENT'];
if(isset($_SESSION['login'])){$user=$_SESSION['login'];}  else{$user="unlogged";}




//Selecting the  last row with quantity number of visits and ++ it*************************************
//setting  count !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
$resFR = $db->query("SELECT * FROM mvcStats ORDER BY st_id DESC LIMIT 1"); //missed ORDER BY !st_id! caused  the  error  // Select the  last entry 
$row = $resFR->fetch();  //  cause  error
$n=$row["st_count"]; //echo $row["st_count"]; 
$count=$n+1;
//$row =$resFR->fetchAll(); // cause  error
// end  setting  count!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// END Selecting the  last row with quantity number of visits and ++ it-----------------------------------------------












//START INSERTING VALUES
$sth = $db->prepare("INSERT INTO mvcStats (st_time, st_ip, st_href,st_agent,st_count,st_user) VALUES (:time, :ip, :href, :agent, :count, :user)");
          $sth->bindValue(':time',$time);
          $sth->bindValue(':ip',$ip);
          $sth->bindValue(':href',$href);
          $sth->bindValue(':agent',$agent);
          $sth->bindValue(':count',$count);
          $sth->bindValue(':user', $user);
          $sth->execute();







} //  end  function
// END  Function  to  record  Visits  to  DB mvcStats********
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************















// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// ** 
static function ShowVisitNumber(){
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD);
$resFR = $db->query("SELECT * FROM mvcStats ORDER BY st_id DESC LIMIT 1"); // Select the  last entry 
$row = $resFR->fetch();  
$n=$row["st_count"];
echo $n;                                 }
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************














}
?>
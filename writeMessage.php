<?php
//So  my  best  guess,  this  part  script  should  be  erased,  because  it  does  not    handle  anything 
// IC=> originally  this  functionality   is  triggered  from    central  tpl
//So  far      have no idea, what is  this  for, as writting message is  handled    in Contoller and templates/central/writemessage.tpl
//Write message   script  ,  but  the  writeMessage  window  is  originally  triggered  by  ['GET']  variable  from  index.php

include("config/database.php");
//session_start();



//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


//IF USER HAS PRINT THE Message
if(isset($_POST['textMessage']))
{
// This  part  takes   into  consideration
$db->query("INSERT INTO mvcMess (mvcMess_from, mvcMess_to,mvcMess_mess) VALUES ('{$_SESSION['login']}', '{$_GET['write']}' , '{$_POST['textMessage']}'    )"); 
echo "<center><p style='color:red;font-size:22px;'>SENT</p></center>";


}
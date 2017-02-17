<!-- it  deletes  a  selected  entry  from DB-->

<!--IMPORTANT EXPLANATION-->
<!-- it is  tiggered  by  the  $_GET['setD']. S_GET['setD'] is described  in DELETE link (<a href='/mvc/?wall&setD=delW&wID=$wID'>Delete</a>).
And it  is  triggered  in main index.php controller and  call  this  tpl.  To  see  the  immediate  result of  deletion and  not  to  use  AJAX  use  'header'  redirection--> 

<?php
//START Deleting  a wall entry  from  DB*****
echo "ERASED";
// DELETING  A wall  entry FROM DB  !!!!
//if (isset($_GET['setD'])) {

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

$db->exec("DELETE FROM mvcWall WHERE mWall_from LIKE '{$_SESSION['login']}' AND  mWall_id LIKE '{$_GET['wID']}'    ");







echo"DELETED";

//rediretect
header("Location: http://example2.esy.es/mvc/?wall"); 
exit;

//}  
// END  DELETE  A Wall entry ------------










?>
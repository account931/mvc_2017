<?php 
/*It handles   deleting  from  friends =>myfriendslist.tpl  */
echo "
<center><p>USER HAS BEEN DELETED<p/></center> ;"
?>
<!--it  was  outcut  from myfriends.tpl-->
<!--This  is  the  function  of  deleting  a userr WORKSSS-->



<?php
//START Deleting  a friend  from the  freind list*****
echo "ERASED";
// DELETING  A USER  FROM USER LIST  !!!!
//if (isset($_GET['deleteuser'])) {

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

$db->exec("DELETE FROM mvcFriends WHERE mvcFr_who LIKE '{$_SESSION['login']}' AND  mvcFr_whome LIKE '{$_GET['deleteuser']}'    ");



/*PREVV   $db->exec("DELETE FROM mvcFriends WHERE mvcFr_who LIKE '{$_SESSION['login']}' AND  mvcFr_whome LIKE '{$rowF['mvcFr_whome']}'    ");*/




echo"DELETED";

//rediretect
header("Location: http://example2.esy.es/mvc/?myfriendslist"); 
exit;


//}  
// END  DELETE  A USER ------------










?>
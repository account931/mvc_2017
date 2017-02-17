<div id="myfriendlist"  class="shadow2" style="color:white;font-size:22px;position:relative;margin-left:0px;"><!--margin-left:15px;-->
<center>
<h3  class='boxedshadow deepnavy'>Your List of Friends</h3>
<!--<p style="color:black; font-size:33px;" class="shadow">Your List of Friends</p>--></center>

<img src="image/friend.png"style="float:right;width:40%;margin-right:4%;" class='boxedshadow'>
<?php 
session_start();
include("config/database.php");


//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 



$resFR = $db->query("SELECT * FROM mvcFriends WHERE mvcFr_who LIKE '{$_SESSION['login']}' ");
while ($rowF =$resFR->fetch())
{

$_SESSION['friendslist'] = $rowF;
//$_SESSION['otheruser1']=$row['mvcUsers_login'];
$to= $_SESSION['friendslist']['mvcFr_whome'];
$_SESSION['to']= $_SESSION['friendslist']['mvcFr_whome'];
echo "</br>";


//echo "<img src='image/profile.jpg' alt='YOU' style='width:20px;margin-left:10px;margin-bottom:-3%;'/>";

echo "<p style='border:2px solid black;width:34%;  /*Start*/  background: rgb(208,228,247); /* Old browsers */
background: -moz-linear-gradient(top, rgba(208,228,247,1) 0%, rgba(115,177,231,1) 24%, rgba(10,119,213,1) 50%, rgba(83,159,225,1) 79%, rgba(135,188,234,1) 100%); /* FF3.6-15 */
background: -webkit-linear-gradient(top, rgba(208,228,247,1) 0%,rgba(115,177,231,1) 24%,rgba(10,119,213,1) 50%,rgba(83,159,225,1) 79%,rgba(135,188,234,1) 100%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(to bottom, rgba(208,228,247,1) 0%,rgba(115,177,231,1) 24%,rgba(10,119,213,1) 50%,rgba(83,159,225,1) 79%,rgba(135,188,234,1) 100%);  /*END*/ 
margin-top:-15px;color:white;margin-left:5%;' class='shadowR boxedshadow deppnavy'>
<img src='image/profile.jpg' alt='YOU' style='width:20px;margin-left:5px;margin-bottom:-3%;border-radius: 15px;'/></br>";
echo $_SESSION['friendslist']['mvcFr_whome']; 




echo "&nbsp;&nbsp;
<a href='/mvc/?write={$rowF['mvcFr_whome']}' class='messageLink' style='color:white' ' class='shadowR ';>write</a>
&nbsp;&nbsp;
<a style='color:white;' href='/mvc/?deleteuser={$rowF['mvcFr_whome']}'>delete from friends</a><p>
 </p>";

} // END OF WHAT ??????





// DELETING  A USER  FROM USER LIST  !!!!
// Looks  like  it is  not   used??? and  used  is deleteuser.tpl ???????????? =was  confirmed  once(it  is  deleted  in deleteuser.tpl   and  triggered  by  CONTROLLER) 

if (isset($_GET['deleteuser'])) {

//!!!!!
$db->exec("DELETE FROM mvcFriends WHERE mvcFr_who LIKE '{$_SESSION['login']}' AND  mvcFr_whome LIKE '{$_GET['deleteuser']}'    ");



/*PREVV   $db->exec("DELETE FROM mvcFriends WHERE mvcFr_who LIKE '{$_SESSION['login']}' AND  mvcFr_whome LIKE '{$rowF['mvcFr_whome']}'    ");*/



//VAr2   Not  in USE
/*
id = is_numeric($_POST['id']);
    $err = array();
            $query = "DELETE FROM employees WHERE id = :id";
            $statement = $db -> prepare($query);
            $statement -> BindParam('id', $id, PDO::PARAM_INT);
            $result = $statement -> execute();
            $statement -> closecursor();
            if ($result === true){
            }
                else{
                    $err[] = "error";
            }
*/
//End  Var  2
echo"DELETED";

//rediretect
header("Location: http://example2.esy.es/mvc/?myfriendslist/"); 
//exit;


}  /*  else{echo"NOT";}*/
?>








</div>
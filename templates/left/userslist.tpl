<?php

//to perform  fully MVC =there  must be getTemplate('.tpl')??? and  in index .php  must  be ?????

if  (isset( $_SESSION['login'])){  
$i=0;
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 
$resCount = $db->query("SELECT * FROM mvcUsers"); //while ($row =$resCount->fetch()){$i++;}
//$count = $resCount->rowCount();
//$count2=mysql_num_rows($resCount);
$rows =$resCount->fetchAll();
$result = count($rows);
?>




<div id='allusers' >
<center>
<p id="usersP" class="shadow2" title="The number of  registred users  is <?php echo $result;  ?>">
Users <span style="font-size:8px;"> <?php echo $result; ?></span></p></center>
<div style="margin-left:10px;" id="item">
<?php 

include("config/database.php");
session_start();

 /*DISPLAY ALL USERS*/

//DISPLAYED BY OOP CLASS LoadLeftLIst
$leftLoad= new LoadDB(); //OOP
$leftLoad->getLeftList();











//Deactivated  beacause  now transferred  to CLASS LoadLeftLIst
/*
include("config/database.php");
session_start();


//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


$res = $db->query("SELECT * FROM mvcUsers ");
while ($row =$res->fetch())
{
echo "<a href='/mvc/?user={$row['mvcUsers_login']}'><p><!--<span>User : &nbsp;</span>&nbsp;-->
<img src='image/profile.jpg' alt='YOU' style='width:10px;margin-top:0px;'/>
{$row['mvcUsers_login']} </p></a>";

}*/
//END  Deactivated  beacause  now transferred  to CLASS LoadLeftLIst
?>





</div>
</div><!--END id  allusers-->

<?php
}  else {

echo"</br></br><div style='color:black;'><center>Not LOGGED </br>";
echo "</br><img src='image/log3.jpg'  style='width:77px;'/></br>";
//echo "</br><img src='image/load.gif'  style='width:77px;'/></br>";
echo "</center></div>";
} ?>
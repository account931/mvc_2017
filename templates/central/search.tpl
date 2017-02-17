<div id="search" class="white shadow2">
<center>
<p  class='shadowColor' style="font-size:34px;color:black;">Search a  user </p>

<img src="image/search2.png" style="width:%;" class='boxedshadow'/>


<form action="" method="post">
<input type="text" name="search">

<input type="submit" value="Search">
</form>


<?php
include("config/database.php");
//session_start();



//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


if(isset($_POST['search'])) {

      
     



 
/*$res = $db->query("SELECT * FROM mvcUsers WHERE mvcUsers_login  LIKE '{$_POST['search']}' ");
   $rowcheck = $res->fetch();
     if ($rowcheck != null) {
echo"User exists";}*/

// SELECT LIKE '%land%'

$m=$_POST['search']; //deactivated  due   used  above  in  tpl
$resSS = $db->query("SELECT * FROM mvcUsers WHERE mvcUsers_login LIKE    '%$m%'     ");
while ($row1 =$resSS->fetch()){
$searches=$row1['mvcUsers_login'];
echo "<a href='/mvc/?user=$m'><p> $searches </p></a>";

/*echo "<p style='font-size:38px;color:red;'><a  href='/mvc/?tiggerRegister'>$row1['mvcUsers_login']</a></p>";*/
  }  
//} // End IF 


//if nul 
 if ($row1= null) {
echo"NO USER FOUND";}
//end  if  null


} //end  if  isset  $_POST['search']
?>







</center></div>
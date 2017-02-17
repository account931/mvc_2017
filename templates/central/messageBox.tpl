<div id="messageBox" class="shadow2">
<center>
<h1>
<p class="shadowd pargr boxedshadow" style="border-radius:0px;">Your  Messages BOX</p></h1>


<div id="left" style="width:70%;float:left;">


<?php
include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 



$res = $db->query("SELECT * FROM mvcMess WHERE mvcMess_to LIKE '{$_SESSION['login']}'     ORDER BY mvcMess_id DESC");
while ($row =$res->fetch())
{

//Count  number of  messages  to  be  dispalyed in right 
if(!isset($count)) {$count=0;}
++$count;   $_SESSION['count']=$count;
// End  count


$_SESSION['mess'] = $row;
$too=$_SESSION['mess']['mvcMess_from'];
$_SESSION['number']=$_SESSION['mess']['mvcMess_id'];
echo "<p class='white boxedshadow' style='border:2px solid black;background-color:#ff6b21/*#7c84e6*/;width:70%;'>";
//echo  $too/*$_SESSION['mess']['mvcMess_from']/*;
echo $_SESSION['mess']['mvcMess_from']." "."wrote: "." </br>";
echo $_SESSION['mess']['mvcMess_mess'] ;
// Link  to  answer
echo"<a  style='float:right;margin-right:13px;' href='/mvc/?write=$too ' class='messageLink'>answer</a>";
echo "</p>";


//$rowTO=$row['mvcMess_from'];
}
?>
</div><!-- END of  LEFT-->




<!--START didv  with inbox  image-->
<div id="right" style="width:18%;float:left;">
<img src="image/inbox.jpg" style="width:140%;margin-right:28px;"/>
</div>






</center></div><!--all-->
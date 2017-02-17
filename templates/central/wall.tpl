<!-- Uses Weditscript.php =to  get the  value  of  the  clicked  entry -->
<!-- Wall part(looks  mostly  like  a self  diary=u can make  notes  for  yourself   ).Inserting and  selecting  is  implemented.
Implemented  the EDIT possibility(the  clicked  note is  transfred  to  form). SQL Update  is NOT implemented  yet.-->

<!--  U don't  have  to  create "$db = new PDO('');"  as it  exceeds 3 connection  maximum

<!--  The  template-->
<center>
<h1 class="boxedshadow" > Your  Wall</h1> 




<div id='wB'>
<!--TEXTAREA-->
<div class="boxedshadow"  style='color:white;width:37%;float:left;border:1px  solid  black;margin-left:5px;' >

<form action="" method="post">
    <p><b>Your Notes:</b></p>
<img src='image/log4.jpg' style='height:12%;'/>
    <p><textarea rows="5" cols="25" name="textareaW" id="wArea"><?php if (isset($_GET['set'])){require "Weditscript.php";} ?></textarea></p>
    <p><input type="submit" value="Save" name="SaveWall"> 
          <input type="submit" value="Update" name="Upwall"></br>
 <input type="reset" value="  &nbsp;&nbsp;&nbsp;Clear&nbsp;&nbsp;&nbsp; &nbsp;" name="clear" id='wallClear'>

</p>
  </form></div>




<!-- LEFT PART  FOR  DISPLAYING-->
<div id='wR' style='float:right;width:60%;border:1px  solid  black;margin-right:2px;height:100%;'>
<p><b>DISPLAY</b><p/>


<!--START DISPLAYING  FROM DATABASE-->
<?php
//error_reporting(0);
//SELECT FROM  DB
include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

$resW = $db->query("SELECT* FROM mvcWall WHERE mWall_from LIKE '{$_SESSION['login']}'     ORDER BY mWall_id DESC");
while ($row =$resW->fetch())
{


$_SESSION['Wall']=$row;
$ww=$_SESSION['Wall']['mWall_mess'];
$time=$_SESSION['Wall']['mWall_time'];
$wID=$_SESSION['Wall']['mWall_id'];
echo "<p style='border:1px solid  black;width:97%;'>$ww </br>$time</br><a href='/mvc/?wall&set=editW&wID=$wID'>Edit</a> &nbsp;
<a href='/mvc/?wall&setD=delW&wID=$wID'>Delete</a></p>";
}

?>
<!--END  SELECTING DATABASE-->
</div>
<!-- END LEFT PART  FOR  DISPLAYING-->

</div> <!-- END  'wB'  the  whole  part   end  OF DIV   WITH  db  RESULTS    -->
</center>










<!-- INSERTING Mess to  walls-->
<?php
include("config/database.php");
session_start();

//WORKING
//$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); //!!!!!!!!!!!!!!!!!!

//IF USER HAS PRINT THE WALL MESSAGE
if(isset($_POST['SaveWall']))
//if(isset($_POST['textareaW']))       //textareaW
{


//DATE 
date_default_timezone_set('Europe/Kiev');
$date=date('Y-m-d').' '.date('h:i:sa');
/*$DateOfRequest = date("Y-m-d H:i:s", mktime($_REQUEST["Hour"],$_REQUEST["Min"],$_REQUEST 
["Sec"],$_REQUEST["Month"],$_REQUEST["Day"],$_REQUEST["Year"]));*/ 

$sthI = $db->prepare("INSERT INTO mvcWall (mWall_from, mWall_mess,mWall_time) VALUES (:wfrom, :wmess,:wtime)");
          $sthI->bindValue(':wfrom' ,$_SESSION['login']);
          $sthI->bindValue(':wmess',$_POST['textareaW']);
          $sthI->bindValue(':wtime',$date);
          $sthI->execute();

//add  this part  to  erase

//currently   set to  zero
//display zero  time 
//echo  "AFFIRMATIVE ";
 echo "<p style='color:white;'>Published</p>";


//rediretect
header("Location: http://example2.esy.es/mvc/?wall"); 
exit;


}  




//START UPDATING THE  CORRECTED  MESSAGE (the  value  for  editing  is  set  in Weditscript.tpl)
//Not  implemented YET !!!!!!


if(isset($_POST['Upwall'])) 
{







//the process  of  updating  the  target  message 

date_default_timezone_set('Europe/Kiev');


//$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD);    //the  problem  was  caused  by  this  connection !!!!

//INSERT INTO mvcWall (mWall_from, mWall_mess,mWall_time) VALUES (:wfrom, :wmess,:wtime)");

$stmt2 = $db->prepare("UPDATE mvcWall set mWall_mess= :Wmess,mWall_time=:Wtime where mWall_id=:Wid");

$Wid = $_GET['wID']; //actual  id  of  wall record
$stmt2->bindParam(':Wid', $Wid);

$Wmess= $_POST['textareaW'];
$stmt2->bindParam(':Wmess', $Wmess);



$dateEd =date("Y-m-d")." ".date("h:i:sa");
$Wtime=$dateEd;
$stmt2->bindParam(':Wtime',$Wtime);

$stmt2->execute();




//rediretect
header("Location: http://example2.esy.es/mvc/?wall"); 

}
//END  of  Updated  corrected  message ------------








?>			
<?php


// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//error_reporting(0);    error reporting  is  switched OFF , in  final  must  be  ON
error_reporting();// it  was  the  first variant
include("config/database.php");
session_start();
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************





// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

/*$db=new PDO('mysql:host=mysql.hostinger.com.ua;dbname=u341473096_gall','u341473096_user','useruser');*/
$db->exec('SET NAMES utf8');
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************





// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//TRYING TO REFER TO CLASS
include("Classes/GetTemplateClass.php");//OOP  Classes   function =GetTemplateClass
include("Classes/LoadDB.php");
//include("Classes/Random.php");
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************





// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// Still  used,but  in some   parts  is  substituted  by  OOP GetTemplateClass
    function GetTemplate($file)
  {
     ob_start(); 
     include($file); 
     $html = ob_get_contents();  
     ob_end_clean(); 
     return $html;
  }
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************





// REcords  all  visits  to  SQl  mvcStats  DB
// **************************************************************************************
// **************************************************************************************
// ** 
     include("Classes/RecordStatisticsSQL.php");
     RecordStatisticsSQL::Record();
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************






            
// REcords  ip LIST
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
 if ( empty($_GET) || isset($_GET['login'])  ) {  //if  not  LOGGED and  if  just logged  only   
                                                                                
    //START IPLIST Recording  to txt
     date_default_timezone_set("Europe/Kiev");
     if (isset($_SESSION['login'])) { $userIN=$_SESSION['login'];} else {$userIN="unlogged";}
     $ip=$_SERVER['REMOTE_ADDR'];//ip adress
     $hardware=$_SERVER['HTTP_USER_AGENT']; // user  browser info
     $fileIP = "ipList.txt";
     $date=date("d.m.y.H:i");
     $Saved_File = fopen($fileIP, 'a');
     fwrite($Saved_File,$userIN.'--> '.$date.'----- '.$ip. " <span class='imgClick'>&#9660;</span> "."<p class='info' style='display:none;'>".$hardware."</p>"."\r\n\n"); // add a new line to the  string :)
     fclose($Saved_File);   
                                 }
   //END IPLIST
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************

?>
<!DOCTYPE html>
<html>
<head>
<title>MVC</title>
 <meta charset="utf-8">
<link rel="stylesheet" media="screen"  type="text/css" href="style.css">

<!-- CSS  for  mobile-->
<link rel= "stylesheet" href="stylehandheld.css" media="handheld,only screen and (max-device-width:480px)"/>
<!--<link media="handheld" rel="stylesheet" href="mobile.css">-->



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="myscript.js"></script><!--My script-->
<script src="extraJS/xzero.js"></script><!--XZero script-->
<!--<script src="myscriptajax.js"></script>-->   <!--AJAX script for  message  Numbers--><!--Should be  deleted  as substitited with mvc/Ajaxes/jscript/ajaxCountMessages.js,but it dos not work-->
<script src="Ajaxes/jscript/ajaxCountMessages.js"></script> <!--AJAX script for  counting messages-->
<script src="Ajaxes/jscript/ajaxStatictics.js"></script>  <!--AJAX script for  statistics-->
<meta charset="utf-8">


<!-- Diagram  set-->
 <!-- prerequisites -->
  <!--<link rel="stylesheet" href="http://www.amcharts.com/lib/style.css" type="text/css">-->
  <script src="http://www.amcharts.com/lib/3/amcharts.js" type="text/javascript"></script>
  <script src="http://www.amcharts.com/lib/3/serial.js" type="text/javascript"></script>
<!--End  Diagram set-->



</head>

<body >
<div id="all"> <!--gradientLight -->
<div id="header1"  class="gradientLight   shadowColorR">
<!----------------------------------------------------------------------HEADER START----------------------------------------------------------------------->
<?php

// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//OOP!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//Creates  Class  OBJECT (to  load  templates)
$gett = new GetTemplateClass(); $header=$gett->GetTemplateR('templates/header/header.tpl'); 
//GetTemplateClass::GetTemplateR('mvc/templates/header/header.tpl');


//$header=GetTemplate('templates/header/header.tpl'); //was  substituted  by OOP CLASS GetTemplateClass
echo $header; 
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
?>
</div><!-- END HEADER-->



<!------------------------------------------------------START BASE(all 3  columns  below  header)------------------------------------------------------------>
<div id="base"><!-- This  includes  3  columns-->




<div id="c1"  class="gradientKILL"><!--C1 START (LEFT column)************-->
<?php
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//ALL  users  List -Only if  LOGGED
/*if(isset( $_SESSION['login'])){*/

//OOP!!!!!!!!  LOADBD CLASS IS USED IN template itself
$userlist=$gett->GetTemplateR('templates/left/userslist.tpl'); 
//$userlist=GetTemplate('templates/left/userslist.tpl');
echo $userlist;   
/*}*/ 
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
?>

</div> <!-- END c1-->





<!----------------------------------------------START C2  CENTRAL------------------------------------------------------->
<div id="c2" class="gradientLightKILL">


<?php 
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
    //set the  menu
    $linlsget=GetTemplate('templates/links.tpl');
    echo $linlsget;
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************




// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//Display  default text //SET to  erase default text if  other  menu is  clicked 
//(USER IS NOT LOGGED)
/* IT WORKS BUT TOO COMPLICATED
if (isset($_GET['triggemain']) ||(isset($_GET['triggersecond']))  ||(isset($_GET['tiggerRegister']))           )  {$default='';}
else{
$default= GetTemplate('templates/central/appearsbydefault.tpl');}
echo $default;*/
  //MORE SIMPLE if  no $GET[]  show  this  template (USER IS NOT LOGGED)
    if (empty($_GET)) {$default= GetTemplate('templates/central/appearsbydefault.tpl');
    echo $default;}
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************






// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//MENU CLICKING
//if  clicked 1nd  menu 
if (isset($_GET['triggemain'])) {/*unset($_GET['triggersecond']);*/
$linlsgetMain=GetTemplate('templates/menu/mainmenu.tpl');
unset($default);
echo $linlsgetMain;
}

//if clicked  2 nd  menu 
if (isset($_GET['triggersecond'])) {
$linlsget2=GetTemplate('templates/menu/secondmenu.tpl');
echo $linlsget2;} else {unset($_GET['triggersecond']);}



//if clicked  4 nd  menu 
if (isset($_GET['triggerdefault'])) {
$linlsget4=GetTemplate('templates/central/appearsbydefault.tpl');
echo $linlsget4;} 





//If  clicke  registation  button from LEFT 
if (isset($_GET['tiggerRegister'])) {
$register=GetTemplate('templates/central/register.tpl');
echo $register;} 
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************







// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//-----BIG BLOCK if isset SESSION['login']  -CEntral Contoller  fo  Logged  Users
if(isset($_SESSION['login'])){


// IF set &logged (if  u enetered the  login and  pass  correctly)
if(isset($_GET['login'])){echo GetTemplate('templates/central/logged.tpl');}


//Click users im left  column to  see  details
if(isset($_GET['user']))
{echo GetTemplate('templates/central/userInfo.tpl');}


//Show  list of  your  friends 
 if(isset($_GET['myfriendslist'])&&isset($_SESSION['login']) )
{echo GetTemplate('templates/central/myfriendslist.tpl');}


//If  clicked  to  write  a message
if (isset($_GET['write'])) 
{
echo GetTemplate('templates/central/writemessage.tpl');
}  

//If  clicked  to  VIEW messages
if (isset($_GET['mymessbox'])) 
{
echo GetTemplate('templates/central/messageBox.tpl');
}  




//If  clicked  to  VIEW gallery
if (isset($_GET['mygallery'])) 
{
echo GetTemplate('templates/central/gallery.tpl');
}  


//If  clicked  to  SEARCH
if (isset($_GET['search'])) 
{
echo GetTemplate('templates/central/search.tpl');
}  


//If  clicked  to  fullsize
if (isset($_GET['fullsizeM'])) 
{
echo GetTemplate('templates/central/fullsizeimage.tpl');
}  




//If  clicked  to vote
if (isset($_GET['vote'])) 
{
echo GetTemplate('templates/central/poll.tpl');
}


//If  clicked  to Play Game
if (isset($_GET['game'])) 
{ echo GetTemplate('templates/central/game.tpl');  }


//If  clicked  to Play Game
if (isset($_GET['myvideo'])) 
{   echo GetTemplate('templates/central/video.tpl');   }
 



//If  clicked  MAtch  a FRIEND
if (isset($_GET['friendmatch'])) 
{   echo GetTemplate('templates/central/matchFriend.tpl');   }




//If  clicked  Shop
if (isset($_GET['myshopp'])) 
{   echo GetTemplate('templates/central/myshopp.tpl');   }


//If  clicked Selected  Shop Item  INFO
if (isset($_GET['shopitem'])) 
{
echo GetTemplate('templates/central/myshopitem.tpl');
}


//Click Buy ITEM
if(isset($_GET['buy']))
{echo GetTemplate('templates/central/myshopcart.tpl');}




//Click ServiceTool
if(isset($_GET['servicetool']))
{echo GetTemplate('templates/central/servicetool.tpl');}


//Click Custom Card
if(isset($_GET['card']))
{echo GetTemplate('templates/central/card.tpl');}

//Click Card  execute  animation
if(isset($_POST['startann']))
{echo GetTemplate('templates/central/cardExe.tpl');}


//Click to  delete  a USER  from FRIENDS 
if(isset($_GET['deleteuser']/*,$_GET['delImage'] */)) 
{echo GetTemplate('templates/central/deleteuser.tpl');}



//Click to  delete  a photo GALLERY
if(isset($_GET['delImage'] )) 
{echo GetTemplate('templates/central/deletephoto.tpl');}



//Click to write  an  e-mail
if(isset($_GET['mail'] )) 
{echo GetTemplate('templates/central/emailWrite.tpl');}


//Click  WALL (in menu )
if(isset($_GET['wall'] )) 
{echo GetTemplate('templates/central/wall.tpl');}


//Delete  an  entry  from the  wall
if(isset($_GET['setD']))
{echo GetTemplate('templates/central/deleteWallEntry.tpl');}



//calendar
if(isset($_GET['calendar']))
{echo GetTemplate('templates/central/calender.tpl');}


//weather
if(isset($_GET['weather']))
{echo GetTemplate('templates/central/weather.tpl');}

//music
if(isset($_GET['music']))
{echo GetTemplate('templates/central/mymp3.tpl');}


//map
if(isset($_GET['map']))
{echo GetTemplate('templates/central/map.tpl');}


//IP
if(isset($_GET['ip']))
{echo GetTemplate('templates/central/ip.tpl');}

//News
if(isset($_GET['news']))
{echo GetTemplate('templates/central/news.tpl');}


//Edit Profile
if(isset($_GET['edit']))
{echo GetTemplate('templates/central/editProfile.tpl');}

//REm++
if(isset($_GET['rem']))
{echo GetTemplate('templates/central/reminder.tpl');}

//Randomize
if(isset($_GET['random']))
{$random=$gett->GetTemplateR('templates/central/random.tpl');  echo $random;}


//Statistics
if(isset($_GET['statistics']))
{$statistics=$gett->GetTemplateR('templates/central/statistics.tpl');  echo $statistics;}


//Filters
if(isset($_GET['filters']))
{$filters=$gett->GetTemplateR('templates/central/filters.tpl');  echo $filters;}



//Gdlibrary
if(isset($_GET['gdlibrary']))
{$gd=$gett->GetTemplateR('templates/central/gdlibrary.tpl');  echo $gd;}


//Diagram
if(isset($_GET['Diagram']))
{$gd=$gett->GetTemplateR('templates/central/diagram.tpl');  echo $gd;}


//QR  code
if(isset($_GET['qrcode']))
{$qr=$gett->GetTemplateR('templates/central/qrcode.tpl');  echo $qr;}





//OAuth 2.0
if(isset($_GET['oauth']))
{$qr=$gett->GetTemplateR('templates/central/oauth.tpl');  echo $qr;}


//Canvas
if(isset($_GET['canvas']))
{$qr=$gett->GetTemplateR('templates/central/canvas.tpl');  echo $qr;}










} // END of  big  Block if isset $_SESSION['login']
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
 ?>










</div> <!-- END  CENTRAL c2-->


<!--------------------------------------------------------------RIGHT Column------------------------------------------------------------------------>
<div id="c3"  class="gradientKILL"><!--RIGHT Column****************-->
<?php
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//IF LOGIN IS CORRECT  SET the  right  panel
if (isset($_SESSION['login']))           
{ $_GET['login']="1";   
echo  GetTemplate('templates/right/logout.tpl');}
else {
echo GetTemplate('templates/right/login.tpl');}
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************






// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
//If LOGOUTED
if (isset($_GET['logout'])) 
{session_destroy();unset($_GET['llogged']);  //???? where is  it ??

//Start Record  last visit  to DB (WORKS)*************************************************************
//echo '<script>alert("True");</script>';
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 
$stmt = $db->prepare("UPDATE mvcUsers set mvcUsers_lastvisit = :buyer where mvcUsers_login=:uid");
$stmt->bindParam(':uid', $uid);
$stmt->bindParam(':buyer', $buyer);    date_default_timezone_set('Europe/Kiev');
$buyer=date("Y-m-d")." ".date("h:i:sa");
$uid = $_SESSION['login'];
$stmt->execute();
//END  Record  last visit  to DB---------------------------------------------------------------

header("Location: /mvc/");
die;}
// END If LOGOUTED
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************



?> <!--CLOSES PHP-->


</div> <!-- END c3-->








</div><!-- END base-->

<div id="footer"></br>
</div> <!-- END FOOTER-->

</div><!-- END id "all"-->


<!--Pop up  Hidden  by  default-->
<?php
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
  if(!isset($_SESSION['login'])&& !isset($_GET['triggemain'])&&!isset($_GET['triggersecond'])&&!isset($_GET['triggerthird'])&&!isset($_GET['tiggerRegister']) )
{echo "<div id='captchaHidden'><center><p>Just  prove firstly that you are a  Human</p>
<img src='image/captcha.jpg'/> </br>
<input type='text' id='answer'/><input type='button' value='answer' id='ansbutton'>

</br><input type='button' value='I don not know' id='dknow'>
</center></div>";} 
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
   
?>
<!--END  Dispaly pop-up only if user has not  enetered LOGIN-->





</body>



</html>
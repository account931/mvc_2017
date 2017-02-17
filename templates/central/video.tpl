<!-- The  part  that  display  user's   video  section-->
<!--Originally  the  div is  hidden  and  dispalyed  on request with  JQUERY -->
<div id="MyVideo" class="white shadow2" style="position:relative;" >
<center>
<h1  class='boxedshadow'>Upload  and  view  your Video</h1>
<!--<p style="font-size:34px;">Upload  and  view  your Video</p>-->












<div style="display:none;" class="hiddengallery">
<h2>Watch your  downloaded  video  below</h2>
</div>















<img src="image/phototool2.jpg" class='viewgallery'/>

<form name="upsVideo"   action="" method="post" enctype="multipart/form-data">
<span style=" font-size:21px;" class="shad">Make your  choice  </span>   
   <input type="file" name="filemeVideo" width="35px" height="35px";/>
</br></br>

<input type="submit" name ="submitVid" value="SEND ME " id="sendmeVideo" style="position=relative; left:55px;" width="35px" height="25px" class="convert">
</form>
<a href='#'><p class='viewgallery'>VIEW Video</p></a>

<!--<img src="image/video.png" id="videopic" style="width:40%;position:absolute;left:1%;top:33%;"/> -->





<?php  // WORKING _SAVING  TO   " FILES"       FOLDER

include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


//If  pressed  submit  button
if(isset($_POST['submitVid'])) {
// CATALOGUE
//$uploaddir = './imagevideo/';
   $uploaddir = './imagevideo/';
$uploadfile = $uploaddir.basename($_FILES['filemeVideo']['name']);



//  Copy  a   file from temporary  catalogue   for files  saving :
if (copy($_FILES['filemeVideo']['tmp_name'], $uploadfile))
{



//  ADD Video  to  DB----------------------------------
// Path  to  image
$pathMe= $uploaddir."/".$_FILES['filemeVideo']['name']; 

   $sthI = $db->prepare("INSERT INTO mvcVideo(mvcVid_user, mvcVid_video) VALUES (:user, :image)");
          $sthI->bindValue(':user' ,     $_SESSION['login']);
          $sthI->bindValue(':image',  $pathMe);
            $sthI->execute();  

// END  ADD  PICTURE  TO DB-----------------------------








echo "<h1 style='color:red;font-size:44px;margin: 0 auto;'>UPLOADED SUCCESSFULLY</h1>";

echo "</br><input type=button value='Back'
onclick='history.back()'>";




}
else { echo "<h3>ERROR</h3>"; exit; }

} //  END of  isset  $_POST ['submitGAL']
?>



<!--START   Display uploaded videos----------------------------->

<div style="display:none;" class="hiddengallery">
<iframe src="http://vk.com/video_ext.php?oid=-58649801&id=171559577&hash=c4352e011dfd7692" width="607" height="360" frameborder="0"></iframe>
<?php
$resVid = $db->query("SELECT * FROM mvcVideo WHERE mvcVid_user LIKE '{$_SESSION['login']}'    ");


while ($rowVid =$resVid->fetch())
{
$PictOwner= $_SESSION['login']; //Save User to  variable 
$_SESSION['picowner']=$_SESSION['login'];

$_SESSION['Video'] = $rowVid; // save all DB  salect  to  array
         
// Path  is  aved to  variable 
$sourceVid=$_SESSION['Video']['mvcVid_video'];

          
//Display VIDEO
 echo "<video class='styleme' width='320' height='240' controls style='margin-left:8px;'>
  <source src='$sourceVid' type='video/webm'>
</video>";

}       


// END  Display uploaded images-----------------------------







?> 
</div>



</center>
</div>
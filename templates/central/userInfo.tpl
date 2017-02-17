<!-- INFO of  a selected User (from the  left column  click )-->
<div style="color:black;position:relative;" id="selectedUser">
<center>
<p style="font-size:33px;" class="shadow">Information about  selected  user</p>
<img src="image/profile.jpg" id="selUser" alt="YOU"style='float:left;width:100px;position:absolute;top:1%;left:1%;'/></br>

<?php 

//WORKING part of  SQL  WITH Constatnts  defined  in  a  txt  file 
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 
?>









<!--DUBLICATED-->
<!-- SELECTED USER GALLERY DISPLAY-->

<!--Display USERS images GALLERY--------------------->
<div style="display:none;" class="hiddengallery">
<?php 
//CHECK IF  ANY  PHOTOS EXISSTS
 if($rowG=null){echo"NO PHOTOS SO FAR HAVE BEEN UPLOADED ";}  ?>
<!--END CHECK IF  ANY  PHOTOS EXISSTS-->

<a  href='#'><p class='viewgallery'>CLOSE GALLERY</p></a>
<?php
$resGAL = $db->query("SELECT * FROM mvcGallery WHERE mvcGal_user LIKE '{$_GET['user']}'   ");
while ($rowG =$resGAL->fetch())



{
$PictOwner= $_GET['user']; //Save User to  variable 

$_SESSION['GALERRY'] = $rowG; // save all DB  salect  to  array
         // Path  is  aved to  variable 
   $source=$_SESSION['GALERRY']['mvcGal_image'];
          //Display name  and  delete option

echo "<a href='/mvc/?fullsizeM=$source'><img src='  $source '   style='width:20%;'/></a>";
// echo "<img src='  $source '   style='width:20%;'/>";
}    ?> </div>
<!--END  OD  SELECTED  USER GALLERY-->








<!--DUBLICATE-->
<!--Display USERS FRIENDS DISPLAY COMES  FIRST------------------>
<div style="display:none;" class="hiddenfriend">
<a href='#'><p class='viewfriends'>CLOSE LIST</p></a>
<?php
$resFR = $db->query("SELECT * FROM mvcFriends WHERE mvcFr_who LIKE '{$_GET['user']}'   ");

while ($rowG =$resFR->fetch())
{
$PictOwner= $_GET['user'];  //Save User to  variable 

$_SESSION['FRIENDS'] = $rowG; // save all DB  salect  to  array
         // Path  is  aved to  variable 
   $source=$_SESSION['FRIENDS']['mvcFr_whome'];
          //Display name  and  delete option



echo "<p style='border:3px solid white;width:34%;background-color:grey;margin-top:-15px;'>
<img src='image/profile.jpg' alt='YOU' style='width:20px;margin-left:10px;margin-bottom:-3%;border-radius: 15px;'/></br>";//just  a  picture
echo "<a href='/mvc/?user=$source' style='color:white;'>$source</a>";  //  name  of   a  friend  itself


}   
 ?> 
</div>
<!--END  OF  SELECTED  USER FRIENDS-->











<!--VIDEO-->
<!--Display USERS Video------------------>
<div style="display:none;" class="hiddenvideo">
<a href='#'><p class='viewvideo'>CLOSE LIST</p></a>
<?php
$resVid = $db->query("SELECT * FROM mvcVideo WHERE mvcVid_user LIKE '{$_GET['user']}'    ");


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
   
 ?> 
</div>
<!--END  OF  SELECTED  USER VIDEO-->










<p style="color:black;font-size:20px;">
<?php 
session_start();
 /*DISPLAY every separate  user in center column*/

include("config/database.php");
session_start();




//WORKING  Dublictated 
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 



$res = $db->query("SELECT * FROM mvcUsers WHERE mvcUsers_login LIKE '{$_GET['user']}' ");
while ($row =$res->fetch())
{

$_SESSION['otheruser'] = $row;
$_SESSION['otheruser1']=$row['mvcUsers_login'];

//Display info

echo $_SESSION['otheruser1'] ;  
echo '</br>This user hobby is ';
echo $_SESSION['otheruser']['mvcUsers_hobby'] ;

echo "</br>This user name is  "." ".$_SESSION['otheruser']['mvcUser_name'] ;
echo "</br>This user home city is "." ".$_SESSION['otheruser']['mvcUsers_city'] ;
echo "</br>This user phone"." ".$_SESSION['otheruser']['mvcUsers_phone'] ;

echo "</br>This user e-mail "." ".$_SESSION['otheruser']['mvcUsers_email'] ;

echo "</br>This user birthday is "." ".$_SESSION['otheruser']['mvcUsers_birth'] ;
echo "</br></br>Date of   registartion"." ".$_SESSION['otheruser']['mvcUsers_dateofreg'] ;


}

?>
</p>
<br/><br/>
<!-- adding  friends---------------------------->
<form action="" method="post">
<input type="submit" value="Add to  friends" name="friendme">
</form>
<?php
//if  the  button "ADD"  has  been  clicked 
if(isset($_POST['friendme'])){





//checking if  friend  has  been already added
$resFR = $db->query("SELECT * FROM mvcFriends WHERE mvcFr_who LIKE '{$_SESSION['login']}'  AND   mvcFr_whome LIKE  '{$_GET['user']}'     ");
//while ($rowFcheck =$resFR->fetch())
 $row1 = $resFR->fetch();
      if ($row1 != null) {echo"<span style='color:red'>THIS USER IS  ALREADY  YOUR FRIEND!!!</span>";} 
else {
//end  checking









$db->query("INSERT INTO mvcFriends (mvcFr_who, mvcFr_whome) VALUES ('{$_SESSION['login']}', '{$_SESSION['otheruser1']}')");   
echo "ADDED!"; }
} //  end  of  else  statement (if  is  not  a  friend  yet)
?>





<!--GET BACK-->
<!-- SELECTED USER GALLERY--><p>
<a href='#'><span class='viewgallery'>View GALLERY</span></a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href='#'><span class='viewfriends'>View <?php echo $_GET['user']." 's" ;?> Friends</span></a> &nbsp;&nbsp;&nbsp;&nbsp; <!--</p>-->

<a href='#'><span class='viewvideo'>View <?php echo $_GET['user']." 's" ;?> Video</span></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href='#'><span class='viewfriends'>View <?php echo $_GET['user']." 's" ;?> Music</span></a></p>


<!--Display USERS images----------------------------->
<div style="display:none;" class="hiddengallery">
<?php
$resGAL = $db->query("SELECT * FROM mvcGallery WHERE mvcGal_user LIKE '{$_GET['user']}'   ");

//

//
while ($rowG =$resGAL->fetch())



{
$PictOwner= $_GET['user']; //Save User to  variable 

$_SESSION['GALERRY'] = $rowG; // save all DB  salect  to  array
         // Path  is  aved to  variable 
   $source=$_SESSION['GALERRY']['mvcGal_image'];
          //Display name  and  delete option

 echo "<img src='  $source '   style='width:20%;'/>";
}    ?> </div>
<!--END  OD  SELECTED  USER GALLERY-->





<!--Display USERS FRIENDS LOCATED  DUBLICATED----------------------------->
<div style="display:none;" class="hiddenfriend">
<?php
$resFR = $db->query("SELECT * FROM mvcFriends WHERE mvcFr_who LIKE '{$_GET['user']}'   ");

//

//
while ($rowG =$resFR->fetch())

{
/*$PictOwner= $_GET['user']; //Save User to  variable 

$_SESSION['GALERRY'] = $rowG; // save all DB  salect  to  array
         // Path  is  aved to  variable 
   $source=$_SESSION['GALERRY']['mvcFr_whome'];
          //Display name  and  delete option

echo "<p style='border:3px solid white;width:34%;background-color:green;margin-top:-15px;'>
<img src='image/profile.jpg' alt='YOU' style='width:20px;margin-left:10px;margin-bottom:-3%;border-radius: 15px;'/></br>";
echo $_SESSION['friendslist']['mvcFr_whome']; */

$PictOwner= $_GET['user'];  //Save Clicked User to  variable 

$_SESSION['FRIENDS'] = $rowG; // save all DB  salect  to  array
         // Path  is  aved to  variable 
   $source=$_SESSION['FRIENDS']['mvcFr_whome'];
          //Display name  and  delete option

echo "<p style='border:3px solid white;width:34%;background-color:green;margin-top:-15px;'>
<img src='image/profile.jpg' alt='YOU' style='width:20px;margin-left:10px;margin-bottom:-3%;border-radius: 15px;'/></br>";
echo $_SESSION['FRIENDS']['mvcFr_whome']; 

}   
 ?> 

</div>
<!--END  OF  SELECTED  USER FRIENDS-->




</center>
</div>
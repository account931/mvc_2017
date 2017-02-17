<!--  it is  a  back-upped -->
<div id="MyGallery" class="white shadow2" style="position:relative;" >
<center>
<h1  class='boxedshadow'>Upload  and  view  your Gallery</h1>




<!--Display uploaded images----------------------------->
<div style="display:none;" class="hiddengallery">
<h2>Watch  the  previously loaded  photos  below</h2>

<!-- START  Mimiatures  -->

<!-- END  Miniatures-->
</div>












<img  src="image/phototools.jpg"  class='viewgallery'/>
<!--<p style="font-size:34px;">Upload  and  view  your Gallery</p>-->
<form name="ups"   action="" method="post" enctype="multipart/form-data">
<span style=" font-size:21px;" class="shad">Make your  choice  </span>        <input type="file" name="fileme" width="35px" height="35px";/>
</br>

<input type="submit" name ="submitGAL" value="SEND ME " style="position=relative; left:55px;" width="35px" height="25px" class="convert">
</form>
<a href='#'><p class='viewgallery'>VIEW GALLERY</p></a>

<img src="image/gallery1.jpg" style="width:20%;position:absolute;left:1%;top:30%;"/> 





<?php  // WORKING _SAVING  TO   " FILES"       FOLDER

include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


//If  pessed  submit  button
if(isset($_POST['submitGAL'])) {
// CATALOGUE
$uploaddir = './imagefiles/';
$uploadfile = $uploaddir.basename($_FILES['fileme']['name']);



//  Copy  a   file from temporary  catalogue   for files  saving :
if (copy($_FILES['fileme']['tmp_name'], $uploadfile))
{



//  ADD picture  to  DB----------------------------------
// Path  to  image
$pathMe= $uploaddir."/".$_FILES['fileme']['name']; 

   $sthI = $db->prepare("INSERT INTO mvcGallery (mvcGal_user, mvcGal_image) VALUES (:user, :image)");
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





<!--Display uploaded images----------------------------->
<div style="display:none;" class="hiddengallery">
<?php
$resGAL = $db->query("SELECT * FROM mvcGallery WHERE mvcGal_user LIKE '{$_SESSION['login']}'    ");

//Check empty 
   $row1 = $resGAL->fetch();
      if ($row1 = null) {echo"<p>EMPTY</p>";} else {
//END Check Empty


while ($rowG =$resGAL->fetch())

{
$PictOwner= $_SESSION['login']; //Save User to  variable 

$_SESSION['GALERRY'] = $rowG; // save all DB  salect  to  array
         
// Path  is  aved to  variable 
$source=$_SESSION['GALERRY']['mvcGal_image'];

        

          //Display name  and  delete option  1st come s -just the name of  file
//Delete link is  trigerred in index.php along  with delete from Friends 
 echo $_SESSION['GALERRY']['mvcGal_image']."<a href='/mvc/?delImage=$PictOwner&id=$source'><span>&nbsp;&nbsp; delete</span></a></br>"; 
//Display picture (clickable-full size)
 echo "<a href='/mvc/?fullsizeM=$source'><img src='  $source '   style='width:20%;'/></a></br>";
// <!--mvc/?fullsizeM=$source--> 
}       
}// END ELSE =!null




// END  Display uploaded images-----------------------------







//DELETE A USER IMAGE IF  CLICKED
if(isset($_GET['delImage'])){
/*$resGAL = $db->query("DELETE  FROM mvcGallery WHERE mvcGal_user LIKE '{$_SESSION['login']}'  AND  	mvcGal_image LIKE $source   ");*/

$sql ="DELETE FROM mvcGallery WHERE mvcGal_user=:filmID AND mvcGal_image=:imageID ";
$stmt = $db->prepare($sql);
$stmt->bindParam(':filmID',$_SESSION['login']);   
$stmt->bindParam(':imageID',$source  );  
$stmt->execute();
echo "<p>delete</p>";

}
//END DELETE 


?> 
</div>



</center>
</div>
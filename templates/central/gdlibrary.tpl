<!--GD Library-->
<?php
//Loaded imaged  are convert in black and  white with action /mvc/GD_Library/blackscale.php ;
//to process og GD changes is  formed  by getting script  in link with image  src in ['Get']  => <img src='http://example2.esy.es/mvc/GD_Library/blackscale.php?source=$imageLoaded' alt='' />  ;
?>

<div>
<center>
<h1  class='boxedshadow'>Black and   white  your  photo with GD Library</h1></br></br>
<img  src="image/grayscale.png"  alt="grayscale"/>
<!--http://www.goldenthreadgallery.org/wp-content/uploads/2015/02/BlackWhite-300x225.gif-->
</br></br></br>



<!--Form to Load an image for  GD  proceeding -->
<div style="border:1px solid black;width:40%;">
<form name="ups"   action="" method="post" enctype="multipart/form-data" >
<span style=" font-size:21px;" class="shad">Select your  photo from HDD  </span>        <input type="file" name="fileme" width="35px" height="35px";/>
</br>
<input type="submit" name ="submitGDLibrary" value="Change it " style="position=relative; left:55px;border-radius:0px;" width="35px" height="25px" class="convert">
</form>
</div>
<a href="http://example2.esy.es/mvc/?gdlibrary&loadImage=$imageLoaded"> Reset</a>
<!--END Form to Load-->





<?php
// **************************************************************************************
// **************************************************************************************
// **                                                                                  ** 

// if u  submitted/uploaded  the  image in the  form   -  resulted/Gd proceeded  images  <img  src >  are shown;
//$_GET['condition']  is  formed  in a href (&condition=on)  link after  the  submit button pressed (formed  by header("Location: http://example2.esy.es/mvc/?gdlibrary&loadImage=$imageLoaded&condition=on"); )
if(isset($_GET['condition'])){ ?>                          


<!-- Here loads  the blackscaled  image--> <!-- used substr($str, 1)  to drop "." in link -->
<p> Result black and  white image</p>
<img src='http://example2.esy.es/mvc/GD_Library/blackscale.php?source=http://example2.esy.es/mvc<?php  $str=$_GET['loadImage'];$str = substr($str, 1);echo $str; ?>' alt='' /><!-- CHANGED -->
<p> Result Mean Remove </p>
<img src='http://example2.esy.es/mvc/GD_Library/meanremove.php?source=http://example2.esy.es/mvc<?php  $str=$_GET['loadImage'];$str = substr($str, 1);echo $str; ?>' alt='' />

<p id="solarize" style="display:none;"  class="blacknwhite2" >Colorized image </br>
<img src='http://example2.esy.es/mvc/GD_Library/colorize.php?source=http://example2.esy.es/mvc<?php  $str=$_GET['loadImage'];$str = substr($str, 1);echo $str; ?>' alt='' />
</p>

<p> Original image</p>
<img src='http://example2.esy.es/mvc<?php  $str=$_GET['loadImage'];$str = substr($str, 1);echo $str; ?>' alt='' />


<p id="blacknwhite" style="text-decoration:underline;cursor:pointer;">Show more</p><!-- show  hidden-->

<?php } //END of 'if(isset($_GET['condition'](End  of Gd lib proceeded images  block);
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************






// **************************************************************************************
// **************************************************************************************
// **                                                                                  ** 

 else /*else  show  default  images*/ { ?>

<p>Last  working </p><!-- Just  default  images  to  disaplay=Zara-->
<img src='http://example2.esy.es/mvc/GD_Library/blackscale.php?source=http://example2.esy.es/mvc/image/zara.jpg' alt='' />
<img src='http://example2.esy.es/mvc/GD_Library/blackscale.php?source=meeting2.jpg' alt='' /><!--same  folder  as  where  script-->

<?php } 
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************

?>


<center>
</div>













<?php  
// Logic  when u pressed  the  submit button in the  form ->copy  image to  folder + save  to  db + form the  header (with example2.esy.es/mvc/?gdlibrary&loadImage=$i&condition=on)
// **************************************************************************************
// **************************************************************************************
// **                                                                                  ** 
// START SAVING uploaded  TO   " imagesBlackScale"   FOLDER (adding to SQL is  available but  deactivated)************************************************

//include("config/database.php");
session_start();

//WORKING
//$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


//If  pessed  submit  button
if(isset($_POST['submitGDLibrary'])) {
// CATALOGUE
$uploaddir = './ImagesAll/imagesBlackScale/';  //$uploaddir = './imagesBlackScale/';
$uploadfile = $uploaddir.basename($_FILES['fileme']['name']);
$url="http://example2.esy.es";
$imageLoaded=$uploadfile ; //  to  form['GET'] URL LINK


//  Copy  a   file from temporary  catalogue   for files  saving :
if (copy($_FILES['fileme']['tmp_name'], $uploadfile))
{



//  ADD picture  to  DB----------------------------------
// Path  to  image
$pathMe= $uploaddir."/".$_FILES['fileme']['name']; // it is  dublicated??

   //$sthI = $db->prepare("INSERT INTO mvcGallery (mvcGal_user, mvcGal_image) VALUES (:user, :image)");
          //$sthI->bindValue(':user' ,     $_SESSION['login']);
          //$sthI->bindValue(':image',  $pathMe);
           // $sthI->execute();  

// END  ADD  PICTURE  TO DB-----------------------------






echo "<h1 style='color:red;font-size:44px;margin: 0 auto;'>UPLOADED SUCCESSFULLY</h1>";
echo "<img  src=$uploadfile />";

echo "</br><input type=button value='Back'
onclick='history.back()'>";
header("Location: http://example2.esy.es/mvc/?gdlibrary&loadImage=$imageLoaded&condition=on"); 


// 2nd  variant  to  drop ".", and NOT  to use  substr in <a hrefs>
/*$i=substr($imageLoaded,1);
header("Location: http://example2.esy.es/mvc/?gdlibrary&loadImage=$i&condition=on");*/
// END 2nd  variant  to  drop ".", and  to use  substr in <a hrefs>



}
else { echo "<h3>ERROR</h3>"; exit; }

} //  END of  isset  $_POST ['submitGDLibrary'],pressed the  submit button  in form------------------------------------------------------------------------------------
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
?>








<!-- REmove all  images  from folder
$images = glob("images/*.jpg");
foreach($images as $image){
     @unlink($image);
}

-->




			
<?php

class UploadFile{


//  not  approved  if  working , and  so f ar  is  not  used  anywhere

// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **  
        public static function UploadFile($folder,$filename){
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



}
else { echo "<h3>ERROR</h3>"; exit; }

          }//  END  method
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************




















}

?>
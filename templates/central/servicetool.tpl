<!-- service  tools include  two  option =resizing   and  counting-->
<!--counting is  already implemented,  RESING is  NOT-->
<!--U have  to  cope  the  insert  part  from  myshop.tpl , which  already include  resizg and  create  a new  folder  for resized  images -->
<!--  All the  previous  attemps  were    so  far   abortive  to  proceed  and  carried  nothing   but  either  failure  of  blank  results  screen -->


<div id="serv1">
<center>
<h1 class='boxedshadow'>Crop  your  image  to any  size</h1>
<p style="font-size:10px">click the  image below  to  use  other tool</p>
<img id="imgSwitcher" src='image/servicetool.png' style="cursor:pointer;"/>

<p>Crop your  image  to any  size </p>

<!---------------- Start Script  checks if width/hight  option exist  and  then  forces  other  field   be  REQUIRED--------------------->
<script>
$(document).ready(function(){

//try to make  2 nd  field  required  depending in 1st input NOT WORKING*************
      $("#check1").keyup(function() {     /*.on('change' function() {*/ 
              if ( $(this).val().length === 0 ) {
                                                $("#checkSlave").attr('required', false);
              } else {  
                      $("#checkSlave").attr('required', true);
                     }
              });
// end //try to make  2 nd  field  required  depending in 1st input NOT WORKING---------------


//try to make 1 nd  field  required  depending in 2st input NOT WORKING*************
$("#checkSlave").keyup(function() { /*.on('change' function() {*/ 
//alert("kkk");
  if ( $(this).val().length === 0 ) {
    $("#check1").attr('required', false);
  } else {  
    $("#check1").attr('required', true);
  }
});
// end //try to make  1 nd  field  required  depending in 2st input NOT WORKING---------------


});// ENDD  document  ready
</script>
<!------------------ END Script  checks if width/hight  option exist  and  then  forces  other  field   be  REQUIRED------------------------->

<!-- form  for  CROPP-->
<!--imagecropservice-->
<form name="resize"   action="" method="post" enctype="multipart/form-data" >
<span style=" font-size:21px;" class="shad">Chooze  your  image  </span>        <input type="file" name="filemeCROP" width="35px" height="35px";/>
</br>
<!-- Input  only  numbers(width and  height),  checked  with  JS-->
<input  id="check1" type="text" placeholder=" Define the  width" name="cropwidth" onkeyup="this.value=this.value.replace(/[^\d]/,'')" />
<!--Not  working    onkeypress='validate(event)'   -->

<input  type="text" placeholder=" Define the  height" name="cropheight" onkeyup="this.value=this.value.replace(/[^\d]/,'')"  id="checkSlave"/>

</br>
<input type="submit" name ="cropsend" value="Start "  class="convert">
</form> </br>
<a  href="#" id="cropToggle">View previous  cropping</a>  <!--<a  href="/mvc/?cropHistory=yes">-->
<!--  was  there -->




<?php
include("config/database.php");
session_start();

if  (isset($_POST['cropsend']))   /*($_POST['cropwidth']==null)*/   // it  was  an error =checking empty  field  for  width
  {   //added

//it  works  -simple   variant  -Should  add  checking  if  the  height  field  is  empty  -and  proceed  this
//CROPP  PHP  START*********************************************************************************************
//if($_POST['filemeCROP']!=null)  // example


//Inserting goods  to  DataBase
if(isset($_POST['cropsend']))   // was  filemeCROP
{

// CATALOGUE
$uploaddirSERV = './imagecropservice/';
$uploadfile = $uploaddirSERV.basename($_FILES['filemeCROP']['name']);



//  Copy  a   file from temporary  catalogue   for files  saving :
if (copy($_FILES['filemeCROP']['tmp_name'], $uploadfile))
{


// Path  to  image
$pathMeServ= $uploaddirSERV."/".$_FILES['filemeCROP']['name']; 



             
//Start REsizing------------------------
 include('classSimpleImage/classSimpleImage.php');
//http://sanchiz.net/blog/resizing-images-with-php
      $image = new SimpleImage();
       $image->load($pathMeServ);            
                                             if ($_POST['cropwidth']!=NULL) /*(!empty($_POST['cropwidth'])) (isset($_POST['cropwidth']))*/  { $width=$_POST['cropwidth']; $height=$_POST['cropheight'];$image->resize($width,$height); $SizeText='Yout  size '.$width.' and '.$height.' applied'; }
                                             else {  $image->resizeToWidth(150); $SizeText='Resized  to  150px  by  default';}
      //$image->resize(400, 200);
      $image->save($pathMeServ);
  
//END RESIZING---------------------------------
echo '<center>';
echo $SizeText .'</br>';
echo "<img  src='$pathMeServ' />";
echo '</center>';

} // END if (copy($_FILES[
  else {echo 'Screwed';}
} // END  if(isset($_POST['cropsend']) 


} //END " if ($_POST['cropwidth']==null"

else {}  // fill this  line

// CROP PHP  ENDS----------------------------------------------------------------------------
?>
<!-- End  of  Service1 -CROPPING div-->

</center>
</div>








<!---------------------  Display all  previous  crops------------------------------------------>

<!--  JS  to  hide  show  previous  croppings-->
<script>
$(document).ready(function(){
    $("#cropToggle").click(function(){
        $("#cropHistory").toggle(1000);
    });
    });
</script>


<!--Display all  prev =  no  DB  is  engaged -->
<center>
<div id="cropHistory" style="margin:0 auto;display:none;">
<?php
  $dir = 'imagecropservice/'; // folder  to btake  images
  $cols = 3; // number  of  columns
  $files = scandir($dir); 
  echo "<table>"; 
  $k = 0; // 
  for ($i = 0; $i < count($files); $i++) { 
    if (($files[$i] != ".") && ($files[$i] != "..")) { // 
      if ($k % $cols == 0) echo "<tr>"; 
      echo "<td>"; 
      $path = $dir.$files[$i]; 
      echo "<a href='$path'>"; 
      echo "<img src='$path' alt='' width='200' />"; 
      echo "</a>"; 
      echo "</td>"; //
     
      if ((($k + 1) % $cols == 0) || (($i + 1) == count($files))) echo "</tr>";
      $k++; // 
    }
  }
  echo "</table>"; 
?>
</div></center>
<!------------------ END  Dispalying  all previous  crops------------------------------- -->


















































<!--Start of  2nd  SERVICE- Counting  words *****************************************************************   -->
<div id="serv2" style="display:none">
<center>
<h1 class='boxedshadow'>Use Php tools for  counting</h1>
<img src='image/servicett.jpg' id="imgSwitcher2" style="cursor:pointer;width:38%;"/>
<p>Php Counts the amount of symbols u print</p>
<form action="" method="post">
<input type="text" name="check5">
<input type="submit" >
</form>

<?php
// input  COUNT***********************
if(isset($_POST['check5'])){
$str =$_POST['check5'];
$resss=mb_strlen($str, 'utf-8'); 
$part1="You've  entered ";
$tt=$part1;
// To count RUSSAIN SYMBOLS 
echo "You have printed "."<span style='color:red;'>". mb_strlen($str, 'utf-8')."</span>"." symbols ";

echo "<script>alert(' $resss');</script>";

 }
?>
</center>
</div>
<!-- End  of  serv1 div-->
<!--End  of  serv 22-->






<center>
<h1  class='boxedshadow'>Generate  your  QR  Code on-line</h1>
<div style="margin:o auto;">

<?php
// Not  used*********************************************************
//include("libraries/phpqrcode-master/qrlib.php");//1st  version
//include("libraries/phpqrcode/phpqrcode.php");//2 nd  version
//include("libraries/phpqrcode/qrlib.php");//2nd  version
// Create  and  print  QR  code
//QRcode::png('some othertext 1234');
//QRcode::png("My First QR Code");
//QRcode::png("http://www.ruseller.com", "image/delete.png", "L", 4, 4); //  this  caused  image  corruption in  myShopCart.tpl ????
// End  not  used---------------------------------------------------------

?>




<!--------------------------------FORM-------------------------------------------->
<form name="qr"   action="" method="post" enctype="multipart/form-data" >
<input  id="diagramInput" type="text" placeholder=" Print  the  text u 'd  like to  QR" name="qr"  size="24" required />
</br></br>
<input type="submit" name ="QRSend" value="Generate"  class="convert">

</form> 
<!-----------------------------END  FORM------------------------------------------->







<?php
// START GENERATING QR**********************************************************************************
if(isset($_POST['QRSend'])){
$text=$_POST["qr"];//your input
$textR = str_replace(' ', '+', $text);  //  replace  all  blankspaces  with "+" as with  blankspaces it proceedes only  the  1  st word;
//echo $textR;

  $url="https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=".$textR."&choe=UTF-8"." title='MVC' ";
  echo '<p id="qrCode">Your  QR Code  has been created</p>';
       echo ' <img src='.$url.' /> ';
 // echo ' <img src="https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=.$text.&choe=UTF-8" title="MVC" /> ';
  
} //End isset($_POST['QRSend'])
// END  GENERATING QR--------------------------------------------------------------------------------------
?>







<!--  Working  QR  Code-->
<!--<img src="https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=example2.esy.es&choe=UTF-8" title="Link to Google.com" />-->
<!--
300x300 is the size of the QR image you want to generate,
the chl is the url-encoded string you want to change into a QR code, and
the choe is the (optional) encoding.-->

<!--  Send  sms exampl
http://chart.apis.google.com/chart?cht=qr&chs=200x200&chl=sms:19172073420-->


</div>
</center>
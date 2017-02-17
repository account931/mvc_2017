<div>
<center>

<p class="shadowd pargr boxedshadow" >Filters</p>
<img src="image/filters.jpg" alt="filter"/>









<!---------------------------------- RESULTING PHP------------------------------>

<?php

$email=$_POST['check'];
$md5=$_POST['check2'];

//1st  checking  if  it is  e-mail*****************
 if (isset($_POST['check'])) {

// Remove all illegal characters from email
$email = filter_var($email, FILTER_SANITIZE_EMAIL);

// Validate e-mail
if (!filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
     echo("<p style='font-size:20px;'><span style='color:red;'>$email </p> is a valid email address</span>");
} else {
     echo("<p style='font-size:20px;color:red;'>$email is not a valid email address</p>");
}
echo '<p><a href="javascript:history.back()" id="dark">Back</a></p>';
} //END IF 
// END e-mail  check




//2 nd  input MD5  output*****************
if(isset($_POST['check2'])){
$str = $md5;
echo "<p>Md5 hash  value for   <span style='color:red;'> $md5</p>  is </span>";
echo  md5($str); 
echo '<p><a href="javascript:history.back()" id="dark">Back</a></p>';   
}




//  3rd input  My  function*****************
function sample($name)
{ echo"</br>";
echo "Hello"." ".$name;}
if(isset($_POST['check3'])){
//Starting 
sample($_POST['check3']);
echo '<p><a href="javascript:history.back()" id="dark">Back</a></p>';
}




//  4rd input REPLACE  PARENTAL ADVISORY-*****************

echo"</br>";
$find = array("Dima","Waze","screw");
$replace = array("NOT ALLOWED","Ignite");
$strtext=$_POST['check4'];
if(isset($_POST['check4'])){
echo str_ireplace($find ,$replace,$strtext,$i);
      //Checking if  there  were   any  replacement 
      if($i>0){echo"</br>You used  forbidden words";}
// WORKS_below (chage selected elem)   
// echo str_replace($find[1] ,$replace[1],$strtext);
echo '<p><a href="javascript:history.back()" id="dark">Back</a></p>';
}



//5th input  COUNT***********************
if(isset($_POST['check5'])){
$str =$_POST['check5'];

// To count RUSSAIN SYMBOLS 
echo "<p>You have printed "."<span style='color:red;'>". mb_strlen($str, 'utf-8')."</span>"." symbols </p>";


//THIS WORKS BUT COUNTS WRONG RUSS
/*echo "You have printed "."<span style='color:red;'>". strlen($str)."</span>"." symbols "; */
echo '<p><a href="javascript:history.back()" id="dark">Back</a></p>';
}





//6th REMOVE TAGS 
if(isset($_POST['check6'])){
$stripped=$_POST['check6'];  echo"</br>";
echo strip_tags($stripped);
echo '<p><a href="javascript:history.back()" id="dark">Back</a></p>';
}

?>


















<!----------------------------------INPUT FORMS ------------------------>

<div id="div1">
<p  style="font-size:31px;">Check Input for  e-mail  validity</p>
<form action="" method="post">
<input type="text" name="check" required>
<input type="submit">
</form>
</div>


</br>
<!-- 2nd  Md5 Hash-->
<div id="div2">
<p  style="font-size:31px;">Check Input MD5 HASH</p>
<form action="" method="post">
<input type="text" name="check2" required>
<input type="submit">
</form>
</div>


</br>
<!-- 3th Verify-->
<div id="div3">
<p  style="font-size:31px;">Verifying</p>
<form action="" method="post">
<input type="text" name="check3" required>
<input type="submit" >
</form>
</div>


<!-- 4th  PARENTAL ADVISORY-->
<div id="div4">
<p style="font-size:31px;">Check  forbidden words</p>
<form action="" method="post">
<input type="text" name="check4" required>
<input type="submit" >
</form>
</div>




<!-- 5th  Count-->
<div id="div5">
<p style="font-size:31px;">Count words</p>
<form action="" method="post">
<input type="text" name="check5" required>
<input type="submit" >
</form>
</div>



<!-- 6th  REMOVE FORMATTING-->
<div id="div6">
<p style="font-size:31px;">Remove tags</p>
<form action="" method="post">
<input type="text" name="check6" required>
<input type="submit" >
</form>
</div>
</br>

















</div>
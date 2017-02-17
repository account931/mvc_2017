<div>
<center>
<h1 class="boxedshadow" > Randomize your  day</h1> 
</br></br>
<H1 style="margin:10px;">
<?php
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **  
include("Classes/RandomClass.php");
RandomClass::getRandonStr();
//$r=new RandomClass(); $r->getRandomString();
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************


?>

</H1>


<form action="" name="random" method="post"> 
    <input name="SubmitRandom" type=submit value=" Try "> 
</form>
</br>
<img src="image/randomm.png"  name="SubmitRandom"  alt="random"  style="width:30%;"/>
</div>
</center>
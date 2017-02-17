<style>
.bbb { width:300px;height:50px;font-size:20px}
#remDisplay{font-size:37px;}
</style>
<div>
<center>
<h3  class='boxedshadow'>Reminder++</h3>
</br>
</br>




<!--display INT-->
<div id="remDisplay">
<?php
foreach (glob("remInt.txt") as $filename) {
    echo nl2br(file_get_contents($filename));
    echo "<br></br>";
}



//adding ++
if(isset($_POST['rem'])){
//name  of  file
$filename = "remInt.txt";
//$content = file($filename);
//$content=$content+1;
$d=file_get_contents($filename);
$int = (int)$d;
$int++;


$insertvote=$int;
//save 
$fp = fopen($filename,"w");
fputs($fp,$insertvote);
fclose($fp);
//end  save

header("Location: http://example2.esy.es/mvc/?rem"); 
exit;
}
?>
</div>
<!--End  dispaly INT-->









<form action="" method="post">
 <input type="submit" value="++" name="rem" class="bbb">
</form>











</center>
</div>
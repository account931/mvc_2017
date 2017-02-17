<!--Form to  neter  words  for  animating-->
<div id="card">
<center>
<img src="image/cards.jpeg" alt="not logged"/>
<p>To have  some  fun time and  get  some  relax ,type in the desired  words and  watch them getting animated </p>

<form action="" method="post">
Word 1 <input type="text" name="1st"  placeholder=" type your  word"></br>
Word 2 <input type="text" name="2st"></br>
Word 3 <input type="text" name="3st"></br>
Word 4 <input type="text" name="4st"></br>
Word 5 <input type="text" name="5st"></br>
Word 6 <input type="text" name="6st"></br>

<a href="/mvc/?startann">
<input type="submit" value="I'm ready" name="startann"></a>
</form>
</center></div>

<?php
if ($_POST['1st']!=null){
$_SESSION['1st']=$_POST['1st'];}else{$_SESSION['1st']="Go";}
$_SESSION['2st']=$_POST['2st'];
$_SESSION['3st']=$_POST['3st'];
$_SESSION['4st']=$_POST['4st'];
$_SESSION['5st']=$_POST['6st'];

?>
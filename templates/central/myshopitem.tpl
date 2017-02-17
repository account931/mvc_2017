<!--This  is  a SELECTED PRODUCT page  after  clicking  on info  button   in the shop section-->
<div>
<center>
<h1>Product Info </h1>

<?php 
session_start();

//WORKING  
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 



//$res = $db->query("SELECT * FROM mvcShop WHERE mShop_id LIKE '{$_GET['shopitem']}' ");

$res = $db->query("SELECT * FROM mvcShop WHERE mShop_id LIKE '{$_GET['shopitem']}' ");
while ($row =$res->fetch())
{

$_SESSION['shoppp'] = $row;
$selimage=$_SESSION['shoppp']['mShop_image'];

//START If there is   an  image 
$nophoto='imageshop/nophoto.jpg';
if(!empty($selimage)){ $selimage=$_SESSION['shoppp']['mShop_image']; }
else {$selimage=$nophoto;}
//END If there is  an image 

//Display info
echo "</br>User :  "." ".$_SESSION['shoppp']['mShop_user'] ;

echo "</br>Product : "." ".$_SESSION['shoppp']['mShop_item'] ;
echo "</br>Description : "." ".$_SESSION['shoppp']['mShop_descript'] ;
echo "</br>Price : "." ".$_SESSION['shoppp']['mShop_price'] ;
echo "</br>Product image</br></br>";
echo "</br><img  src='$selimage'/></br>";
echo "<a href='/mvc/?buy=$cartID'><input type='button' value='BUY IT' name=' $cartID'></a></br>";
//echo "</br><input type='submit' value='Buy it'/> ";
} 
?>
</br>
<a href="/mvc/?buy" id="cart">Your Cart</a>
</center>
</div>
<!--  it  will serve  both  for  buy  buttons  and  cart  button, in case  of  Cart button, it  wom't  set a Buyer  to  SQL  as   the  [GET] is  empty-->
<div id='shopcart'>
<center>

<h1  class='boxedshadow'>Check out  Cart</h1>
<!-- START of CART content-->
<div id="shcart1">
<h2>List  of  your  purchases</h2>
<img src='image/cart_logo.jpg' style='width:10%;'class='boxedshadow'/></br>


<?php 
session_start();

//WORKING  
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 




//Start inserting -UPDATING
// WORKING  UPDATE  !!!!!!!!
// UPDATING  the  cart item and  setting status to "OFF"  and  updating  the  info  about  the person who  made  a purchase 

$stmt = $db->prepare("UPDATE mvcShop set mShop_buyer = :buyer,mShop_status=:stat where mShop_id=:uid");
$stmt->bindParam(':uid', $uid);
$stmt->bindParam(':buyer', $buyer);
$stmt->bindParam(':stat',$statt);
$uid = $_GET['buy'];
$buyer= $_SESSION['login'];
$statt='off';
$stmt->execute();
// END  WORKING UPDATE   !!!!!!!


//END   inserting UPDATING




//Dispalying your  cart  item
$res = $db->query("SELECT * FROM mvcShop WHERE /*mShop_id LIKE '{$_GET['shopitem']}' AND */mShop_buyer LIKE '{$_SESSION['login']}'  ");
while ($rowG =$res->fetch())
{
$_SESSION['MYCART'] = $rowG;
$delID=$_SESSION['MYCART']['mShop_id'];
          
$item=$_SESSION['MYCART']['mShop_item'];
$price=$_SESSION['MYCART']['mShop_price'];
echo "<table><tr><td>$item</td><td>$price</td><td style='width:20px;'><a href='/mvc/?buy&delShop=$delID'><img style='width:83%;' src='image/deleteIcon.png'/></a></td>
</tr></table>";

}
echo"<br><a href='/mvc/?myshopp'>Back to Shopping</a>";
?>


</div>
<!-- END of CART content-->












<div id="shcart2" >
</br>
<img src='image/cart.png' style='width:80%;height:40%;' />
</div>

<!--
<div id="shcart3" >ddddddddddd333333</div>-->
</center>
</div>








<?php
//DELETE AND ITEM from cart(NOT DB) if  u  click on red  cross   and  UPDATE status  to ON*****************
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **
// DELETING  ITEM!!!!


if (isset($_GET['delShop'])) {


//!!!!!NOT IMPLEMENTED   =add UPDATING  ;
//$db->exec("DELETE FROM mvcShop WHERE mShop_buyer LIKE '{$_SESSION['login']}' AND  mShop_id LIKE '{$_GET['delShop']}'    ");  //u don't  have  to  delete  from DB, just Update

// add Updating +$id=$_GET['delShop'];

$stmt = $db->prepare("UPDATE mvcShop set mShop_buyer = :buyer,mShop_status=:stat where mShop_id=:uid");
$stmt->bindParam(':uid', $uid);
$stmt->bindParam(':buyer', $buyer);
$stmt->bindParam(':stat',$statt);
$uid = $_GET['delShop'];
$buyer="";//$_SESSION['login'];
$statt='on';
$stmt->execute();
header("Location: http://example2.esy.es/mvc/?buy");




}

//END DELETE THE ITEM------------------------------------------------------------------------------------------------  
?>
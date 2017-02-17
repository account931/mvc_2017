<!-- The  whole   shop  submitted  by  any  user-->
<!-- and  an inputs  to add your  stuff-->
<!-- SQL ALGORYTHM =after  purchase,mShop_status is  set to off (by   default it is  on)(goods  are  displayed , which   has  status  off) +set mShop_Buyer  -->
<div id="myshop" >

<center>
<h1  class='boxedshadow'>Shopping place</h1>


<div id="myshoppadd">
<p>Add your  sale item</p></br>

<form name="ups"   action="" method="post" enctype="multipart/form-data">
Item<input type="text" name="item"/>
Description<input type="text" name="itdesc"/>
Price<input type="text" name="itprice"/></br></br>

<span style="" class="shad">Image </span>   
   <input type="file" name="itImage" width="35px" height="35px";/>
</br></br>

<input type="submit" name ="addIt" value=" &nbsp;&nbsp;Add &nbsp;&nbsp; " id="sendme" style="position=relative; left:55px;" width="35px" height="25px" class="convert">
<input type="button"  value="cancel " id="cancel" style="position=relative; left:55px;" width="35px" height="25px" >

</form>

</div><!--END myshoppadd-->












<!--  All  goods  CART  dispaly----------------------------->
<div id="myshopall">
<!--<p>All users  sales</p>     shop.jpg-->
<img src="image/cart.png" style="width:39%;height:20%;border:0px solid  red;"/></br>
<a href="#" id="addgoods">Add product</a>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
<a href="/mvc/?buy" id="cart">Your Cart</a>

<div style="margin-top:50px;margin-left:25px;">

<?php
// DISPLAY ALL CARTS  FROM DATABASE

include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 



$resGAL = $db->query("SELECT * FROM mvcShop WHERE mShop_status='on' ORDER BY mShop_id DESC  ");
while ($rowG =$resGAL->fetch())



{

$_SESSION['MYSHOP'] = $rowG; // save all DB  salect  to  array
         // Path  is  aved to  variable 
 $cartID=$_SESSION['MYSHOP']['mShop_id'];
 $buyer=$_SESSION['MYSHOP']['mShop_user'];
 $item=$_SESSION['MYSHOP']['mShop_item'];
 $decr=$_SESSION['MYSHOP']['mShop_descript'];
 $price=$_SESSION['MYSHOP']['mShop_price'];
 $Simage=$_SESSION['MYSHOP']['mShop_image'];
$nophoto='imageshop/nophoto.jpg';
if(!empty($Simage)){ $Simage=$_SESSION['MYSHOP']['mShop_image']; }
else {$Simage=$nophoto;}

/* if (!empty($Simage))
{ $Simage=$_SESSION['MYSHOP']['mShop_image'];   }
else {$Simage='imageshop/nophoto.jpg'}*/

echo "<div style='width:17%;height:190px/*15%*/;float:left;border:1px solid black;margin-left:6px;margin-top:2px;' class='boxedshadow'>$buyer</br><center>";
echo "$item</br>";
echo "$decr</br>";
echo "$price</br>";
echo "<img src=' $Simage ' style='width:33px;border-radius:5px;'></br>";
echo "<a href='/mvc/?shopitem=$cartID'>More info</a> </br>";
echo "<a href='/mvc/?buy=$cartID'><input type='button' value='BUY' name=' $cartID'></a></br>";
echo "</center></div>";
}








// END DISPLAY ALL CARTS  FROM DATABASE
?>
</div>

</div><!--"myshopal  DISPLAY ALL  CARTS-->
<!-- END  All  goods  CART  display-->
</center>
</div>

























<!-- Starting PHP Inserting Or  Adding a  new  item  for  sale -->
<?php
//include("config/database.php");
//session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 



//Inserting goods  to  DataBase
if(isset($_POST['item']))
{


// CATALOGUE
$uploaddir = './imageshop/';
$uploadfile = $uploaddir.basename($_FILES['itImage']['name']);



//  Copy  a   file from temporary  catalogue   for files  saving :
if (copy($_FILES['itImage']['tmp_name'], $uploadfile))
{


//  ADD picture and  goods  to  DB--------------------------------
// Path  to  image
$pathMe= $uploaddir."/".$_FILES['itImage']['name']; 



//Start REsizing------------------------
 include('classSimpleImage/classSimpleImage.php');
//http://sanchiz.net/blog/resizing-images-with-php
      $image = new SimpleImage();
       $image->load($pathMe);
      $image->resizeToWidth(150);
      //$image->resize(400, 200);
      $image->save($pathMe);
  
//END RESIZING---------------------------------





$sthI = $db->prepare("INSERT INTO mvcShop (mShop_user, mShop_item, mShop_descript,mShop_price,mShop_image) VALUES (:user, :item, :descr ,:price,:image)");
          $sthI->bindValue(':user' ,$_SESSION['login']);
          $sthI->bindValue(':item',  $_POST['item']);
          $sthI->bindValue(':descr',$_POST['itdesc']);
          $sthI->bindValue(':price', $_POST['itprice']);
          $sthI->bindValue(':image',$pathMe);
        
          $sthI->execute();
// END  ADD  PICTURE  TO DB-----------------------------


/*
 echo "<p style='color:red;'>It has  been  added</p>";


}        // END copy

else {echo"error";}
}  //END ISSET $_POST['item'])) */



echo "<center><h1 style='color:red;font-size:44px;margin: 0 auto;'>UPLOADED SUCCESSFULLY</h1></center>";

echo "</br><a href='http://example2.esy.es/mvc/?myshopp'>
<input type=button value='Back' onclick='history.back()' ;></a>";

/*onclick='window.location = 'index.php?myshopp' ';*/

//rediretect
header("Location: http://example2.esy.es/mvc/?myshopp"); 
exit;


} // END  If  all is  OK
else { echo "<h3>ERROR</h3>"; exit; }

} //  END of  isset  $_POST ['submitGAL']
?>
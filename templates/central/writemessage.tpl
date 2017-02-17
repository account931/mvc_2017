<!-- form  to  write an internal  message  to a  friend-->

<div id='messagewrite' style='color:white;font-size:10px;position:relative;top:3%;/*left:30%;*/height:120px;' >
<center>
<h1 class="boxedshadow" > Write a  message</h1> 

</br></br></br>
<form action="" method="post" >
TO&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="to"  value="<?php  echo $_GET['write']; ?>"/></p>


FROM<input type="text"  name="2"  action=""  value="<?php echo $_SESSION['login']; ?>"/></p>
    <p><textarea rows="5" cols="45" name="textMessage" ></textarea></p>
    <p><input type="submit" value="Send"> 
            </form>
<img src="image/inbox.jpg" style="width:17%;"/>
</center>
</div>






<?php
include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


//IF USER HAS PRINT THE Message
if(isset($_POST['textMessage']))
{






$sthI = $db->prepare("INSERT INTO mvcMess (mvcMess_from, mvcMess_to, mvcMess_mess) VALUES (:from, :to, :mess)");
          $sthI->bindValue(':from' ,$_SESSION['login']);
          $sthI->bindValue(':to',     $_GET['write']);
          $sthI->bindValue(':mess',$_POST['textMessage']);
        
          $sthI->execute();






/*$db->query("INSERT INTO mvcMess (mvcMess_from, mvcMess_to,mvcMess_mess) VALUES ('{$_SESSION['login']}', '{$_GET['write']}' , '{$_POST['textMessage']}'    )"); 
$db->execute();*/

 echo "<p style='color:white;'>SENT</p>";


}  ?>
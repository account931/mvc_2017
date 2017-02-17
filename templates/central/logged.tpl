<!--that  is the  template    being  disaplayed  as  enter  the  login and  password-->
<!--YOUR PERSONAL PAGE DATA (displayed  as  u  just  entered)-->
<!-- Appears  right  after   successful  login-->
<div id='personal'  style='color:white;position:relative;background-color:background: ;'><center>
<!--ALTER--><!--<div style="background-color:#19A3D1;position:absolute;width:99%;height:200px;opacity:20%;"></div>-->
<!--Login image   login7.png-->

<p style='font-size:190%;/*33px;*/' class='boxedshadow'>Welcome  to  your  private  page , <?php echo $_SESSION['login']; ?></p>

<img src="image/login33.png" style='margin-top:4px;;'><!-- width:43%; -->
<!--width:73%;height:19%;margin-top:30px; box-shadow: 10px 10px 5px #888888-->

<!--PREV-->
<!--<p style='font-size:190%;/*33px;*/'>Welcome  to  your  private  page , <?php echo $_SESSION['login']; ?></p>-->

<p style='font-size:26px;'>Your  Profile</p>

<!--<img src="image/profile.jpg" id="profpict" alt="YOU"style='float:left;width:100px;position:absolute;top:11%;left:3%;border-radius: 15px;'/>--> <!--;top:39%;-->

<!--<img src="image/lock.png" id="lock" alt="YOU"style='float:right;width:80px;position:absolute;top:23%;right:2%;width:5%;'/>-->

<p>Your username is <?php echo $_SESSION['user']['mvcUsers_login'] ; ?> </p>






Your password is  <?php echo $_SESSION['user']['mvcUsers_password'] ; ?>
</br>Your name is <?php echo $_SESSION['user']['mvcUser_name']; ?>

</br>Your hobby is <?php echo $_SESSION['user']['mvcUsers_hobby']; ?>
 
</br>Your  e-mail : <?php echo $_SESSION['user']['mvcUsers_email'] ; ?> </br>

</br>Your  city : <?php echo $_SESSION['user']['mvcUsers_city'] ; ?> </br>

</br>Date of  your  registartion  <?php echo $_SESSION['user']['mvcUsers_dateofreg'] ;?>
</br>Date of  your last visit <?php echo $_SESSION['user']['mvcUsers_lastvisit'] ;?>
</br></br>
<?php $id=$_SESSION['login']; ?>
<a  href="/mvc/?edit&editId=<?php echo $id; ?>" style="color:red;"> Edit  Profile</a></br></br>
</center>

</div>



<!--TEXTAREA-->
<!--
<div style='color:white;'><center>
<form action="textarea.php" method="post">
    <p><b>Your Notes:</b></p>
    <p><textarea rows="5" cols="45" name="textarea"></textarea></p>
    <p><input type="submit" value="Сохранить"> 
          <input type="submit" value="Редактировать"></p>
  </form></center></div>-->






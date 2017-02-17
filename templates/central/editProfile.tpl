<!--TO ALLOW REGISTATION AND  NO "X"=go to = extraJs-xzero.js -> add add #reg td  to  the  list -->
<!-- registrarion is  disabled=> go  fix  in myscript.js = table  onclick X.U hava  just to add  selector for XZero  validation  and possibilties to play-->
<!-- THe  originality of  this  entry  memorize  me   of 
Form  that  contains  $_GET array  with  all  of  forms  input  and  save  it  to  mvc_USERS  table   ,  which  is  located  in  subFolder  of  GAllery SQL  (due  to  lack of  SQL  capacity  in the  original   location  )-->



<!-- Checking if Password  and  condrim password  are  not  different.Just copied from REGISTRATION,  not used here-->
<script>
$(document).ready(function(){
    $("#passConf").blur(function(){

//Check  if  empty
if( $(this).val() ) {
//End 
        var1=$("#passFirst").val();   var2=$("#passConf").val();
       if ( var1!=var2  ){
        alert("Passwords  are  diffrent");
        $("#regSend").prop("disabled", true); }// disables  the  submit button  if  passwords  are different 
                                                  else{$("#regSend").prop("disabled", false);}//enables  if  OK  and  the  same

   } //End  Check if  empty
    });
});
</script>
<!-- END  Checking if Password  and  condrim password  are  not  different-->






















<?php
// Extracting data  for  updating********************************************************

include("config/database.php");
session_start();

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

$resW = $db->query("SELECT* FROM mvcUsers WHERE mvcUsers_login LIKE '{$_GET['editId']}'    /* ORDER BY mWall_id DESC*/");
while ($row =$resW->fetch())
{


$_SESSION['edProfile']=$row;
$name=$_SESSION['edProfile']['mvcUser_name'];
$hobby=$_SESSION['edProfile']['mvcUsers_hobby'];
$mail=$_SESSION['edProfile']['mvcUsers_email'];
$city=$_SESSION['edProfile']['mvcUsers_city'];
$phone=$_SESSION['edProfile']['mvcUsers_phone'];
$birth=$_SESSION['edProfile']['mvcUsers_birth'];

}




?>























<center>
<div id="editProfile">
<p>Edit Your  Profile</p>


<form action="#" method="post"> <!--registration.php-->
<table id="editProfile">
<!--<tr><td>Login:</td> <td><input type="text" name="login" required ></td></tr>-->

<!--
<tr><td>Password</td> <td><input type="password" name="password" id="passFirst"  required></td></tr>
<tr><td>Comfirm Password</td> <td><input type="password" name="password2" id="passConf" required></td></tr>-->


<tr><td>Name: </td> <td><input type="text" name="name" required value="<?php echo $name; ?>"></td></tr>


<tr><td>Hobby: </td> <td><input type="text" name="hobby" required value="<?php echo $hobby; ?>">
</td></tr>

<tr><td>E-mail:</td> <td><input type="text" name="email" required value="<?php echo $mail; ?>" >
</td></tr>



<tr><td>City</td> <td><input type="text" name="city" value="<?php echo $city; ?>"></td></tr>

<tr><td>Phone</td> <td><input type="text" name="phone"  value="<?php echo $phone; ?>" ></td></tr>

<tr><td>Birhdate </td> <td><input type="date" name="date" ></td></tr>

<tr><td></td> 
<td><a href="/mvc/?login"><input type="button" value="Cancel"></a>
<input type="submit" value="Submit" id="regSend" name="sendUpdate"></td></tr></table>
</form>
</div>

</center>











<?php
//Updating  data 
//Start inserting -UPDATING
// WORKING  UPDATE  !!!!!!!!

if(isset($_POST['sendUpdate'])){
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 
$stmt = $db->prepare("UPDATE mvcUsers set mvcUser_name = :buyer,mvcUsers_hobby=:stat where mvcUsers_login=:uid");
$stmt->bindParam(':uid', $uid);

$buyer=$_POST['name']; // new  name  input  to  variable
$stmt->bindParam(':buyer', $buyer);

$statt=$_POST['hobby']; // new  hobby  input  to  variable
$stmt->bindParam(':stat',$statt);

$uid = $_GET['editId'];// Id  of  the  user who  is  editing (passed in Get parametr)


$stmt->execute();
// END  WORKING UPDATE   !!!!!!!
 header("Location: /mvc/?login");
}
?>






















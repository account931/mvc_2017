<!--TO ALLOW REGISTATION AND  NO "X"=go to = extraJs-xzero.js -> add add #reg td  to  the  list -->
<!-- registrarion is  disabled=> go  fix  in myscript.js = table  onclick X.U hava  just to add  selector for XZero  validation  and possibilties to play-->
<!-- THe  originality of  this  entry  memorize  me   of 
Form  that  contains  $_GET array  with  all  of  forms  input  and  save  it  to  mvc_USERS  table   ,  which  is  located  in  subFolder  of  GAllery SQL  (due  to  lack of  SQL  capacity  in the  original   location  )-->



<!-- Checking if Password  and  condrim password  are  not  different-->
<script>
$(document).ready(function(){
    $("#passConf").blur(function(){

// Start Check  if  empty ,  and  checking  if  password  and  password  confirmation  matching  each  other 
if( $(this).val() ) {
//End 
        var1=$("#passFirst").val();   var2=$("#passConf").val();
       if ( var1!=var2  ){
       $("#passConf").css("background","red"); alert("Passwords  are  diffrent");
        $("#regSend").prop("disabled", true); }// disables  the  submit button  if  passwords  are different 
                                                  else{$("#regSend").prop("disabled", false);
                                                  $("#passConf").css("background","white");}//enables  if  OK  and  the  same

   } //End  Check if  empty
    });
});
</script>
<!-- END  Checking if Password  and  condrim password  are  not  different-->









<div id="register"><center>
<p>REGISTRATION FORM</p>
</center>



<form action="registration.php" method="post">
<table id="reg"><tr><td>Login:</td> <td><input type="text" name="login" required></td></tr>

<tr><td>Password</td> <td><input type="password" name="password" id="passFirst"  required></td></tr>
<tr><td>Comfirm Password</td> <td><input type="password" name="password2" id="passConf" required></td></tr>


<tr><td>Name: </td> <td><input type="text" name="name" required></td></tr>


<tr><td>Hobby: </td> <td><input type="text" name="hobby" required>
</td></tr>

<tr><td>E-mail:</td> <td><input type="text" name="email" required>
</td></tr>



<tr><td>City</td> <td><input type="text" name="city"></td></tr>

<tr><td>Phone</td> <td><input type="text" name="phone"></td></tr>

<tr><td>Birhdate </td> <td><input type="date" name="date"></td></tr>

<tr> <td>Your  photo</td> <td><input type="file" name="profPhoto"></td></tr>

<tr><td></td> <td><input type="reset" value="Reset"><input type="submit" value="Submit" id="regSend"></td></tr></table>
</form>





<!--RESERVED  VERSION-->
<!--<form action="registration.php" method="post">
<span class="inp">Login: </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="login">
<br/>
<span class="inp">Password</span><input type="password" name="password">
</br>

<span class="inp">Name: </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name"></br>

<span class="inp">Hobby:</span>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hobby">
<br>
<span class="inp">E-mail:</span> &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email">
<br>
<span class="inp">Birhdate </span>&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="date"></br>
<input type="submit" value="Submit" id="regSend">
</form>-->
</center>
</div><!--END  id  register-->
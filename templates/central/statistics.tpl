<div>
<center>
<h1 class="boxedshadow" > Statistics</h1> 





<!--Injected-->
<script> //click on arrow  down to  see  UserAgent  info, INVERSE arrow on clicking   //&#9660
$(document).ready(function(){  
    $(".imgClick").click(function(){         
        $(this).next("p").toggle(300); //open  and closes
             // shifting tiangles  with HTML Entity http://www.fileformat.info/info/unicode/char/25b2/index.htm
                 if($(this).text()=="\u25BC"){$(this).html("\u25B2"); }  else {$(this).html("\u25BC");}
    });
});
</script>
<!-- End  Injected-->




<!--Injected-->
<style>
.imgClick:hover{cursor:pointer;color:red;}// arrow  down  style
.imgClick{padding-left:65px;}
.hiddennn{display:none;}
</style>
<!-- End  Injected-->







<!-- admin part  for  viewing log  for  anyone  having password-->


<?php

//$_SESSION['authMVC']=true;   BUGGG

if(!isset($_SESSION['authMVC'])){ ?>    


<!------------------------------------------------If not authorized---------------------------------------->


<img  src="image/stat.jpg"  alt="stat"/></br>
<p>To view statistics  enter admin login/password </p>    <span class="imgClick">&#9660;</span>
 
<!--Injected-->
<p class="imgClick">&#9660;</p> 

<p style="display:none;font-size:46px;" class="hiddennn">NO ACCESS  GRANTED</p>


<?php
//shows  the  number  of  vistits  from mvcStats  DataBase , shows  last entry count ++
echo "visited ";
RecordStatisticsSQL::ShowVisitNumber();
echo " times";
?>

</br></br>
<form action="" method="post">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login:<input type="text" name="login1IP"  placeholder=" admin login" required  >
</br></br>
Password:<input type="password" name="pass1" placeholder=" admin password" required >
<br><br>
<input type="submit" value="Submit">

</form></br>


<!------------------------------------------------END If not authorized---------------------------------------->
<?php
// else  password is  correct
 } else {  
?>






<!------------------------------------------------START if  authorized--  onchange="this.form.submit();-------------------------------------->
</br><a style="color:red;border:0px solid  red;padding:4px;" href="/mvc?statistics&logoutIP=1">Log out</a></br>
<form action="" method="get">
   <select id="switchAjax" name="switchAjax" > 
      <!-- <option selected disabled>Choose here</option>-->
      <option <?php if ($_GET['switchAjax'] == '1') { ?>selected="true" <?php }; ?>value="1">Normal</option>
      <option <?php if ($_GET['switchAjax'] == '2') { ?>selected="true" <?php }; ?>value="2">Ajax</option>
      <!--<option value="2">Ajax</option> -->
    </select> 
    <input type="submit" name="statistics" value="Go"/>
</form>

<?php
//switching between  SELECT OPTION. Had  to  reneme  butmit  button name  to  same  id  as  in CONTROLLER $_GET[''],  as  after  submitting  the  $_GET  is  lost
// If  select  normal=shows normal  +txt  , if  select  ajax== shows  ajax  first
if(isset($_GET['switchAjax'])) { /*$_GET['statistics']=1;*/  if($_GET['switchAjax']==2)     { echo '<p style="color:red;">AJAXED!!!!!!!!</p><H1 class="boxedshadow">Ajax Responses!!!</h1><div id ="displayDiv"></div>'; }         }




?>
<!-----------------------------------------------------------------------------------Display log----------------------------------------------------------->


<?php
//echo file_get_contents( "ipList.txt" ); // get the contents in REVERSE , and echo it out
//doing  reverse-temporary  disabled,trying  to  ressigned  to AJAX
$file = file("ipList.txt");
$file = array_reverse($file);
foreach($file as $f){
    echo $f."<br />";}




//below  works  but  not  making reverse  list*********
/*foreach (glob( "ipList.txt") as $filename) {
    echo nl2br(file_get_contents($filename));
    echo "<br></br>";
}*/
// END below  works  but  not  making reverse  list-----------

?>


<!---------------------------------  for  ajax  htmling--------------------------------------------------->
<!-----------------  Logic  of  ajaxing   is located   in  Ajaxes/jscript/ajaxStatictics.js , USES  REVERSED ARRAY!!!!!  ADD this  JS Ajaxed  script----------> 
</br></br></br>
<H1 class="boxedshadow">Ajax Responses</h1>
<div id ="displayDiv"></div> 
<!-- END  for  ajax  htmling-->
<!--<ul></ul>--> <!--  Ajax   Ul  without  PHP  part-->

<?php
}//else
?>
<!-- END  Display  comment-->












<?php
//checking password
if(isset($_POST['pass1'])){
   if   ($_POST['login1IP']=='account931' && $_POST['pass1']=='vasya') 
 {$_SESSION['authMVC']=true;echo'true';header ('Location: http://example2.esy.es/mvc?statistics');
                                    } else {echo'<p style="color:red;">Failed</p>';}

} // End  if(isset($_POST['pass1']))


//Log OUT
if(isset($_GET['logoutIP'])){
/*session_destroy();*/unset($_SESSION['authMVC']); header ("Location: http://example2.esy.es/mvc?statistics");
}

?>













































</div>
</center>
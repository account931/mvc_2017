<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<?php
// LOGIN PROCEDURES  +  Recording  date  and  time  of  visit (temporary  moved  to index.php when u  log out)
// It  handles  login input  and  controls  password  coherence .If   the  input  is  great ,$_SESSION['login'] is  greated  with  the  name of  the  user taken from  the  DataBase.
// The   condition of  the  $_SESION['login'] (whether  it  exsits  or  not)  take  charge  of  letting or  not  user  to  get   to personal option. if(isset($_SESSION))  contains  all the  rest of  subcontrollers  and  their  triggering  is  only possible  when the  $_SESSION is  set  


// IF  u  put  a wrong  combination of login and password, this  will be  saved  to   WrongPassword.txt

include("config/database.php");
session_start();



//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 





//
/*if (isset($_POST['login1']))
      {*/

        //  $res = $db->query("SELECT * FROM mvcUsers WHERE mvcUsers_login = '{$_POST['login1']}' AND mvcUsers_password = '{$_POST['pass1']}'"); //RETURN if  crashes,  1st variant 

          // Start  SQL Injection prevent section , instead  of  one  above , was  commented. WORKS!!!!!!!
          $res =$db->prepare("SELECT * FROM mvcUsers WHERE mvcUsers_login=:login AND mvcUsers_password =:pass ");
          $res->bindValue(':login',$_POST['login1']);
          $res->bindValue(':pass',$_POST['pass1']);
          $res->execute();
          // END SQL Injection prevent , was  commented------

          $row = $res->fetch();


          if ($row != null)
          {
             $_SESSION['user'] = $row;
             $_SESSION['login']=$row['mvcUsers_login'];
              //print_r( $_SESSION['user']);
//echo "</br>accepted";
//echo "</br>WELCOME USER"." ".$_SESSION['login'];



//Start Record  last visit  to DB (WORKS)*************************************************************
//echo '<script>alert("True");</script>';
/*$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 
$stmt = $db->prepare("UPDATE mvcUsers set mvcUsers_lastvisit = :buyer where mvcUsers_login=:uid");
$stmt->bindParam(':uid', $uid);
$stmt->bindParam(':buyer', $buyer);    date_default_timezone_set('Europe/Kiev');
$buyer=date("Y-m-d")." ".date("h:i:sa");
$uid = $_SESSION['login'];
$stmt->execute();*/
//END  Record  last visit  to DB---------------------------------------------------------------

    header("Location: /mvc/?login");




/*header("Location: /mvc/?logged");*/
}  

// if  u print  wrong  password
else { $link='/mvc';
      echo"<center><p style='font-size:55px;color:red'>YOU FAILED</p><p>wait  5  seconds</p><p id='failedGoBack'><img src='image/load.gif'/></p></center>";
      echo "<script> // display URL back in  4  seconds
                  function ShowLinkDelayed() {
                  setTimeout(function(){ $('#failedGoBack').html('<a href=$link>Try again</a>');   }, 5000);}
                  ShowLinkDelayed();                                     
            </script>";// end  echo
     // sleep(3);
     // header("Location: /mvc");


//START Wrong Password Recording  to txt
date_default_timezone_set("Europe/Kiev");
$userIN=$_POST['login1'];
$userPass=$_POST['pass1'];
$ip=$_SERVER['REMOTE_ADDR'];//ip adress
$fileIP = "WrongPasswords.txt";
$date=date("d.m.y.H:i");
$Saved_File = fopen($fileIP, 'a');
fwrite($Saved_File,$userIN.' '.$userPass.'--> '.$date.'----- '.$ip."\r\n\n"); // add a new line to the  string :)
fclose($Saved_File);
//END WrongPAssword


}
//  END  Else  wrong  Password  or  login
             //header("Location: /");
           //  die;} 
    

//}
//





?>
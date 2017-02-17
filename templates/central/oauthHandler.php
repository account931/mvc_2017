<?php
error_reporting(0);
f

//ini_set('allow_url_include', '1');
//allow_url_include=1;


include('/home/u341473096/public_html/mvc/config/database.php');
// This  ia  handler  , that  used  for  ajax request  from oauth.tpl(i.e  vk). It receives  js  vars with  name  and  surename (if  user  auth is  OK), get  to php  and  save  to  SQL;
// add here: pdo  connection+$-GET[] to  var+ Insert into();

echo "Ajax Response  is  there =>".$_GET['phpFirstName'];
echo "</br>Ajax Response2  is  there =>".$_GET['phpLasttName'];

$name="1"; //$_GET['phpFirstName'];
$surename="2";//$_GET['phpLasttName'];

//Full  name  +surename
//$Fio=$_GET['phpFirstName']." ".$_GET['phpLasttName'];


//adding  to  SQL
session_start();
//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD);
date_default_timezone_set('Europe/Kiev');//Time  zone;
$date=date("Y-m-d")." ".date("h:i:sa");

echo "<br> Db  connected</br>";


//checking if  it  is a   first  visit; Temporary commented  may  return later;
/*$res = $db->query("SELECT * FROM mvcVK WHERE vk_firstName = '{$$_GET['phpFirstName']' AND vk_lastName='{$_GET['phpLasttName']}' ");
   $row1 = $res->fetch();
      if ($row1 != null) 
             {echo"Name exists";
              echo "<p style='font-size:38px;color:red;'><a  href='/mvc/?tiggerRegister'>Known user</a></p>";
             } 


else {*/

// Start save  to  SQl;
$sth = $db->prepare("INSERT INTO mvcVK` (vk_firstName,vk_lastName,vk_visitDay) VALUES (:logins, :passs, :date)");
          $sth->bindValue(':logins',$name);
          $sth->bindValue(':passs',$surename);
          $sth->bindValue(':date',"1000");
         if ( $sth->execute())  { echo "true INSERTED"; } else{echo "false  INSERTED";}

if ($sth){echo"<br>SQL VK  OK";}  else{echo"<br>SQL  failed";}
// End  save  to SQL;



    //RETURN if  use checking 1st  or  not  }//  end  ELSE  of  if($row1 != null) ;


?>
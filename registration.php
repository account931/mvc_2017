<?php
//REGISTARTION
// TEMPORARY:  registration is   cut  in extraJS  folder . It  affects   in creating symbol "x"  and  deleting the  clicked  TD


include("config/database.php");
//session_start();



//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 


//IF USER HAS PRINT THE LOGIN
if(isset($_POST['login']))
{

/*date_default_timezone_set('Australia/Melbourne');
$date = date('m/d/Y h:i:s a', time());*/
date_default_timezone_set('Europe/Kiev');
$date=date("Y-m-d")." ".date("h:i:sa");




//Checking if  login yet  exists

$res = $db->query("SELECT * FROM mvcUsers WHERE mvcUsers_login = '{$_POST['login']}' ");
   $row1 = $res->fetch();
      if ($row1 != null) 
{echo"Name exists";
echo "<p style='font-size:38px;color:red;'><a  href='/mvc/?tiggerRegister'>CHOOSE OTHER NAME</a></p>";
} 
else {
//END   CHECKING if  login yet exists   and  start  saving  if  not 












//  NOT WORKING YET!!!!!!  adds  to  Dbase  path  to  image  folder  but   without  no name 
// TESTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//  Section for  tryng to add  avatar image  to database.NOT IMPLEMENTED YET!!!!
//Shoul  check if  photo  is  submitted  and  if not  add image  from  shop = NO IMAGE ===actually not  required -it would insert void  succesfully 
// START Avatar  image****************************************************************************

//if(isset(S_POST['profPhoto'])){ } //  if  user loaded  photo // NOT USED SO  far!!!!!!
$uploaddir = './ImagesAll/imagesProfile/';   //
$uploadfile = $uploaddir.basename($_FILES['profPhoto']['name']);
//$imageLoaded=$uploadfile ; //  to  form['GET'] URL LINK // NOT IN USE !!!!
$pathMe= $uploaddir."/".$_FILES['profPhoto']['name']; //  erase / ???
//$pathMe=$uploadfile;
//$pathMe = substr($pathMe, 1);//ROMOVE  1  element ".";

//  Copy  a   file from temporary  catalogue   for files  saving :
if (copy($_FILES['profPhoto']['tmp_name'], $uploadfile))
{

        
//Start REsizing------------------------
//http://sanchiz.net/blog/resizing-images-with-php
 /*include('classSimpleImage/classSimpleImage.php');
      $image = new SimpleImage();
       $image->load($pathMe);
      $image->resizeToWidth(150);
      //$image->resize(400, 200);
      $image->save($pathMe);*/
  
//END RESIZING---------------------------------

}   else {echo "No access  to load  photo";}

// END  ADD  PICTURE  TO DB-----------------------------
// END  AVatar  image ------------------------------------------------------------------------------------------------














//START INSERTING VALUES
$sth = $db->prepare("INSERT INTO mvcUsers (mvcUsers_login, mvcUsers_password, mvcUsers_birth,mvcUsers_hobby,mvcUsers_dateofreg,mvcUser_name,mvcUsers_email,mvcUsers_city,mvcUsers_phone,mvcUsers_image) VALUES (:logins, :passs, :birth, :hobby, :dateofreg, :name, :email, :city , :phone,:image)");
          $sth->bindValue(':logins',$_POST['login']);
          $sth->bindValue(':passs',$_POST['password']);
          $sth->bindValue(':birth',$_POST['date']);
          $sth->bindValue(':hobby',$_POST['hobby']);
          $sth->bindValue(':dateofreg',$date);
          $sth->bindValue(':name', $_POST['name']);
          $sth->bindValue(':email',  $_POST['email']);
          $sth->bindValue(':city',     $_POST['city']);
          $sth->bindValue(':phone', $_POST['phone']);
          $sth->bindValue(':image',$pathMe);
          $sth->execute();


// CREATE  TABLE  FOR  EACH USSER FOR  STORAGE
// создаем базу данных и таблицу  gb
	/*$link1=mysql_connect(MYSQL_HOST,  MYSQL_LOGIN, MYSQL_PASSWORD) or die("Нет соединения с MySQL сервером!");
	//mysql_query ("CREATE DATABASE IF NOT EXISTS ".DATABASE) or die ("Не могу создать базу данных!");
	mysql_select_db(MYSQL_DATABASE) or die("Нет содениения с требуемой базой данных!");
	mysql_query ("CREATE TABLE IF NOT EXISTS MVC  (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR (250), votes INT)") or die ("Не могу создать таблицу vote.");*/
// END  CREATE  TABLE



/* IT ALSO WORKS
$db->query("INSERT INTO mvcUsers (mvcUsers_login, mvcUsers_password) VALUES ('{$_POST['login']}', '{$_POST['password']}' )"); */




echo "OK </br>";
echo "SUCCESSFUL</br>";
echo "<p style='font-size:38px;color:red;'><a  href='/mvc'>YOU MAY ENTER NOW</a></p>";
 //header("Location: /mvc");

}  // END OF ELSE (That checks  if  login yet  exists and  INSERT VALUES)


} //END IF ISSET login1


?>
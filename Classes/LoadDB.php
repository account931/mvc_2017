<?php


class LoadDB{


// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **                                                                                  **
//Start Function  to  dispaly  users  list in left  column ----------------------------------------------------------------------------------------
function getLeftList(){

//WORKING
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

$res = $db->query("SELECT * FROM mvcUsers ");
while ($row =$res->fetch())
{
echo "<a href='/mvc/?user={$row['mvcUsers_login']}'><p><!--<span>User : &nbsp;</span>&nbsp;-->
<img src='image/profile.jpg' alt='YOU' style='width:10px;margin-top:0px;'/>
{$row['mvcUsers_login']} </p></a>";

}

}
// END  function Function  to  dispaly  users  list in left  column **********************************************************************************
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************






















//end  Class

}











?>
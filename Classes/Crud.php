<?php
// Class   for CRUD  nOT USED ANYWHERE!!!!!!!
//Comment  this  function in index.php, add "require"  and  use  $get = new GetTemplateClass() $get->GetTemplate($);

class Grud
{





// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// ** 

static  function UpdateMvc($table,$who,$subj,$where){  //(mvcShop,mShop_buyer,mShop_status,mShop_id)
//Start inserting -UPDATING



$stmt = $db->prepare("UPDATE $table set $who = :buyer,$subj=:stat where $where=:uid");
$stmt->bindParam(':uid', $uid);
$stmt->bindParam(':buyer', $buyer);
$stmt->bindParam(':stat',$statt);
$uid = $_GET['buy'];
$buyer= $_SESSION['login'];
$statt='off';
$stmt->execute();
// END  WORKING UPDATE   !!!!!!!


//END   inserting UPDATING


}//  end  function

// **                                                                                  **
// ** 
// **************************************************************************************
// **************************************************************************************
}//End  Class
?>















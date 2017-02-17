<?php

// This  Class is  not  used  so  far , but  100  working 
//returns  the  real  IP  , even if  used  proxy  server 
//can be  used  like  below
/*include('GetUserIP.php');
$d=new GetUserIP;
$e=$d->getVisitIP();
echo $e;
or GetUserIP::getVisitIP();  */


class GetUserIP  {



// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **                                                                                  **


 public  function getVisitIP() {

 $ip = "0.0.0.0";
    if( ( isset( $_SERVER['HTTP_X_FORWARDED_FOR'] ) ) && ( !empty( $_SERVER['HTTP_X_FORWARDED_FOR'] ) ) ) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];

    } elseif( ( isset( $_SERVER['HTTP_CLIENT_IP'])) && (!empty($_SERVER['HTTP_CLIENT_IP'] ) ) ) {
        $ip = explode(".",$_SERVER['HTTP_CLIENT_IP']);
        $ip = $ip[3].".".$ip[2].".".$ip[1].".".$ip[0];

    } elseif((!isset( $_SERVER['HTTP_X_FORWARDED_FOR'])) || (empty($_SERVER['HTTP_X_FORWARDED_FOR']))) {
        if ((!isset( $_SERVER['HTTP_CLIENT_IP'])) && (empty($_SERVER['HTTP_CLIENT_IP']))) {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
    }
    return $ip;
}

// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************











} //  end  class

?>
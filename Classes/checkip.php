<?php
// This  file  can be  erased, used  just  for  class  checking

include('GetUserIP.php');
$d=new GetUserIP;
$e=$d->getVisitIP();
echo $e;


?>
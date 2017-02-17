<?php
//supposed  to  be  used  in mymp3.tpl
// it  makes  sure   the  downloads  of  mp3  happens not  playing  on-line as  a  non desired 

/*It  downloads  from this  LINK   <a href="http://example2.esy.es/download/downloadmp3.php?file=DKay_Honey.mp3" ">Скачать PHP version</a>*/

$file = $_GET['file'];
header ("Content-type: octet/stream");
header ("Content-disposition: attachment; filename=".$file.";");
header("Content-Length: ".filesize($file));

// My add
header("Content-Type: application/mp3");

readfile($file);
exit;
?>
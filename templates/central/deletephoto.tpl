<?php

// START  DELETE A  PICTURE from Gallery (gallery.tpl)******

$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

$db->exec("DELETE FROM mvcGallery WHERE mvcGal_user LIKE '{$_SESSION['login']}' AND  mvcGal_image LIKE '{$_GET['id']}'    ");
// END DELETE  A  PICTURE ---------




//Redirect
header( 'Location: /mvc/?mygallery', true, 303 );
?>

<script language="JavaScript" type="text/javascript">
function changeurl(){eval(self.location="http://example2.esy.es");}
window.setTimeout("changeurl();",3000);
</script>
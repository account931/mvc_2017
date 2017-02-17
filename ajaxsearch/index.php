<?php
date_default_timezone_set("Europe/Kiev");
$ip=$_SERVER['REMOTE_ADDR'];//ip adress
$fileIP = "ipList.txt";
$date=date("d.m.y.H:i");
$Saved_File = fopen($fileIP, 'a');
fwrite($Saved_File,$date.'----- '.$ip."\r\n\n"); // add a new line to the  string :)
fclose($Saved_File);
?>

<html>
<head>


<style>
body {background-color:#F5F5F0;}
</style>
</head>
<body>

<meta charset="utf-8">
<script>
function showResult(str) {
  if (str.length==0) { 
    document.getElementById("livesearch").innerHTML="";
    document.getElementById("livesearch").style.border="0px";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState==4 && xmlhttp.status==200) {
      document.getElementById("livesearch").innerHTML=xmlhttp.responseText;
      document.getElementById("livesearch").style.border="1px solid #A5ACB2";
    }
  }
  xmlhttp.open("GET","livesearch.php?q="+str,true);
  xmlhttp.send();
}
</script>
<title>Search  with Ajax Technology</title>
</head>
<body>
<center>
<p style="font-size:49px;font-weight:800;margin-bottom:10px;" >Waze Database </p>
<p style="font-size:34px;margin:4px;" >Search The Names You Like Most</p>
</center>
<form>
type the name<input type="text" size="30" onkeyup="showResult(this.value)">
<div id="livesearch"></div>
</form>

</body>
</html>
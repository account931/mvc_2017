<div>
<center>
<h1 class="boxedshadow" > Trace your  IP</h1> 

<p id="iphidden" style="display:none;font-size:43px;cursor:pointer;">
<img  src="image/ipPREV.jpg" style="width:15%;border-radius:3px;" class="ipIMG"  />
<?php 
  $ip=$_SERVER['REMOTE_ADDR'];  //  real  ip  to  variable
 echo "</br>Your Ip  is ".$ip."</br>";
 echo " Web page IP  is " .$_SERVER['SERVER_ADDR'];  
  
 echo "</br>Web-server - ".$_SERVER['SERVER_SOFTWARE']."</br>";
 echo "Server Port - ".$_SERVER['SERVER_PORT']."<br />";
 echo "History ". $_SERVER['HTTP_REFERER']."</br>";
 echo "Language: ".$_SERVER['HTTP_ACCEPT_LANGUAGE']."</br>";
 echo "Your  software: ".$_SERVER['HTTP_USER_AGENT'];
?>
</p>

<!-- Visible  at once  image-->
<p style="cursor:pointer;"><img  src="image/ip.jpg" style="width:40%;" class="ipIMG"  style="cursor:pointer;"/>
</p>

<center></div>

<script>
$(document).ready(function(){
    $(".ipIMG").click(function(){
        $("#iphidden").toggle(1000);
    });
});
</script>
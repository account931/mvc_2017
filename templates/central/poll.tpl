<center>
<?php
//This uses  poll_vote.php(located in root folder)   with  $_GET['vote'] in URL, that  passes  value  u've  selected;
//Instruction how  to  add more  vote  values  are  in root/poll_vote.php;
?>
<div style="height:9px;color:white;"></div>
<h1  class='boxedshadow'>On-line  vote</h1>
<div id="poll" style="color:white;border: solid black 0px;width:80%;">
<img src="image/vote1.jpg" style="height:13%;"/>
<!--<img src="image/vote3.png"
style="width:90%;height:10%;"/>-->
<h3 style="font-size:29px;">Do you like your Job</h3>
<form>
<table><tr><td>Yes:</td><td>
<input type="radio" name="vote" value="0" onclick="getVote(this.value)"></td></tr>
<tr><td>No:</td><td>
<input type="radio" name="vote" value="1" onclick="getVote(this.value)"></td></tr>
<tr><td>50x50:</td><td>
<input type="radio" name="vote" value="2" onclick="getVote(this.value)"></td></tr></table> <!--  my  added  value-->
</form>

<p onclick="getVote(this.value)" style="margin-top:28px;"><a href="#"> View RESULTS</a></p>


<script>
function getVote(int) {
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState==4 && xmlhttp.status==200) {
      document.getElementById("poll").innerHTML=xmlhttp.responseText;
    }
  }
  xmlhttp.open("GET","poll_vote.php?vote="+int,true);
  xmlhttp.send();
}
</script>


</div>
</center>
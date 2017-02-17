<!--it  plays  mixes, but  originally  they  NOT located in MVC folder  but  in http://example2.esy.es/finalmp3/TEST_Final.mp3-->


<!DOCTYPE html>
<html>
<head>
<title>Records</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
$('#track').on('click', function () {  
$('#track').fadeToggle("slow");
$('#show').show(3000);
//$('#show').hide(12000);
}); 
//
$('#show').on('click', function () {  
$('#show').fadeToggle("slow");
$('#notification').show(4000); //show  and  hide  notification
$('#notification').hide(3000);
 });
//
});
</script>
<style>
body {
    background-color: white;
}
h1 {
margin-bottom:25px;
  
   
} 
.styleme {-webkit-box-shadow: 10px 6px 71px 19px rgba(0,0,0,0.91);
-moz-box-shadow: 10px 6px 71px 19px rgba(0,0,0,0.91);
box-shadow: 10px 6px 71px 19px rgba(0,0,0,0.91);}
</style>
</head>
<body>
<center>
<h1  class='boxedshadow'>My  music</h1>
<H1> Drum'n'bass Audio Compilation (12 minutes)</H1>

<div style="position:absolute ;top:22%;left;0">
<button  id ="track"  type='button' style='background-color:orange;'>Бонус</button>
</div>



<img src="http://img14.deviantart.net/cbd5/i/2010/186/f/8/i_love_drum_and_bass_by_deyurus22.jpg" style="width:450px;"/></br>



<!------------------------------FIRST LINE---------------------->
<!--1st embedded-->
<audio class="styleme" width="320" height="240" controls>
  <source src="http://example2.esy.es/finalmp3/TEST_Final.mp3" type="audio/mp3">
</audio>
</br></br>
</br>





</br><!--
<embed src="/finalmp3/TEST_Final.mp3" autostart=false loop=false></br>-->

<a href="http://example2.esy.es/mvc/downloadmp3.php?file=http://example2.esy.es/finalmp3/TEST_Final.mp3" >Direct Link to download</a>
<p>Tracklist</p>
<p>1.D. Kay - Honey (With Epsilon) (Feat. MC Verse) (00.00-00.00)</br>
2.Ed Rush & Optical-Chub Rub (00.00-00.00)</br>
3.Bjork- Hidden Places ( Evol Intent Remix)(00.00-00.00)</br>
4.Something For The Dancefloor(Stakka & Skynet Remix)(00.00-00.00)</br>
5.Beautiful Morning (Black Sun Empire Remix)(00.00-00.00)</br>
6.Ed Rush & Optical - Pacman (Ram Trilogy Remix)(00.00-00.00)</br>
7.Rawthang feat Kari Rueslatten - Scorned (00.00-00.00)</br>
8.Black Sun Empire-Crash Bunny(Subsonik Remix) (00.00-00.00)</br>
</p>
<!-------------------------END   FIRST LINE---------------------->

<hr  style="width:100%;height:9px;color:black;">
</br></br>



<!-----------------------Second LINE------------------->
<h1> V.A mainstream Audio</h1>  

<audio class="styleme" width="320" height="240" controls>
  <source src="/finalmp3/Part1_REPRESS.mp3" type="audio/mp3">
</audio>
</br></br>
<a href="http://example2.esy.es/finalmp3/downloadmp3.php?file=Part1-REPRESS.mp3" >Direct Link to download</a>
<p>Tracklist</p>
<p>
1.PvD-For an Angel.</br>
2.B.Benassi-Every single day.</br>
3.Pakito</br>
4.Aligator </br>
5.PvD-Let Go </br>
6.D.Guetta-The world is mine </br>
7.Morandi-Angels</br>
8.ATB- The summer </br>
9.R.Sunchase-Lost </br>
10.B.Bennasi-Satisfaction </br>
11.Panjabi MC's </br>
12.Blank and Jones- Mind of wonderful  </br>
13.Armin van Buuren- In and out of love 
</p>
</br></br></br></br></br></br>
<!-------------------------END   SEcond LINE------------------->

<hr  style="width:100%;height:9px;color:black;">
</br></br>



<!--------------3rd LINE=Crystalline------------------->
<h1>Crystalline Dnb</h1>  
<p> 1.Noisia & Hybris - Crystalline (00.00-00.00)</br>   2.Ed Rush & Optical - Chubrub (00.00-00.00) </br> 3.Sunchase - As We Look (Teddy Killerz & Malk Remix)(00.00-00.00)  </br>
4.Subwave � High Hopes (00.00-00.00) </br> 5.Rawtekk_-No_More_Vaccine_(Mefjus_Remix) (00.00-00.00)</br> 6.Rawtekk_-_Snowflakes_Rawtekk_Neuropop_VIP (00.00-00.00)
</p>

<audio class="styleme" width="320" height="240" controls>
  <source src="	/finalmp3/crystalline931.mp3" type="audio/mp3">
</audio>
</br></br>
<a href="http://example2.esy.es/finalmp3/downloadmp3.php?file=crystalline931.mp3" >Direct Link to download</a>

<!--------------End   3rd LINE=Crystalline------------------->




<hr  style="width:100%;height:9px;color:black;">
</br></br>





<!--------------4rd LINE=Logic  Audio------------------->
<h1>Unknown</h1>  

<audio class="styleme" width="320" height="240" controls>
  <source src=".mp3" type="audio/mp3">
</audio>
</br></br>
<a href="http://example2.esy.es/finalmp3/downloadmp3.php?file=NAMEHERE.mp3" >Direct Link to download</a>

<!--------------End   4rd LINE=Logic  Audio------------------->








</center>


<!--Hidden message  on click -->
<div id='show' style ="position:absolute; display:none; top:22px;left:1%;"> 

<?php  echo "Ваш IP  is " .$_SERVER['REMOTE_ADDR'];  ?>
<p>Заявка </p>
<p>Фамилия<input type="text" /></p>
<p><button type="button">Я хочу на море </button></p>


 </div>
<!--END  HIDDEN MESSAGE -->
<span id='notification' style='display:none; font-size:28px;color:red; width:150px;position:absolute;  top:140px;'>Спасибо,за Вами    </br >уже  выехали  </span >











<!--test Google player-->
<embed type="application/x-shockwave-flash" flashvars="audioUrl=http://example2.esy.es/finalmp3/TEST_Final.mp3" src="http://www.google.com/reader/ui/3523697345-audio-player.swf"  width="400" height="27" quality="best"></embed>
<!--End  test google  player-->

</body>
</html>
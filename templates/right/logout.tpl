<!--  If not  set '/'  before all-wont'work  /mvc/?myfriendslist -->
<!-- Menu  for  logged  -->
<div id="rightmenu" class="shadow2" style='color:white;margin-top:10px;margin-left:15px;'><span class="shadow ">You  are  logged  as   user <?php echo " ".$_SESSION['login']; ?></span> </br>

<img src="image/profile.jpg" id="pr" alt="YOU" style='width:30px;border-radius:6px;margin-top:5px;/*position:absolute;top:1%;left:1%*/ '/>
</br></br>
</br>
<a href="/mvc/?login">My page</a>


</br>
<a href="/mvc/?myfriendslist">View my friends</a>
</br>
<a href="/mvc/?mymessbox">View my  messages<span id="messNumb"><img src='image/load.gif' style='width:27px;'/></span>     
<!--it is Ok, but  subtitutes  witha  ajax <?php echo"(".$_SESSION['count'].")"; ?>-->   
  </a>
</br>
<a href="/mvc/?mygallery">View my photos</a>
</br>
<a href="/mvc/?myvideo">View my video</a>
</br>
<a href="/mvc/?wall">View my  wall</a>
</br>

<a href="/mvc/?friendmatch">Match a Friend</a>
</br>
<a href="/mvc/?vote">Take on-line poll</a>
</br>
<a href="/mvc/?game">Play game</a>
</br>

<a href="/mvc/?search">Search users</a>
</br>
<a href="/mvc/?myshopp">My  shop</a>
</br>
<a href="/mvc/?servicetool">Service tools</a>
</br>
<a href="/mvc/?mail">Send an e-mail</a>
</br>
<a href="/mvc/?card">Animate it</a>
</br>
<a href="/mvc/?calendar">Calendar</a>
</br>
<a href="/mvc/?weather">Weather</a>
</br>
<a href="/mvc/?music"title="drum'n'bass collection">Play  my  music</a>
</br>
<a href="/mvc/?news">Rss News</a>
</br>
<a href="/mvc/?map">My  map</a>
</br>
<a href="/mvc/?ip">My  IP</a>
</br>
<a href="/mvc/?rem">Rem++</a>
</br>
<a href="/mvc/?petitions">Petitions(N/A)</a>
</br>
<a href="/mvc/?random">Randomize</a>
</br>
<a href="/mvc/?statistics">Statistics</a>
</br>
<a href="/mvc/?filters">Filters</a>
</br>
<a href="/mvc/?gdlibrary&loadImage=$imageLoaded" title="convert your  photo to black and  white">GD Library</a>
</br>
<a href="/mvc/?Diagram">Diagram</a>
</br>
<a href="/mvc/?qrcode">QR-Code</a>
</br>
<a href="/mvc/?oauth" title="authorize  using social networks">OAuth 2.0.</a>
</br>
<a href="/mvc/?canvas" title="Canvas">Canvas</a>
</br>
<a href="/mvc/?chat">Chat(N\A)</a>
</br>
<a href="/mvc/?logout">Exit</a>
</br>
<a href="/mvc/?tiggerRegister">Not Registered?</a></div>
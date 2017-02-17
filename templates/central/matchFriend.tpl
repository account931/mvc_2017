<div id='matchfriend'><center>






<!-- START script  for  ajax  search -->
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
  xmlhttp.open("GET","ajaxsearch/livesearch.php?q="+str,true);
  xmlhttp.send();
}
</script>
<!-- END script  for  ajax  search -->








<p style="font-size:34px;">Find  a  friend  based on your  interests  similarity</p>


<!-- DIv  1  with  the  left  form  -->
<div style="width:39%;float:left;">
<p>Type  your  hobby or interests  and  we will  search if  there  is  another  user  with  similar interests<p/>
<form action="" method="post">
<input type="text" name="match" onkeyup="showResult(this.value)">

<input type="submit" value="Search" > 
<!--onkeyup="showResult is  for  ajax  search-->
<div id="livesearch"></div><!--This  is  for display  ajax  results-->
</form>
</div>
<!--END  DIv  1  with  the  left  form  -->




<!-- DIv  2  with  the  right  image -->
<div style="width:55%;float:right;">
<img src="image/friend2.jpg" style="width:70%;" class='boxedshadow'/>
</div>
<!-- END DIv  2  with  the  right  image -->




<!--  displaying   the  content    of  the  div-->


<!-- DIv  3  with  the  RESULTS-->
<div style="width:90%;margin-top:255px;">
<!--<p>Matches</p>-->
<?php   //  getting  results
getSimilarFriends();
?>
</div>
<!-- END  DIv  3  with  the  RESULTS-->



</center></div>
<!-- END of  matchfriend  -->







<?php   //  getting  results  with  function
function getSimilarFriends ()
 {







//WORKING   from  DB   


include("config/database.php");
$db = new PDO('mysql:host='.MYSQL_HOST.'; dbname='.MYSQL_DATABASE, MYSQL_LOGIN, MYSQL_PASSWORD); 

if(isset($_POST['match'])) {




     // Function  is  not used  so  far   at all ,  should  proceed  with  variable  from  $_POST['search'] & proceed; 
     // Start   drop  function*************************************************
    function dropBackWords($word) { //here  we  proceed  words
        $reg = "/(&#1099;&#1081;|&#1086;&#1081;|&#1072;&#1103;|&#1086;&#1077;|&#1099;&#1077;|&#1086;&#1084;&#1091;|&#1072;|&#1086;|&#1091;|&#1077;|&#1086;&#1075;&#1086;|&#1077;&#1084;&#1091;|&#1080;|&#1089;&#1090;&#1074;&#1086;|&#1099;&#1093;|&#1086;&#1093;|&#1080;&#1103;|&#1080;&#1081;|&#1100;|&#1103;|&#1086;&#1085;|&#1102;&#1090;|&#1072;&#1090;)$/i"; //this  regular  will search   for  a  certain endings;
        $word = preg_replace($reg,'',$word);    //drop  the  endings ; 
        return $word;
}
      // End   drop  function--------------------------------------------------- 
                             $input=$_POST['search']; //  the  input   from  field
                             dropBackWords($input);   // proceeds  with  functions;





// SELECT LIKE '%land%'
static  $i;
static  $n;
$i=0;
//$n=$i+1;
//$match=$input;
$match=$_POST['match'];//deactive  due  to  usage  dropBackWords($input); 
$resMatch = $db->query("SELECT * FROM mvcUsers WHERE mvcUsers_hobby LIKE    '%$match%'     ");
while ($row1 =$resMatch->fetch()){
$n=$i+1; // Counting  users  found
$searchesR=$row1['mvcUsers_hobby']; // hobbies
$mUser=$row1['mvcUsers_login']; // User found
echo "<p>$n<a href='/mvc/?user=$mUser'>.$mUser </a><span style='color:red;'> $searchesR</span></p>";
}
}  


} // END of  function getSimilarFriends ()
?>
<div>
<center>
<h1 class="boxedshadow" > Weather</h1> 







<!--  was  replaced  ,this  place was  place  shifted  -->

<!------------------------------------- VARIANT 4  Shows  eaither  temperure  or    condition FOR NOW ONLY!!---------------------------------------------->
<!-- DO develop  EditText-->
<hr  style="width:37%; height:2px;background:black;margin-top:63px;">
<div ><h1>Weather Final  for   Kyiv  <?php echo date('d').".".date('m');?></h1>
</div>
<div id="weather" style='border:1px  solid  black;width:96%;'></div>

<script>
//path  to URL  request
var data_url="http://api.openweathermap.org/data/2.5/weather?q=Kyiv&APPID=42b614437754a4ec7c704604e2a3f97f";


//CAllING  function to pull information out of the json file and stick it into an HTML element
getWeather (function (data) {
//getting  tem  to  var  and  to  Celcium
var t=data.main.temp; t=t-272; t=Math.round(t);
var weather_cond=data.weather[0].description;
    var weather_html = data.weather[0].description + ";" +" temperature: " +  t + "C" + " ; wind: "+data.wind.speed+"km/h";

//Dislaying  corresponding  picture
    var  sun="http://findicons.com/files/icons/2603/weezle/256/weezle_sun.png";
    var rain="http://www.veryicon.com/icon/ico/System/Icons8%20Metro%20Style/Weather%20Rain.ico";
    var cloud="http://www.clipartbest.com/cliparts/4cb/KRM/4cbKRMXXi.png";
    var snow="https://upload.wikimedia.org/wikipedia/commons/b/bb/Snow_flake_icon.png";
if(weather_cond=="rain"||weather_cond=="light rain"){WeathPicture=rain} else if(weather_cond=="clouds"||weather_cond=="broken clouds" ||weather_cond=="scattered clouds"){WeathPicture=cloud}  else if(weather_cond=="snow"||weather_cond=="light snow"||weather_cond=="heavy snow"){WeathPicture=snow} else {WeathPicture=sun} 
    weather_html=weather_html+'<br><img  src='+WeathPicture+'>' ;
//End  displaying   picture
    document.getElementById('weather').innerHTML = weather_html;
});


//Set Time Interval
//var myVar = setInterval(function(){ myTimerNAME() }, 8000);
//setInterval("getWeather()",1000);


// function to use jsonp to get weather information
function getWeather(callback) {
    $.ajax({
        dataType: "jsonp",
        url: data_url,
        success: callback
    });
};
</script></br></br>
<!-- END   VARIANt  =4 Shows  Condition for  now  ONLY     -->

































<!-- WEATHER FOR 4 days AND MORE  -WORKS!!!!!!---------------------->
<!--START  Variant  3 Json  for  16  days  WORKING!!!!!!!!!!!!!------------------------------------------------------------------------------->

<!------------------------------------- VARIANT 4  Shows  eaither  temperure  or    condition THE  BEST---------------------------------------------->
<hr style="width:98%;background:black;height:8px;">
<div ><h1>Weather  in Kyiv  for  9 days</h1></div>
<div id="weather11"></div> <!-- This  divs  dispaly  weather  for  each  day-->
<div id="weather2"></div>
<div id="weather3"></div>
<div id="weather4"></div>
<div id="weather5"></div>
<div id="weather6"></div>
<div id="weather7"></div>

<script>
var data_url="http://api.openweathermap.org/data/2.5/forecast/daily?q=Kiev&mode=json&units=metric&cnt=7&appid=42b614437754a4ec7c704604e2a3f97f";  //Kyiv

//function to pull information out of the json file and stick it into an HTML element
getWeather(function (data) {



//Getting date
var d=new Date();
var x=d.getDate(); var y=d.getMonth()+1;   wDate=x+"."+y;
//END  getting  date


//getting  tem  to  var  and  to  Celcium
//var t=data.main.temp; t=t-272; t=Math.round(t);

//First  DAY
    var weather_html11 = "<span style='font-weight: bold'/>"+wDate+"</span>" +" "+data.city/*[0]*/.name/*description*/ +" t:  "+ data.list[0].temp.day +"; min: "+data.list[0].temp.min+  "; max: "+data.list[0].temp.max+ "; "+data.list[0].weather[0].main ;
    document.getElementById('weather11').innerHTML = weather_html11;

//Second  DAY
var d1=new Date(new Date().getTime() + 24 * 60 * 60 * 1000); var x1=d1.getDate(); if(x1<10){x1='0'+x1;} var y1=d1.getMonth()+1;   wDate1=x1+"."+y1;
 var weather_html2 =wDate1+" "+ data.city.name +" t:  "+ data.list[1].temp.day+" "+data.list[1].weather[0].main;
    document.getElementById('weather2').innerHTML = weather_html2;
//END  SECOND  DAY


//3rd  DAY
var d2=new Date(new Date().getTime() + 48 * 60 * 60 * 1000); var x2=d2.getDate(); if(x2<10){x2='0'+x2;} var y2=d2.getMonth()+1;   wDate2=x2+"."+y2;
 var weather_html3 =wDate2+" "+ data.city.name +" t:  "+ data.list[2].temp.day+" "+data.list[2].weather[0].main;
    document.getElementById('weather3').innerHTML = weather_html3;
//END  3rd


//4rd  DAY
var d4=new Date(new Date().getTime() + 72 * 60 * 60 * 1000); var x4=d4.getDate(); if(x4<10){x4='0'+x4;} var y4=d4.getMonth()+1;   wDate4=x4+"."+y4;
 var weather_html4 =wDate4+" "+ data.city.name +" t:  "+ data.list[3].temp.day+" "+data.list[3].weather[0].main;
    document.getElementById('weather4').innerHTML = weather_html4;
//END  4rd



//5rd  DAY
var d5=new Date(new Date().getTime() + 96 * 60 * 60 * 1000); var x5=d5.getDate(); if(x5<10){x5='0'+x5;} var y5=d5.getMonth()+1;   wDate5=x5+"."+y5;
 var weather_html5 =wDate5+" "+ data.city.name +" t:  "+ data.list[4].temp.day+" "+data.list[4].weather[0].main;
    document.getElementById('weather5').innerHTML = weather_html5;
//END  5rd




//6rd  DAY
var d6=new Date(new Date().getTime() + 120 * 60 * 60 * 1000); var x6=d6.getDate(); if(x6<10){x6='0'+x6;} var y6=d6.getMonth()+1;   wDate6=x6+"."+y6;
 var weather_html6 =wDate6+" "+ data.city.name +" t:  "+ data.list[5].temp.day+" "+data.list[5].weather[0].main;
    document.getElementById('weather6').innerHTML = weather_html6;
//END  6rd


//7rd  DAY
var d7=new Date(new Date().getTime() + 144 * 60 * 60 * 1000); var x7=d7.getDate(); if(x7<10){x7='0'+x7;} var y7=d7.getMonth()+1;   wDate7=x7+"."+y7;
 var weather_html7 =wDate7+" "+ data.city.name +" t:  "+ data.list[6].temp.day+" "+data.list[6].weather[0].main;
    document.getElementById('weather7').innerHTML = weather_html7;
//END  7rd


});
// function to use jsonp to get weather information
function getWeather(callback) {
    $.ajax({
        dataType: "jsonp",
        url: data_url,
        success: callback
    });
};
</script>
</br></br></br></br>
<!--END  Variant  3 Json  for  16  days ------------------------------------------------------------------------------->
<!--END  WEATHER  FOR  #  DAYS------------------------------->


















<?php

//This  is   working-  fetching  just  JSON FORMAT***************************************************
echo htmlspecialchars(file_get_contents('http://api.openweathermap.org/data/2.5/weather?q=Kyiv&APPID=42b614437754a4ec7c704604e2a3f97f'));
//END ----------------------
?>











<!---------------- REAL  WORKING JAVASCRIPT ONLY  VER 2--------------------->

<h1>Weather  forecast for   Kyiv  <?php echo date('d').".".date('m');?></h1>
<table id="users" style="border:2px  solid  black;width:400px;">
    <tr><td>Id</td><td>Sky</td><td>Condition</td><tr>
</table>

<!--Temperature  section-->
<p id="temp1">Temperature </p>


<script type="text/javascript">
$(function(){
    $.getJSON('http://api.openweathermap.org/data/2.5/weather?q=Kyiv&APPID=42b614437754a4ec7c704604e2a3f97f', function(data) {


            for(var i=0;i<data.weather.length;i++){
          //Adding   rowa  with info  to table
                $('#users').append('<tr><td>' + data.weather[i].id+ '</td><td>' + data.weather[i].main + 
                '</td><td>' + data.weather[i].description + '</td><tr>');   
          // Adding info  about  Sky  condition to  a  specific  div
               // $('#messnumb111').append('<span>'+data.weather[i].main+'</span>');        //  this  line  won't  work
                   
            }



//Start  getting temperarure
                     for(var g=0;g<data.wind.length;g++){
                  // Adding info  about  Sky  condition to  a  specific  div
                $('#temp1').append('<span>'+data.wind[g].speed +'</span>');    }
//End  getting temperarure


             
    });
});

//--------------------------------------------------
</script> 
<!-------------------------------------------------------END Ver 2--------------------------------------------------> 
 <p id="temp1">Temperature2 </p>












<!--  There  was    Variant  4   previously -->















</center>
</div>
<!----------------END  Real  working------------------->
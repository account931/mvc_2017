<div>
<center>

<p class="shadowd pargr boxedshadow" >Canvas</p>

















<!--  generate  random which  within  the var quantity --> 


<!-- Varinats=> can  create an array  with (images/info), it  generates  at once , and  show  info  pop-up  onclick;
#u  can  use  2  variants=1.)games with multiple  circle(have  to  find  a prized  one with min click++)
   2.) soc  profiles  with pop-up  display  info;
-->
<!DOCTYPE html>
<html>
<body>
<head>


<style>
.circle {
border: 2px  solid  red;
background-color:red;
  border-radius: 50%;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;

}
.circle2 {border: 2px  solid  red;
background-color:red;
  border-radius: 20%;
  -webkit-border-radius: 20%;
  -moz-border-radius: 20%;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>





<script>


$(document).ready(function(){
var arrayB=new  Array("one","two","three","four","five");//array  with  information, that  would  be  displayed  after  clicking  a perticular  circle(actually  fot  Soc  Profile  more  likely);

//image  array-how  to implement?
var arrayImage=new  Array("image/icon.png");
//END image  array-how  to implement?


//click on  circle;
    $(".circle").click(function(){  
          /*var*/ window.id=$(this).attr('id'); //  get the  id  of  clicked(i.e  numberX);
          var numb=id.substring(6);alert("id=> "+numb);//id-mumber[i] ,  so  we  cut  first  6   letters  to  get  pure  digits;


//Check  if  this  array  element (in arrayB[])  exists;
  if(typeof arrayB[numb] === 'undefined') {
        var info="NOT  EXIST";  // does not exist
}
else {
    // does exist
       var info=arrayB[numb];
}
////END Check  if  this  arry  element  exisss


       // var info=arrayB[numb];//  get  the  info  from array -CAN BE EREASED? Confirm  DELTION???!!!;
        alert(id + "\n"+info);
   // assign  a picture  to  clicked;
     var img=arrayImage[0]; //  just  for  test,  use arrayImage[numb];
     $(this).css("background", "url("+   arrayImage[0]+")");  //use  var  img here in  future;

//Find  the  position (for  future  pop-up)
var top=$(this).offset().top;  var left=$(this).offset().left;  //alert("Top ="+top+ "; Left= "+left);

//  Pop UP CREATE  ?????  Have  to  make  all  class  with  different  names;
         //var circle2=circle2+id;
         var circle2 = document.createElement("div");
         circle2.className = "circle2";//+id;  // circle2.style.display = "none"; //all  generated  on 1st circle value, except  for  JQ  show;
          var popUpId="#hidd"+id+""; // creates  an ID  for  JQ  SELECTOR;
         circle2.id = "hidd"+id; //assign  id; 
         circle2.style.display = "none"; //hid  it
         circle2.style.position = "absolute";
         circle2.style.left = left+"px";
         circle2.style.top = top-50+"px";
         circle2.style.backgroundColor = "yellow";
         circle2.style.width = width + "px";
         circle2.style.height = height + "px";
         //circles.push(circle);
         document.body.appendChild(circle2);
         $(popUpId).html(numb);//was  var id; // $(".circle2").html(info);//  html  with infro  from  array
         $(popUpId).show(2000);
// END Pop UP CREATE

   // Compare  Random  to  Clicked  id
var n = id.localeCompare(randomX);alert("n=>  "+n);// it is  an  alternative  comparison , as  it  does not  work;

alert("Compare "+ window.id +" vs "+ window.randomX);
if(parseInt(window.id).valueOf() === parseInt(window.randomX.valueOf())){alert("+++");} else{alert("-");}



   // ENd  Compare  Random  to  Clicked  id


    }); //  end  click
    
});
</script>
</head>



<button onclick="location.reload();">Reload</button>



<!--<canvas id="myCanvas" width="600" height="200" style="border:1px solid #d3d3d3;">
Your browser does not support the HTML5 canvas tag.</canvas>-->

<script>
/*var c = document.getElementById("myCanvas");
var ctx = c.getContext("2d");
ctx.beginPath();
ctx.arc(65,50,20,0,2*Math.PI);
ctx.stroke();



var ctx2 = c.getContext("2d");
ctx2.beginPath();
ctx2.arc(135,50,20,0,2*Math.PI);
ctx2.stroke();*/







var quantity = 25, /*25*/
    width = 60,
    height = 60
    circles = [];






function Generate() {
    for(var i = 0; i < quantity; i++) {   
         var circle = document.createElement("div");
         circle.className = "circle";
         circle.id = "number"+i; //assign  id;
         circle.style.position = "absolute";
         circle.style.left = Math.floor((Math.random() * 100)) + "%";
         circle.style.top = Math.floor((Math.random() * 100)) + "%";
         circle.style.backgroundColor = "pink";
         circle.style.width = width + "px";
         circle.style.height = height + "px";
         circles.push(circle);
         document.body.appendChild(circle);
// we  can  additionally  create   hidden elements;???
    }
}

//call  the  funct
Generate();


//generates  random  number
/* DUBLICATE!!!! Confirm  DELETION???
window.randomX=Math.floor((Math.random() * quantity) + 1);// within the  range  specified  in  var  quantity
alert("random= "+randomX);*/






</script>

</body>
</html>













</center>
</div>
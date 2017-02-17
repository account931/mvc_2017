<center>
<div id="main" style="width:80%;">
<center>
 <button type="button" id="new">New game</button>

<table id="tabR"  >
<tr><td id='t1' class="hovme">&nbsp;</td><td id='t2' class="hovme">&nbsp;</td><td id='t3' class="hovme">&nbsp;</td></tr>
<tr><td id='t4' class="hovme">&nbsp;</td><td id='t5' class="hovme">&nbsp;</td><td id='t6' class="hovme">&nbsp;</td></tr>
<tr><td id='t7' class="hovme">&nbsp;</td><td id='t8' class="hovme">&nbsp;</td><td id='t9' class="hovme">&nbsp;</td></tr>


</table></center>
</div> 
<!--Main END-->



<!--SCRIPT-->
<script>
$(document).ready(function(){
$("#tabR td").on("click",function(){
var content=$(this).text();

//if($(this).text()!=='0')
$(this).text("xR"); //THIS


   var x=Math.floor(Math.random()*(9-1+1))+1;



  //Array Start For  x
/*var arrx = new Array();
var pushed = arrx.push(document.all.tabR.rows.length);
alert (arrx);*/
//End  Array


  //Array Start For  0
/*var arr = new Array();
var pushed = arr.push(x);
alert (arr);*/
//End  Array 

	//alert(x);
//$("#t6").text('0').addClass('xed')}; 

//if(x==1 && $('#t1').html()!=='x'/*&& $('#t1').text()!=='x' && $('#t1').text()!=='0'*/)
//{$('#t1').text('0')}  else{ $('[]['#t2+td'][value != "x"]')          } /* else {$('#t1').next().text('0')}*/


//Start if 1
if(x==1)     { //1 
 if($('#t1').html()!=='x' && $('#t1').html()!=='0') {//2
  $('#t1').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end1
//End start if 1




//Start if 2
if(x==2)     { //1 
 if($('#t2').html()!=='x' && $('#t2').html()!=='0') {//2
  $('#t2').text('0')}
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end2
//End start if 





//Start if 3
if(x==3)     { //1 
 if($('#t3').html()!=='x' && $('#t3').html()!=='0') {//2
  $('#t3').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end3
//End start if 




//Start if 4
if(x==4)     { //1 
 if($('#t4').html()!=='x' && $('#t4').html()!=='0') {//2
  $('#t4').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end4
//End start if 







//Start if 5
if(x==5)     { //1 
 if($('#t5').html()!=='x' && $('#t5').html()!=='0') {//2
  $('#t5').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
//else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end5
//End start if 








//Start if 6
if(x==6)     { //1 
 if($('#t6').html()!=='x' && $('#t6').html()!=='0') {//2
  $('#t6').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
//else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end6
//End start if 





//Start if 7
if(x==7)     { //1 
 if($('#t7').html()!=='x' && $('#t7').html()!=='0') {//2
  $('#t7').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
//else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end7
//End start if 





//Start if 8
if(x==8)     { //1 
 if($('#t8').html()!=='x' && $('#t8').html()!=='0') {//2
  $('#t8').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
//else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end8
//End start if 







//Start if 9
if(x==9)     { //1 
 if($('#t9').html()!=='x' && $('#t9').html()!=='0') {//2
  $('#t9').text('0')}
else  if($('#t2').html()!=='x' && $('#t2').html()!=='0'){$('#t2').text('0')} 
else  if($('#t1').html()!=='x' && $('#t1').html()!=='0'){$('#t1').text('0')} 
else  if($('#t3').html()!=='x' && $('#t3').html()!=='0'){$('#t3').text('0')} 
else  if($('#t4').html()!=='x' && $('#t4').html()!=='0'){$('#t4').text('0')} 
else  if($('#t5').html()!=='x' && $('#t5').html()!=='0'){$('#t5').text('0')} 
else  if($('#t6').html()!=='x' && $('#t6').html()!=='0'){$('#t6').text('0')}
else  if($('#t7').html()!=='x' && $('#t7').html()!=='0'){$('#t7').text('0')}  
else  if($('#t8').html()!=='x' && $('#t8').html()!=='0'){$('#t8').text('0')} 
//else  if($('#t9').html()!=='x' && $('#t9').html()!=='0'){$('#t9').text('0')} 
} // end9
//End start if 



//------------------------------------------------------------------------------------

//PRE ORIGINAL
/*if(x==2 && $('#t2').html()!=='x')
{$('#t2').text('0')}  //else{$('#t2+td').text('0')}

if(x==3 && $('#t3').html()!=='x' )
{$('#t3').text('0')}   

if(x==4 && $('#t4').html()!==null)
{$('#t4').text('0')}

if(x==5 && $('#t5').html()!==null )
{$('#t5').text('0')} 

if(x==6 && $('#t6').html()!==null)
{$('#t6').text('0')} 

if(x==7 && $('#t7').html()!==null)
{$('#t7').text('0')}  

if(x==8 && $('#t9').html()!==null)
{$('#t8').text('0')} 

if(x==9)
{$('#t9').text('0')}*/
//

//Insert next
//if(x==1 && $('#t1').html()=='x')
//{$('#t1+td').text('7')} else {$('#t2+td').text('7')} {$('#t3+td').text('7')} {$('#t4+td').text('7')}
// END Insert nex


// WORKING ALERT
//alert($('#t1').text());

//END WORKING ALERT





// IF YOU WIN
if($('#t1').text()=='x' && $('#t2').text()=='x' && $('#t3').text()=='x' )
{alert("You win");$('#tabR td').empty();}

if($('#t4').text()=='x' && $('#t5').text()=='x' && $('#t6').text()=='x' )
{alert("You win");$('#tabR td').empty();}

if($('#t7').text()=='x' && $('#t8').text()=='x' && $('#t9').text()=='x' )
{alert("You win");$('#tabR td').empty();}

if($('#t1').text()=='x' && $('#t4').text()=='x' && $('#t7').text()=='x' )
{alert("You win");$('#tabR td').empty();}

if($('#t2').text()=='x' && $('#t5').text()=='x' && $('#t8').text()=='x' )
{alert("You win");$('#tabR td').empty();}

if($('#t3').text()=='x' && $('#t6').text()=='x' && $('#t9').text()=='x' )
{alert("You win");$('#tabR td').empty();}


if($('#t1').text()=='x' && $('#t5').text()=='x' && $('#t9').text()=='x' )
{alert("You win");$('#tabR td').empty();}

if($('#t3').text()=='x' && $('#t5').text()=='x' && $('#t7').text()=='x' )
{alert("You win");$('#tabR td').empty();}
// End IF YOU WIN 






// IF YOU LOSE
if($('#t1').text()=='0' && $('#t2').text()=='0' && $('#t3').text()=='0' )
{alert("SCREW YOU, YOU LOSE");$('#tabR td').empty();}

if($('#t4').text()=='0' && $('#t5').text()=='0' && $('#t6').text()=='0' )
{alert("SCREW YOU, YOU LOSE");$('#tabR td').empty();}

if($('#t7').text()=='0' && $('#t8').text()=='0' && $('#t9').text()=='0' )
{alert("SCREW YOU, YOU LOSE");$('#tabR td').empty();}

if($('#t1').text()=='0' && $('#t4').text()=='0' && $('#t7').text()=='0' )
{alert("SCREW YOU, YOU LOSE");$('#tabR td').empty();}

if($('#t2').text()=='0' && $('#t5').text()=='0' && $('#t8').text()=='0' )
{alert("SCREW YOU, YOU LOSE");$('#tabR td').empty();}

if($('#t3').text()=='x' && $('#t6').text()=='x' && $('#t9').text()=='x' )
{alert("You win");$('#tabR td').empty();}
// End IF YOU LOSE



//Even
if( $('#t1')=='0' || $('#t1')=='х' && $('#t2')=='0' || $('#t2')=='х'  && $('#t3')=='0' || $('#t3')=='х'  && $('#t4')=='0' || $('#t4')=='х'  && $('#t5')=='0' || $('#t5')=='х'  && $('#t6')=='0' || $('#t6')=='х'  && $('#t7')=='0' || $('#t7')=='х'  && $('#t8')=='0' || $('#t8')=='х'  && $('#t9')=='0' || $('#t9')=='х' )
{alert("Even");$('#tabR td').empty();}
//E END Even 


//END JQ }
});

 //oncl
$("#new").on("click",function(){
$('#tabR td').empty();});
//oncl

});











	});
});




</script>
<!-- END SCRIPT-->
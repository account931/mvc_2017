<!--  feel  free to  erase -->
<!--it  was a  donor-->





<!-- START  highLight php  function-->
 <?php 


 function highLight($d) {
/*if($d<15){echo "<style>#calnd tr:nth-child(3)  td:nth-child(2) {
    background: #ff0000;</style>" ;}*/


$d=(int)$d;
$C=$d/5;  $C=floor($C)+1; //echo $C;
$R=$d/7;   $R=floor($R);
echo "<style>#calnd tr:nth-child($C)  td:nth-child($R){
    background: #ff0000;</style>" ;



//echo "<script>var x=$('td').length;alert(x);</script>" ;


//Won't  work 
/*echo "<script>t='5';$('*:contains(t):first')).css('background-color','red');</script>" ;*/
}


$resultD = date('d');
highLight($resultD);
   ?>        
<!-- END  php  function-->
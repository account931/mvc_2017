<!-- php  file  intended  to   proceed  voting  in  VOTE  section (i.e. templates/central/vote/tpl)but  for  some  bizzare reason  it  is  located  in  a  root  folder  (unlike  the  rest   proceeded  php  actionares  ??????)-->

<!--  This   section is  capble  with  working  with 2  sections  at  one  time  only ,  multiple  optioning is  not  availbale   for  performing ->OUTDATED-->
<!--Above  line is  False it  works =1)add new input  with value+1 +2)add if($vote == value+1){} + 3)$insertvote = $yes."||".$no."||".$screw+ NewVal+ 4)Html  result (100*round($no/($no+$yes+$screw+$NewVal),2)-->

<?php
$vote = $_REQUEST['vote'];

//get content of textfile
$filename = "poll_result.txt";
$content = file($filename);

//put content in array,  separated  by "||"
$array = explode("||", $content[0]);
$yes = $array[0];
$no = $array[1];
//Mine
$screw = $array[2];

if ($vote == 0) {
  $yes = $yes + 1;
}
if ($vote == 1) {
  $no = $no + 1;
}
//mine
if ($vote == 2) {
  $screw = $screw + 1;
}



//insert votes to txt file
$insertvote = $yes."||".$no."||".$screw;
$fp = fopen($filename,"w");
fputs($fp,$insertvote);
fclose($fp);
?>

<h2>Result:</h2>
<table>
<tr>
<td>Yes:</td>
<td>
<img src="image/poll.gif" style="border:solid 3px white;border-radius:4px;"
width='<?php echo(100*round($yes/($no+$yes+$screw),2)); ?>'
height='20'>
<?php echo(100*round($yes/($no+$yes+$screw),2)); ?>%
</td>
</tr>
<tr>
<td>No:</td>
<td>
<img src="image/poll.gif" style="border:solid 3px white;border-radius:4px;"
width='<?php echo(100*round($no/($no+$yes+$screw),2)); ?>'
height='20'>
<?php echo(100*round($no/($no+$yes+$screw),2)); ?>%
</td>
</tr>



<tr>
<td>Don't care:</td>
<td>
<img src="image/poll.gif" style="border:solid 3px white;border-radius:4px;"
width='<?php echo(100*round($screw/($no+$yes+$screw),2)); ?>'
height='20'>
<?php echo(100*round($screw/($no+$yes+$screw),2)); ?>%
</td>
</tr> 


</table>
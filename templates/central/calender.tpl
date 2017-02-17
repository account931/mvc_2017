<!--  Calendar  i-->

<!--http://davidwalsh.name/php-calendar-->
<!--Not implemented =  no  color  the  current  date  (ge the  date  number  and  use  JQ $("td:eq(1)").css("background-color","red"); )-->
<style>
/* calendar */
table.calendar		{ border-left:1px solid #999; }
tr.calendar-row	{  }
td.calendar-day	{ min-height:80px; font-size:11px; position:relative; } * html div.calendar-day { height:80px; }
td.calendar-day:hover	{ background:#eceff5; }
td.calendar-day-np	{ background:#eee; min-height:80px; } * html div.calendar-day-np { height:80px; }
td.calendar-day-head { background:#ccc; font-weight:bold; text-align:center; width:120px; padding:5px; border-bottom:1px solid #999; border-top:1px solid #999; border-right:1px solid #999; }
div.day-number		{ background:#999; padding:5px; color:#fff; font-weight:bold; float:right; margin:-5px -5px 0 0; width:20px; text-align:center; }
/* shared */
td.calendar-day, td.calendar-day-np { width:120px; padding:5px; border-bottom:1px solid #999; border-right:1px solid #999; }


/*highlighting  the cell   it  works  but  tempory  moved  to  highLight  FUnction*/
/*#calnd tr:nth-child(3)  td:nth-child(<?php echo'5';?>) {
    background: #ff0000;

}*/
</style>






                                                                                 
<!--Start php  function-->
<?php

// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// ** 
function HighLight($i){
$C=$i/5; $C=floor($C); 
$R=$i/7;  $R=floor($R);

echo "<style>#calnd tr:nth-child(2)  td:nth-child(2){
    background:#ff0000; }</style>" ;

}

$resultD2 = date('d');
HighLight($resultD2 );
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
?>
<!--ENd  Php  highLight  function-->












<center>
<h1>
<p class="shadowd pargr boxedshadow" style="border-radius:0px;">Eternal Calendar</p></h1> 
<p><b>Today  is <?php echo date('d').".".date('m'); ?></b></p></center>
<div id="calnd"  style="margin:20px;">



<?php
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **                                                                                  **
/* draws a calendar */
function draw_calendar($month,$year){

	/* draw table */
	$calendar = '<table cellpadding="0" cellspacing="0" class="calendar" id="caln">';

	/* table headings */
	$headings = array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
	$calendar.= '<tr class="calendar-row"><td class="calendar-day-head">'.implode('</td><td class="calendar-day-head">',$headings).'</td></tr>';

	/* days and weeks vars now ... */
	$running_day = date('w',mktime(0,0,0,$month,1,$year));
	$days_in_month = date('t',mktime(0,0,0,$month,1,$year));
	$days_in_this_week = 1;
	$day_counter = 0;
	$dates_array = array();

	/* row for week one */
	$calendar.= '<tr class="calendar-row">';

	/* print "blank" days until the first of the current week */
	for($x = 0; $x < $running_day; $x++):
		$calendar.= '<td class="calendar-day-np"> </td>';
		$days_in_this_week++;
	endfor;

	/* keep going with days.... */
	for($list_day = 1; $list_day <= $days_in_month; $list_day++):
		$calendar.= '<td class="calendar-day">';
			/* add in the day number */
			$calendar.= '<div class="day-number">'.$list_day.'</div>';

			/** QUERY THE DATABASE FOR AN ENTRY FOR THIS DAY !!  IF MATCHES FOUND, PRINT THEM !! **/
			$calendar.= str_repeat('<p> </p>',2);
			
		$calendar.= '</td>';
		if($running_day == 6):
			$calendar.= '</tr>';
			if(($day_counter+1) != $days_in_month):
				$calendar.= '<tr class="calendar-row">';
			endif;
			$running_day = -1;
			$days_in_this_week = 0;
		endif;
		$days_in_this_week++; $running_day++; $day_counter++;
	endfor;

	/* finish the rest of the days in the week */
	if($days_in_this_week < 8):
		for($x = 1; $x <= (8 - $days_in_this_week); $x++):
			$calendar.= '<td class="calendar-day-np"> </td>';
		endfor;
	endif;

	/* final row */
	$calendar.= '</tr>';

	/* end the table */
	$calendar.= '</table>';
	
	/* all done, return result */
	return $calendar;
}


/* sample usages */  //Disabled  as  it  display   only  static month
/*echo '<h2 >October 2015</h2>';
echo draw_calendar(10,2015);

echo '<h2>November 2015</h2>';
echo draw_calendar(11,2015);*/
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************








// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **                                                                                  **
//Mine   add*****************************
//ADDs  dynamic  calendar, which track  month  and  change  them automatically 

   $result = date('m')/*-1*/; // getting month
    $resultY = "20".date('y');  // getting year 20+15
//echo $result; echo $resultY; //Testing  what  display  

//echo '<center><h2>Internal  calendar</h2></center>';

//Start  IF ELSE  for  current month
if($result==10) {$monthName="October ";} else if($result==11) {$monthName="November ";} else
if($result==12) {$monthName="December ";}  else if($result==1) {$monthName="January ";}  else if($result==2) {$monthName="February";}  else if($result==3) {$monthName="March";} else if($result==4) {$monthName="April";} else if($result==5) {$monthName="May";} else if($result==6) {$monthName="June";} 
else if($result==7) {$monthName="July";} else if($result==8) {$monthName="August";} else if($result==9) {$monthName="September";}


// Start  If ELSE For  the next month
$result2=$result+1;
if($result2==10) {$monthName2="October ";} else if($result2==11) {$monthName2="November ";} else
if($result2==12) {$monthName2="December ";}  else
if($result2==2) {$monthName2="February ";}      else if($result2==3) {$monthName2="March";} else if($result2==4) {$monthName2="April";} else if($result2==5) {$monthName2="May";}  else if($result2==6) {$monthName2="June";}  else if($result2==7) {$monthName2="July";} else if($result2==8) {$monthName2="August";}  else if($result2==9) {$monthName2="September";}     





// Start  If ELSE For  the next  SECOND month (i.e  +2)
$result3=$result+2;
if($result3==10) {$monthName3="October ";} else if($result3==11) {$monthName3="November ";} else
if($result3==12) {$monthName3="December ";}       else
if($result3==2) {$monthName3="February ";}    else if($result3==3) {$monthName3="March";} else if($result3==4) {$monthName3="April";} else if($result3==5) {$monthName3="May";}  else if($result3==6) {$monthName3="June";}  else if($result3==7) {$monthName3="July";} else if($result3==8) {$monthName3="August";}  else if($result3==9) {$monthName3="September";}




//display  current month and  2  following 
//Current  month
//Getting date  to highlight
 $resultD = date('d');
echo  "<script>$('td:eq(5)').css('background-color','red');</script> ";// Trying  to  highlight  but  failed
//End  getting date  and  highlight
//td:nth-child(2)  //eq


echo "<h2>". $monthName." ".$resultY."</h2>";
echo draw_calendar($result,$resultY);
// END  display  current  month 


//Next  Month
//$result2=$result+1;
//Do not  display if it more  than the  12th month
if($result+1<12){
echo "<h2>". $monthName2." ".$resultY."</h2>";
echo draw_calendar($result+1,$resultY); }


//Next �Month +1  (the  3rd  month from now)
//Do not  display if it more  than the  12th month
if($result+2<12){
echo "<h2>". $monthName3." ".$resultY."</h2>";
echo draw_calendar($result+2,$resultY);}
// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************







?>
</div>
<!-- Writting  an  e-mail-->
<div id="mail1"> <!-- style="background-image: url('image/mail.jpg');"-->
<center>

<h1 class='boxedshadow'>Write an e-mail<span id='MailsignSpan'>Use PhpMAiler</span></h1>
<div id="mailVer1">
<img  src="image/mail.jpg"  style="width:20%;position:absolute;top:38%;right:22%;"/>

<form method='post' id='mailForm' action=''><table><tr><td>TO:</td>
             <td><input type="text" name="receiver" placeholder=" print e-mail" id="receiver" required/></td>
         </tr>
         <tr>
             <td>THEME:</td>
             <td><input type="text" name="theme" required /></td>
         </tr>
Â <tr>
Â  Â  Â  Â  Â  Â  Â <td>Messaga:</td>
Â  Â  Â  Â  Â  Â  Â <td><textarea rows="10" cols="45" name="text" required></textarea>
</td>
Â  Â  Â  Â  Â </tr>



<tr>
             <td>FROM:</td>
             <td><input type="text" name="from" placeholder=" e-mail you want to use" required /></td>
         </tr>

<!--<tr><td >File:</td><td align="right"><input type="file" name="mail_file" maxlength="64"></td></tr> -->

         <tr>
             <td></td>
             <td><input type="submit" value="Send" name='mailTRIGGER'></td>
         </tr>
     </table>
 </form>

</div><!-- END mailVer1-->





<!---------------------------------------------START   E-mail 2 PhpMailer-------------------------------------------------------------------------------->
<div id ="mailVer2PhpMailer">
<img  src="http://read.pudn.com/downloads199/sourcecode/web/938370/phpMailer_v2.3/examples/images/phpmailer.png"/>
<form method='post' id='mailForm' action='' enctype='multipart/form-data'>
Your consignee<input type="text" name="recieverPhpMail" placeholder=" Your consignee(to  whom)" id="recieverPhpMail" required /></br></br>
Your mail theme<input type="text" name="themePhpMail" placeholder="  topic" required  /></br></br>
<textarea rows="10" cols="45" name="textPhpMail"required ></textarea></br></br>
Consignor mail <input type="text" name="fromPhpMail" placeholder=" e-mail you want to use" required />
Consignor name <input type="text" name="fromPhpMailname" placeholder=" name you want to use" required  />
File to send <input type="file" name="filePhpMail" maxlength="64"></br></br>
<input type="submit" value="Yeah,let's do it" name='mailSendPhpMail' id='sendPhpMail'/>
</form>
</div> <!--mailVer2PhpMailer-->
<!---------------------------------------------END   E-mail 2 PhpMailer-------------------------------------------------------------------------------->
</center>
</div><!--  END  GENERAL  -->








<?

//START writes  outcomingto  txt  file (askfile.txt)*******
//TRANSFER IT TO CLASS  RECORING
/*$sourcen = $_POST['receiver']; // TO
$source = $_POST['from']; //FROM
$source1 =  $_POST['theme']; //TOPIC
$source2 = $_POST['text']; //MESSAGE
$ip=$_SERVER['REMOTE_ADDR'];//ip adress
$file = "askfile.txt";
$Saved_File = fopen($file, 'a');
fwrite($Saved_File,$sourcen.' '.$source.' '.$source1." ".$source2.' '.$ip."\r\n\n"); // add a new line to the  string :)
fclose($Saved_File);*/
//END writes  ougoing-------


//ERASE ?????????????????????
function recTxt(){
}
//




//START SENDING ORDINARY(default) MAIL (displaying echo  but  doesn't  deliver  for  some  bizzare  reason )
if(isset($_POST['mailTRIGGER'])) {
$header="Content-type:text/plain;charset=utf-8\r\n";
 $theme = $_POST['theme'];
 $text = $_POST['text'];
$text= iconv('utf-8', 'KOI8-R', $text);

 $from=$_POST['from'];
 $receiver = $_POST['receiver'];     
 $receiver = filter_var($receiver, FILTER_VALIDATE_EMAIL);
    
 




if ($receiver !== false) { // if  e-mail is  valid(after checking filter_var($receiver, FILTER_VALIDATE_EMAIL);) 

   mail($receiver, $theme, $text, "From:$from");
   echo "<center><H1 style='color:red;font-size:54px;'>SEND</H1></center>";

  //REDIRECTING  TO  FRESH PAGE 
  echo '<script language="JavaScript" type="text/javascript">
  function changeurl(){eval(self.location="http://example2.esy.es/mvc/?mail");}
  window.setTimeout("changeurl();",5000);
  </script>';
} //END  if ($receiver !== false);
   else {echo"<script>alert('Not  valid e-mail');</script>";}

// Record (with CLASS) all the  input  to  txt;  //If  planted inside  the  mail function-Do not  work;
      include("Classes/RecordTxt.php");
      RecordTxt::RecordAnyInput(array($receiver, $theme, $text,$from), 'recordText/defaultmailer.txt');// Record  to  text;
//End  Record;

}// END isset($_POST['mailTRIGGER']))
//END  SENDING  MAIL











// Start PhpMAiler ******************************************************
require_once("libraries/PHPMailer-master/class.phpmailer.php"); // Class

if(isset($_POST['mailSendPhpMail'])) { //press  the  button 

                                    

                       
                        $phpMailTo=$_POST['recieverPhpMail']; //to
                        $phpMailTheme=$_POST['themePhpMail']; //theme
                        $phpMailBody=$_POST['textPhpMail'];   //body
                        $phpMailFromEmail=$_POST['fromPhpMail'];   //from e-email
                        $phpMailFromName=$_POST['fromPhpMailname'];
                        //if(isset($_POST['fromPhpMailname'])) {$phpMailFromName=$_POST['fromPhpMailname'];}  else {$phpMailFromName='User';}    //from name if  initial is  empty





    $mail = new PHPMailer(); 
    $mail->From = $phpMailFromEmail; //From  who 
    $mail->FromName = $phpMailFromName;//Wrom  who  name
    $mail->AddAddress($phpMailTo);  // to  whome  //($phpMailTo, "/*name*/");
    $mail->CharSet = 'UTF-8'; // 
         
          //start  attachment
           if (isset($_FILES['filePhpMail']) &&
    $_FILES['filePhpMail']['error'] == UPLOAD_ERR_OK) {
    $mail->AddAttachment($_FILES['filePhpMail']['tmp_name'],
                         $_FILES['filePhpMail']['name']);
                                                         }
         //end  attachment
              
    ///$mail->AddAttachment("file_adress", 'file_name'); // attach  file  if  required
    $mail->IsHTML(true); // setting HTML  flag
    $mail->Subject = $phpMailTheme;
    $mail->Body = $phpMailBody;
    //sending;
if(!$mail->Send()){
  echo "Message was not sent";
  echo "Mailer Error: " . $mailer->ErrorInfo;
} else {echo"<center><p id='phpMailerTextDestroyer'>Message  is  send</p></center>";}
//


//Recording all inputs //If  planted inside  the  mail function-Do not  work;
  include("Classes/RecordTxt.php");
  RecordTxt::RecordAnyInput(array($phpMailTo, $phpMailTheme, $phpMailBody,$phpMailFromEmail,$phpMailFromName), 'recordText/phpmailer.txt');// Record  to  text;


} //  end  isset($_POST['mailSendPhpMail']))
// End  PhpMAiler--------------------------------------------


?>
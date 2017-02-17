$(document).ready(function(){
  
//START    OnLoad  Display pop-up  window-------------------
//If  clicked -Don't know
//$('#captchaHidden').show(3000);
// $('#captchaHidden').css('display','block');
//Make  it  disappper on  click 
 $("#dknow").click(function(){
        $("#captchaHidden").hide(2000);
    });


//  Delayed  function   -POP UP  WINDOW  HUMAN
setTimeout(function(){
$('#captchaHidden').fadeIn(2000);//show()
}, 2000);
// END  Delayed  FUNCTION - PO UP  WINDOW


 //Start  password clicking *************************
$("#ansbutton").click(function(){
  var $tr='sometext';
   var $bla = $('#answer').val();
// alert($bla);
 if($bla==$tr){  alert('Right');$("#captchaHidden").hide(2000);}
else{alert("Wrong, have  another  try");}
 });
//END OnLoad   POP-up----------------------------------------------------






// Start View  gallery in SELECTED  USER(User.tpl)*******************************
    $(".viewgallery").click(function(){
   //  alert('YOUR PRIVATE  GALLERY');
     //  $(".hiddengallery").show(1000);
           $(".hiddengallery").toggle(1000);

    });

// view  FRIENDS  in SELECTED  USER
 $(".viewfriends").click(function(){
           $(".hiddenfriend").toggle(1000);
  });


//View  video in SELECTED  USER
$(".viewvideo").click(function(){
           $(".hiddenvideo").toggle(1000);
    });
// END  View  gallery-----------------------------------






//Start My shop appear***************************
$("#addgoods").click(function(){ $("#myshoppadd").toggle(1000);
    });

// Click cancel  button ho  hide  the  form
$("#cancel").click(function(){ $("#myshoppadd").hide(1000);
 });

$("#myshopclose").click(function()
//$("div:not(#myshoppadd)").click(function()
{    $("#myshoppadd").hide(1000);     });
//END shop appear-----------------------------------------






// START  ServiceTool Switcher*******************
$("#imgSwitcher").click(function(){
 $("#serv1").hide(1000);
$("#serv2").show(1000);
 });
//---
$("#imgSwitcher2").click(function(){
 $("#serv2").hide(1000);
$("#serv1").show(1000);
 });
// END ServiceTool Switcher----------------------






// START HEADER  CHANGE HOVER Dymanic  Changed  MVC***************************************************************
  $('#headerp').hover(function(){    
         //$('#headerp').html('Social Networking');
             $('#headerp').stop().hide(800);
              $('#headerpHIDDEN').stop().show(1000);
},
function(){
  //$(this).html('Dynamically  changed MVC');
              $('#headerpHIDDEN').stop().hide(900);
              $('#headerp').stop().show(1000);
              
});
// END HEADER CHANGE  HOVER------------------------------------------------------------------------------------








// START Clicking Profile image in right  column to  show  hidden(div  is located in header.tpl)***************************************************************
    $("#pr").click(function(){ 
       $("#headerHidden").slideDown(2000);///show(4000);
       $("#headerHidden").hide(1000);//fadeOut(1000);
    });
// START Clicking Profile image in right  column  to  show  hidden  ------------------------------------------------------------------------------------











//Clear the  form in Wall.tpl***********************************************
$("#wallClear").click(function()
{ $("#wArea").html(" ");
    });
//. End  Clear the  form-----------------------------------------------------------









/*
// START Photo Switcher  in my photos*******************
$("#viewgallery").click(function(){
 $("#viewgallery").hide(1000);
$("#hiddengallery").show(1000);
 });
//---
$("#imgSwitcher2").click(function(){
 $("#hiddengallery").hide(1000);
$("#viewgallery").show(1000);
 });
// END Photo  Switcher----------------------
*/






//Start  toggle  show/hide colorize  image  in GD Library****************************************
 $("#blacknwhite,.blacknwhite2").click(function(){
   $("#solarize").toggle(800); //$(this).prev('p').toggle(800);
        //$("p").toggle(2000);
            // change text to opposite
                        if($("#blacknwhite").text()=="Show more") {$("#blacknwhite").html("Close");}  else {$("#blacknwhite").html("Show more");}
            // END change text to opposite
    });
//END  toggle  show/hide colorize  image  in GD Library----------------------------------------
































































































//DEACTIVE!!!!  as  reassigned  to myscriptajax.js
//Start  COUNT  number Every 5  sec*****************
/*setInterval(function()
  {
      $.post('ajaxMessNumb.php?getNumb', {}, function(feed)
      {
          var html = '';
          for(i = 0; i < feed.length; i++)
          {

              html = html + '<div>' + feed[i]['COUNT(*)']+'</div>';
         }

          $('#messNumb).html(html);
      },'json');
  }, 1000);  */
//END  COUNT number------------------------------------







//SET NUMBER OF MESSAGES OnLOAD once
////DEACTIVE!!!!  as  reassigned  to myscriptajax.js
/* setTimeout(function()
  {
      $.post('ajaxMessNumb.php?getNumb', {}, function(feed)
      {
          var html = '';
          for(i = 0; i < feed.length; i++)
          {

              html = html + '<span>' + feed[i]['COUNT(*)']+'</span>';
         }

          $('#messNumb).html(html);
      },'json');
  }, 100);     */ 
 
//SET NUMBER OF MESSAGES OnLOAD













/*Function is  supposed  to  check input  id  there is only  number in ServicTool.tpl ,  but  not  working */
function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}





$("#MailsignSpan").fadeOut("slow", function(){
                $("#MailsignSpan").html("Use PhpMAiler")
            }).fadeIn("slow");







// Start  Mail (emailWrite.tpl)
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// Start  Mail (emailWrite.tpl)******************

// start shifrint  text and  divs  with  form ("Use PhpMAiler" to "Use default")**************
$("#MailsignSpan").click(function(){
       $buttonVal=$("#MailsignSpan").text(); $buttonVal=$buttonVal.trim();     // span  text value 
           if($buttonVal=="Use PhpMAiler"){
                                             // shifting  span text
                                           $("#MailsignSpan").fadeOut("slow", function(){
                                           $("#MailsignSpan").html("Use default")
                                                                                        }).fadeIn("slow");
                                           $("#mailVer1").hide(1000); // hide 1st  form -show  2nd
                                           $("#mailVer2PhpMailer").show(1000);
} 
           else { 
                  $("#MailsignSpan").fadeOut("slow", function(){
                  $("#MailsignSpan").html("Use PhpMAiler")
                                                                }).fadeIn("slow");
                 //$("#MailsignSpan").stop().html("Use PhpMAiler").hide(0).fadeIn("slow");
                 $("#mailVer2PhpMailer").hide(1000);
                 $("#mailVer1").show(1000);
}                                                   

});
// END  shifrint  text ("Use PhpMAiler" to "Use default")----------------------



//Start erase  echoed message (in 3  seconds) , send  with  PhpMailer*****
 setTimeout(function(){ $("#phpMailerTextDestroyer").fadeOut(900); }, 3000);
//End   erase  echoed message  , send  with  PhpMailer-----


// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
// END  Mail (emailWrite.tpl)-----------------------------------------;











// Start  QR CODE (qrcode.tpl)
// **************************************************************************************
// **************************************************************************************
// ** 

     // text fades out in 3  seconds
     setTimeout(function(){ $("#qrCode").hide(900); }, 3000);

// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
// END  QR CODE (qrcode.tpl)-----------------------------------------;








// Start  Vk -oAuth (oAuth.tpl)
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **



   $("#vkSwitcher").click(function(){
                 if( $('#vkAuth1').is(':visible'))
                     {
                        $("#vkAuth1").hide(1000);  
                        $("#vkInfo").show(1000);                                                 
                       }// end  if 
                   else { $("#vkInfo").hide(1000);  
                          $("#vkAuth1").show(1000);    }
});

  

 $("#examples").click(function(){
               $("#examplHidden").toggle(1000);  
});
                     


// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
// END of   Vk -oAuth (oAuth.tpl)----------------------------------------;











});    // Final  Token
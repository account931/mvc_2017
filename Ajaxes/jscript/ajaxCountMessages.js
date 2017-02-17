 //it  works  with  ONLY OLD PHP located  in root folder  , dunno  why can't  wire  it  to Ajaxes/php/ajaxMessNumb.php, may be  name  conflict-may  be should  use ={/home/u341473096/public_html/mvc/Ajaxes/php/phpFile.php   }  
// it  the the renamed  copy /mvc/myscriptajax.js,  aplly  changes  in index/php with new  name (ajaxCountMessages.js) and  can erase  mvc/myscriptajax.js
$(document).ready(function(){



//  Repeats  every 100 sec*******************
setInterval(function()
  {
      $.post('ajaxMessNumb.php?getNumb', {}, function(feed) //feed  can have  any  name????
      {
          var html = '';
          for(i = 0; i < feed.length; i++)
          {

              html = html + '  (' + '<span>' + feed[i]['COUNT(*)']+')'+'</span>';
         }

          $('#messNumb').html(html);
      },'json');
  }, 10 * 60 * 1000);    //erase  2 last  zeros    // 10 * 60 * 1000=10 minutes
// End  Repeats--------------------------------------







// START Repeat  once  at  start  with  light  delay***********
setTimeout(function()
  {
      $.post('ajaxMessNumb.php?getNumb', {}, function(feed)
      {
          var html = '';
          for(i = 0; i < feed.length; i++)
          {

              html = html + '  (' + '<span>' + feed[i]['COUNT(*)']+')'+'</span>';
         }

          $('#messNumb').html(html);
      },'json');
  }, 2000);    
// END   Repeat  once---------------------





//alert('Ajax is  running,will appear in 5  sec');
 });
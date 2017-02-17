 //CAN  BE DELETED ????????????   +1 To delete(24.10.2016), as  it  works  from /Ajaxes/jscript/ajaxCountMessages.js;
//This  is  script  ONLY for  ajax  count  number  messages
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
  }, 1000);    
// END   Repeat  once---------------------





//alert('Ajax is  running,will appear in 5  sec');
 });
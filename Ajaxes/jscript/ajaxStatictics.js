//AJAX  requesting
//Was crashing  unless  the  path  to  script  has  been  specified without  starting "/"  in index.php
// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// ** 
//  START    WORKING XMLHttpRequest !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
window.onload = function() {

 
  function readTextfile() {
    var xhr = new XMLHttpRequest();
 
    xhr.onreadystatechange = function() {
      if(xhr.readyState === 4) {
        if(xhr.status == 200) {
          showContents(xhr.responseText, xhr);
        }
      }
    }
 
    xhr.open('GET', 'ipList.txt', true);
    xhr.send();
  }
 
  function showContents(responseText) {
   // var li = document.createElement('li');
    //var date = new Date();
    //li.innerHTML = date + ': ' + responseText;
    //ul.appendChild(li);
//mine
      var  div =document.getElementById("displayDiv");  
//start   splitting  MINE
responseText = responseText.split("\n").reverse().join("</br>");     //responseText=responseText.split("").reverse().join("");
// END   splitting  MINE
       div.innerHTML=responseText;
  }
 
  readTextfile();
  setInterval(readTextfile, 10 * 60 * 1000);   // 10 minutes
 
}
// END // WORKING XMLHttpRequest !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************

//http://www.codechewing.com/library/output-contents-of-textfile-javascript-ajax/    Phh part is  not  required, as  it  takes  just txt and  no SQL NEED????????

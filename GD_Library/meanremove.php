<?php
//  creates  an effect of  drawn picture


// set errors  messages;
  ini_set("display_errors", "1");
  error_reporting(E_ALL); 
  

  // 
  if(isset($_GET['source'])){
  //  check if  the  image  is  set ;
  $image = filter_var($_GET['source'], FILTER_SANITIZE_STRING);
  
  //load  image 
  $image = imagecreatefromjpeg($image);
  
  //make  it  drawn -MEAN_REMOVAL
  //imagefilter($image, IMG_FILTER_GRAYSCALE);
   imagefilter($image, IMG_FILTER_MEAN_REMOVAL);
  
  //  set the  type  of  an image 
  header('content-type: image/jpeg');
  

  //  save  image in quality 90% 
  imagejpeg($image, '', 90);
  
  //clear the  memory 
  imagedestroy($image);

  }



  ?>
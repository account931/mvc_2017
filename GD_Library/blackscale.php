<?php

//script  that uses  GD library  to  black and  white photoes

  // set errors  messages;
  ini_set("display_errors", "1");
  error_reporting(E_ALL); 
  

  // 
  if(isset($_GET['source'])){
  //  check if  the  image  is  set ;
  $image = filter_var($_GET['source'], FILTER_SANITIZE_STRING);
  
  //load  image 
  $image = imagecreatefromjpeg($image);
  
  //make  it  black  and  white
  imagefilter($image, IMG_FILTER_GRAYSCALE);
  
  //  set the  type  of  an image 
  header('content-type: image/jpeg');
  

  //  save  image in quality 90% 
  imagejpeg($image, '', 90);
  
  //clear the  memory 
  imagedestroy($image);

  }


  ?>
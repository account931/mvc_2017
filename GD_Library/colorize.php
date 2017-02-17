<?php
//  creates  an effect of  colorize


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
  imagefilter($image, IMG_FILTER_COLORIZE, 50, 50, 0);
  
  //  set the  type  of  an image 
  header('content-type: image/jpeg');
  

  //  save  image in quality 90% 
  imagejpeg($image, '', 90);

                                   //mine  TRYING TO SAVE 
                                   file_put_contents('/ImagesAll/imagesProfile/imagenamet.jpg', $image);
                                  //imagejpeg($image, '/ImagesAll/imagesProfile/imagename.jpg', 100);
  
  //clear the  memory 
  imagedestroy($image);

  }


http://example2.esy.es/mvc
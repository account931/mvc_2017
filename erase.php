<!-- You should  better  erase  this    file  next  time ,  as  it    was created  fot  testing  purpose only  and  not  in use  any  more -->
<!-- The  part  to pass->
<!-- Shoul be  deleted - Just  testing SimpeClass possibility to  resize  from form -->
<?php
   if( isset($_POST['submit']) ) {
      include('classSimpleImage/classSimpleImage.php');
      $image = new SimpleImage();
      $image->load($_FILES['uploaded_image']['tmp_name']);

      $image->resizeToWidth(150);
    //  $image->output();
          $tg=$_FILES['uploaded_image']['tmp_name'].'.jpeg';
echo $tg;
echo "<img src='/tmp/$tg'/>";
   } else {
?>
   <form action="erase.php" method="post" enctype="multipart/form-data">
      <input type="file" name="uploaded_image" />
      <input type="submit" name="submit" value="Upload" />
   </form>

<?php  }  ?>
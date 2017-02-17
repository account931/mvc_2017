<?php
// Class   for  GetTemplate  function
//Comment  this  function in index.php, add "require"  and  use  $get = new GetTemplateClass() $get->GetTemplate($);

class GetTemplateClass
{

var $fileR;
var $htmlR;



// **************************************************************************************
// **************************************************************************************
// **                                                                                  **
// **                                                                                  **
function GetTemplateR($fileR)
  {
     ob_start(); 
     include($fileR); 
     $htmlR = ob_get_contents();  
     ob_end_clean(); 
     return $htmlR;
  }

// **                                                                                  **
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************



























// End  Class 
}
?>
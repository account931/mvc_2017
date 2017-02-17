<?php

// USED in Diagram.tpl +mvcDiargram table+used  styles  and  scripts  in index.php
// Connect to MySQL
$link = mysql_connect( 'mysql.hostinger.com.ua', 'u341473096_user', 'useruser' );
if ( !$link ) {
  die( 'Could not connect: ' . mysql_error() );
}

// Select the data base
$db = mysql_select_db( 'u341473096_gall', $link );
if ( !$db ) {
  die ( 'Error selecting database \'test\' : ' . mysql_error() );
}

// Fetch the data
$query = "
  SELECT *
  FROM mvcDiargram
  ORDER BY mD_id ASC";
$result = mysql_query( $query );

// All good?
if ( !$result ) {
  // Nope
  $message  = 'Invalid query: ' . mysql_error() . "\n";
  $message .= 'Whole query: ' . $query;
  die( $message );
}

// Print out rows
$prefix = '';
echo "[\n";
while ( $row = mysql_fetch_assoc( $result ) ) {
  echo $prefix . " {\n";
  echo '  "category": "' . $row['mD_id'] . '",' . "\n";
  echo '  "value1": ' . $row['md_value1'] . ',' . "\n";
  echo '  "value2": ' . $row['md_value2'] . '' . "\n";
  echo " }";
  $prefix = ",\n";
}
echo "\n]";

// Close the connection
mysql_close($link);
?>
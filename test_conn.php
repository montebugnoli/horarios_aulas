<?php
// Connecting, selecting database
$mysqli = new mysqli('localhost', 'root', '9d93a8', 'ifsp_horarios');
//  
//  // Check erros
  if ( $mysqli->connect_errno ) {
    echo $mysqli->connect_errno, ' ', $mysqli->connect_error;
    }
     
     // SQL query
     $sql = 'select descricao from turmas';
      
      // Printing results
      $result = $mysqli->query( $sql );
       
       while ( $row = $result->fetch_assoc() ) {
         echo $row['descricao']. "</br>";
         }
          
          // Close Connection
	  $mysqli->close();
?>

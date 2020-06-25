<?php
	$username = "root"; 
	$password = "";      
	$server   = "localhost";   
	$dbname   = "onmyoji";      

	$db = new mysql($server, $username, $password, $dbname);

	if ($db->connect_error) {
    	die("Cannot connect :" . $conn->connect_error);
   	 exit();
	}
?>
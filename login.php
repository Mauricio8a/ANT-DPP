<?php
	//inicio de sesión
	session_start();
	// desplegar id de sesión
	echo session_id();
	//set session variables
	$_SESSION['logged_in_user_id'] = 1;
	$_SESSION['logged_in_user_name'] = 'Mauricio';
	// access session variables
	echo $_SESSION['logged_in_user_id'];
	echo $_SESSION['logged_in_user_name'];
?>
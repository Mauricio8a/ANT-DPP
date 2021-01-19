<?php
// try {
// 	$conn = new PDO("mysql:host=$db_host;dbname=$db_name;", $db_usr, $db_pass);
// 	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//   	//echo "Conexión a BDD satisfactoria";
	
// } catch (PDOException $e) {
// 	die("Conexión fallida: " . $e->getMessage());	
// }
$my_sqli = new mysqli($db_host, $db_usr, $db_pass, $db_name);
 if ($my_sqli->connect_errno){
 	echo "Error de conexión. Sitio web con problemas!";
}	 
?>
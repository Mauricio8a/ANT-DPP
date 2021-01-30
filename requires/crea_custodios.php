<?php
include ("../dll/config.php");
include ("../dll/mysql.php");

for($i=4;$i<=84;$i++){
	$crear = "INSERT INTO custodios (idcustodio, f_inicio, personas_idpersona) VALUES ('$i', '2011-08-01 00:00:00', '$i')";
	$resultado = $my_sqli->query($crear);
	if ($resultado === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
	} 
	
}		
		echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
		
		

?>
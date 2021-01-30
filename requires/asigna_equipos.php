<?php
include ("../dll/config.php");
include ("../dll/mysql.php");

	for($i=1;$i<=1133;$i++){
		$num = rand(1,84);
		$crear = "UPDATE equipostecnologicos SET custodios_idcustodio='$num' WHERE idequipo='$i'";
		$resultado = $my_sqli->query($crear);
	if ($resultado === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
		} 
	}
	echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
	
?>
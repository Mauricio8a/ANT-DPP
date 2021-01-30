<?php
include ("../dll/config.php");
include ("../dll/mysql.php");
extract($_POST);
// Datos para ingresar a BD extraidos del formulario
	$cod_avaluac = $_POST['avaluac'];
	$cod_ant = $_POST['ant'];
	$cod_esbye = $_POST['esbye'];
	$serie = $_POST['serie'];
	$marca = $_POST['marca'];
	$modelo = $_POST['modelo'];
	$descripcion = $_POST['descripcion'];
	$color = $_POST['color'];
	$observacion = $_POST['observacion'];
	$custodio = $_POST['custodio'];
	$idequipo = $_POST['idequipo'];
	// echo $custodio;

	//Consulta para actualizar en la BD	
	$actualizar = "UPDATE equipostecnologicos SET cod_avaluac='$cod_avaluac', cod_ant='$cod_ant', cod_esbye='$cod_esbye', serie='$serie', marca ='$marca', modelo='$modelo', descripcion='$descripcion', color='$color', observacion='$observacion', custodios_idcustodio='$custodio' WHERE idequipo=$idequipo";
	$resultado1 = $my_sqli->query($actualizar);
	if ($resultado1 === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
	} 
	else
		{
		echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
		echo "<script>location.href='editar_equipo.php?idequipo=$idequipo'</script>";
		}


?>
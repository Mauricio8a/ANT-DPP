<?php
include ("../dll/config.php");
include ("../dll/mysql.php");

extract($_POST);
//Recibir datos desde el formulario
	$folio = $_POST['folio'];
	$resolucion = $_POST['resolucion'];
	$descripcion = $_POST['descripcion'];
	$fecha = $_POST['fecha'];
	$clase = $_POST['clase'];
	$servicio = $_POST['servicio'];
	$accion = $_POST['accion'];
	$fisico = $_POST['fisico'];
	$observacion = $_POST['observacion'];
	$path = "archivos/" . $_FILES['archivo']['name'];
	$idExpediente = $_POST['idExpediente'];

	// echo $folio.	$resolucion .$descripcion .	$fecha . $clase .$servicio . $accion .	$fisico . 	$observacion ;
	//Consulta para actualizar en la BD	
	$actualizar = "UPDATE expedientes SET folio='$folio', resolucion='$resolucion', descripcion='$descripcion', 
	fecha='$fecha', clase='$clase', servicio='$servicio', accion='$accion', fisico='$fisico', observacion='$observacion', 
	archivo='$path' WHERE idExpediente=$idExpediente";
	$resultado1 = $my_sqli->query($actualizar);
	if ($resultado1 === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
	} 
	else
		{
		echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
		echo "<script>location.href='editar_archivo.php?folio=$folio'</script>";
		}


?>
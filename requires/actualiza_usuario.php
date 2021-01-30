<?php
include ("../dll/config.php");
include ("../dll/mysql.php");
extract($_POST);
// Datos para ingresar a BD extraidos del formulario
	$cedula = $_POST['cedula'];
	$apellidos = $_POST['apellidos'];
	$nombres = $_POST['nombres'];
	$cargo = $_POST['cargo'];
	$email = $_POST['email'];
	$direccion = $_POST['direccion'];
	$telefono = $_POST['telefono'];
	$departamento = $_POST['departamento'];

	//Consulta para actualizar en la BD	
	$actualizar = "UPDATE personas SET cedula='$cedula', nombres='$nombres', apellidos='$apellidos', direccion='$direccion', telefono ='$telefono', cargo='$cargo', email='$email', departamentos_iddepartamento='$departamento' WHERE cedula=$cedula";
	$resultado1 = $my_sqli->query($actualizar);
	if ($resultado1 === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
	} 
	else
		{
		echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
		echo "<script>location.href='editar_usuario.php?cedula=$cedula'</script>";
		}


?>
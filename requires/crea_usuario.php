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


// Busqueda de datos ingresados en la BD para evitar duplicados
	$consulta = "SELECT cedula, apellidos, email FROM personas WHERE cedula='$cedula'";
	//$verifica = $my_sqli->prepare($consulta);
	$resultado = $my_sqli->query($consulta);
	$line = mysqli_fetch_row($resultado);
	//echo $line[0];



// Ingreso de datos en BD
if(is_null($line)){
	
	//Consulta SQL para insertar en la BDD
	$insertar = "INSERT INTO personas (cedula, nombres, apellidos, direccion, telefono, cargo, email, departamentos_iddepartamento) VALUES ('$cedula','$nombres','$apellidos', '$direccion', '$telefono', '$cargo','$email','$departamento')";
	$resultado1 = $my_sqli->query($insertar);
	if ($resultado1 === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
	} 
	else
		{
		echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
		echo "<script>location.href='editar_usuario.php?cedula=$cedula'</script>";
		}
}
else{
	if(($line[0]==$cedula) or ($line[1]==$apellidos) or ($line[2]==$email)){
	echo '<script>alert("EL REGISTRO YA EXISTE CON LOS DATOS INGRESADOS DE CEDULA, APELLIDOS O EMAIL...VUELVA A INTENTARLO!")</script>';
	echo "<script>location.href='admin.php'</script>";
	exit();
}
}

?>
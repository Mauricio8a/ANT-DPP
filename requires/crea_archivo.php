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

//Verificar existencia de datos
	$consulta = "SELECT folio, resolucion FROM expedientes WHERE folio='$folio'";
	$resultado = $my_sqli->query($consulta);
	$line = mysqli_fetch_row($resultado);
	//echo $line[0];


// Ingreso de datos en BD
if(is_null($line)){
	
	//Consulta SQL para insertar en la BDD
	$insertar = "INSERT INTO expedientes (folio, resolucion, fecha, descripcion, clase, servicio, accion, fisico, observacion, archivo) VALUES('$folio','$resolucion', '$fecha', '$descripcion', '$clase', '$servicio', '$accion', '$fisico', '$observacion', '$path')";
	$resultado1 = $my_sqli->query($insertar);
	if ($resultado1 === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
	} 
	else
		{
		//Gestión de archivos
		if (move_uploaded_file($_FILES['archivo']['tmp_name'], $path)) {
			echo '<script>alert("Archivo PDF subido con éxito")</script>';
			
			echo '<script>location.href="archivo.php"</script>';
		}
		echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
		echo "<script>location.href='archivo.php'</script>";
		}
}
else{
	if(($line[1]==$folio) or ($line[2]==$resolucion)){
	echo '<script>alert("EL REGISTRO YA EXISTE CON LOS DATOS INGRESADOS...VUELVA A INTENTARLO!")</script>';
	echo "<script>location.href='archivo.php'</script>";
	exit();
}
}


?>
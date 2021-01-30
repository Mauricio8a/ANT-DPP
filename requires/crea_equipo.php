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


// Busqueda de datos ingresados en la BD para evitar duplicados
	$consulta = "SELECT cod_avaluac, cod_ant, cod_esbye, serie FROM equipostecnologicos WHERE serie='$serie'";
	$resultado = $my_sqli->query($consulta);
	$line = mysqli_fetch_row($resultado);
	//echo $line[0];



// Ingreso de datos en BD
if(is_null($line)){
	
	//Consulta SQL para insertar en la BDD
	$insertar = "INSERT INTO equipostecnologicos (cod_avaluac, cod_ant, cod_esbye, serie, marca, modelo, descripcion, color, observacion, custodios_idcustodio) VALUES ('$cod_avaluac','$cod_ant','$cod_esbye', '$serie', '$marca', '$modelo','$descripcion','$color', '$observacion', '$custodio')";
	$resultado1 = $my_sqli->query($insertar);
	if ($resultado1 === false) {
		echo "Error al registrar datos: " . $my_sqli->error;
	} 
	else
		{
		echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
		echo "<script>location.href='editar_equipo.php?serie=$serie'</script>";
		}
}
else{
	if(($line[0]==$cod_avaluac) or ($line[1]==$cod_ant) or ($line[2]==$cod_esbye) or ($line[3]==$serie)){
	echo '<script>alert("EL REGISTRO YA EXISTE CON LOS DATOS INGRESADOS...VUELVA A INTENTARLO!")</script>';
	echo "<script>location.href='its.php'</script>";
	exit();
}
}

?>
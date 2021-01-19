<?php 
include ("../dll/config.php");
include ("../dll/mysql.php");

extract($_POST);
// echo "DATOS INGRESADOS: \n";
// echo $_POST['cedula'] . "\n";
// echo $_POST['apellidos'] . "\n";
// echo $_POST['nombres'] . "\n";
// echo $_POST['cargo'] . "\n";
// echo $_POST['email'] . "\n";
// echo $_POST['direccion'] . "\n";
// echo $_POST['telefono'] . "\n";
//$ced = $_POST['cedula'];

//extract($_GET);
$consulta = "SELECT cedula, apellidos, email FROM personas WHERE cedula=$cedula";
$resultado = $my_sqli->prepare($consulta);
$resultado = $my_sqli->query($consulta);
$line = mysqli_fetch_row($resultado);
if(is_null($line)){
	//echo '<script>alert("EL REGISTRO NO EXISTE!")</script>';
	$query1 = "INSERT INTO personas(cedula, nombres, apellidos, direccion, telefono, cargo, email) VALUES('$cedula','$nombres','$apellidos', '$direccion', '$telefono', '$cargo','$email')";
	$resultado1 = $my_sqli->query($query1);
	echo '<script>alert("DATOS GRABADOS CON EXITO!")</script>';
	echo "<script>location.href='editar.php?cedula=$cedula'</script>";
}
else{
	if(($line[0]==$cedula) or ($line[1]==$apellidos) or ($line[2]==$email)){
	echo '<script>alert("EL REGISTRO YA EXISTE CON LOS DATOS INGRESADOS DE CEDULA, APELLIDOS O EMAIL...VUELVA A INTENTARLO!")</script>';
	echo "<script>location.href='admin.php'</script>";
}
}
//$my_sql->close();
?>
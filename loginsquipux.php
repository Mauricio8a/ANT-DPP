<?php
	include ("dll/config.php");
	require 'dll/mysql.php'; 
	extract($_POST);

	//VARIABLES DEL FORMULARIO
	$usuario = $_POST['user'];
	$pass = $_POST['pass'];
	$actor = "Consulta";
	
	// Comprobacion del entorno de usuario Administrador
	if(strlen(strstr($usuario, $actor))>0){
		//echo 'Usuario correcto para la sesion';
			// VALIDACION DE DATOS EN BD
		$buscar = "SELECT a.apellidos, a.nombres, b.paswword FROM personas a INNER JOIN usuarios b ON a.idpersona=b.personas_idpersona AND b.nombre='$usuario'";

		$resultado = $my_sqli->query($buscar);
		$line = mysqli_fetch_row($resultado);
		
		// Ingreso al sistema
		if ($resultado === false) {

				echo "Usuario no registrado en BD " . $my_sqli->error;
			
			} 
			else
				{
					if($pass === $line[2]){
				echo '<script>alert("Bienvenido ' .$line[0].' '.$line[1].' ")</script>';
				echo "<script>location.href='requires/tecnico.php'</script>";
					}
					else
					{
					echo '<script>alert("ERROR: Nombre de usuario o contraseña incorrecto!! ")</script>';
					echo "<script>location.href='index.php'</script>";
					exit();
					}	
				}

			}
	else
		{
				//echo 'Usuario incorrecto para la seccion';
				echo '<script>alert("Intento fallido: USUARIO INCORRECTO PARA LA SESION! ")</script>';
				echo "<script>location.href='index.php'</script>";
				}
				exit();

?>
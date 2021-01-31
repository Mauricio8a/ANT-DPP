<?php 
include ("../dll/config.php");
include ("../dll/mysql.php");
extract($_GET);
?>
<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- Principal CSS -->
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <script src="https://kit.fontawesome.com/cc208d15cb.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="<?=$url_sitio?>img/favicon-32x32.png"/>
    <script type="text/javascript" src="../js/valida.js"></script>
    <title><?php echo $nom_sitio; ?></title>
  </head>
  <body>
    <?php include ("header.php"); ?>
<!--Contenidos -->
<div class="container" id="main">
	<div class="row">
		<div class="col-md-12">
			<!-- Barra de navegación -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
          	<div class="navbar-text">Mostrando información del personal administrativo: </div>
          	
          </li>
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Editar
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" data-toggle="modal" data-target="#staticBackdrop1">Actualizar datos</a>
              <a class="dropdown-item" href="#">Eliminar usuario</a>
            </div>
          </li>
          <li class="nav-item">
          		<a class="nav-link" href="admin.php">Salir</a>
          </li>
        </ul>
      </div>
    </nav>


			
		</div>

	</div>
	<?php
          	$query0 = "SELECT a.cedula, a.apellidos, a.nombres, a.email, a.cargo, a.telefono, a.direccion, b.descripcion FROM personas a, departamentos b WHERE a.cedula='$cedula' AND a.departamentos_iddepartamento = b.iddepartamento";
          	$result0 = $my_sqli->query($query0);
          	$line = mysqli_fetch_row($result0);
  ?>
            <div class="row">
            	<div class="col-md-6">
            		<div>Datos de C.I.: <strong><?php echo $line[0]; ?></strong></div>
            		<div>Apellidos/Nombres: <strong><?php echo $line[1] . " " . $line[2]; ?></strong></div>
            		<div>Email: <strong><?php echo $line[3]; ?></strong></div>
            		<div>Cargo: <strong><?php echo $line[4]; ?></strong></div>
            		<div>Teléfono: <strong><?php echo $line[5]; ?></strong></div>
            		<div>Dirección: <strong><?php echo $line[6]; ?></strong></div>
                <div>Departamento: <strong><?php echo $line[7]; ?></strong></div>
            	</div>
            	<div class="col-md-6" align="center">
            		<div>Fotografía actualizada</div>
            		<div><img src="<?php echo '$line[8]' ?>"></div>
            	</div>
            </div>
</div>


<!-- MODAL -->
<!-- ACTUALIZACIÓN DE USUARIOS -->
<div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-user-edit"></i><strong>&nbsp;&nbsp;Actualización de Datos</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="edita_usu" action="actualiza_usuario.php" method="post" enctype="multipart/form-data">
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="cedula">Cédula</label>
                <input type="form-text" class="form-control" id="cedula" name="cedula" value="<?php echo $line[0];?>" pattern="^[0-9]+" minlength="10" maxlength="10" required>
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="cedula">Apellidos</label>
                <input type="form-text" class="form-control" id="apellidos" name="apellidos"  value="<?php echo $line[1];?>"  minlength="1" maxlength="70" required>
              </div>
              <div class="form-group col-md-6">
                <label for="nombres">Nombres</label>
                <input type="form-text" class="form-control" id="nombres" name="nombres" value="<?php echo $line[2];?>"  maxlength="70" required>
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="<?php echo $line[3];?>" pattern="^[\w.\w]+@ant.gob.ec" maxlength="128" placeholder="@ant.gob.ec" required>

              </div>
              <div class="form-group col-md-6">
                <label for="cargo">Cargo</label>
                <input type="form-text" class="form-control" id="cargo" name="cargo" value="<?php echo $line[4];?>"  maxlength="70" required>
              </div>
              
             </div>
             <div class="form-row"> 
             <div class="form-group col-md-6">
                <label for="telefono">Teléfono</label>
                <input type="form-text" class="form-control" id="telefono" name="telefono" value="<?php echo $line[5];?>" pattern="^[0-9]+" maxlength="10" required>
              </div>
             
              <div class="form-group col-md-6">
                <label for="direccion">Dirección</label>
                <input type="form-text" class="form-control" value="<?php echo $line[6];?>" id="direccion" name="direccion" maxlength="70" required>
              </div>
              </div>


              <div class="form-group col-md-12">
                <label for="departamento">Departamento</label>
                

                <select class="custom-select-sm float-right" name="departamento" id="departamento">
                  <option value="0"><?php echo $line[7];?></option>
                  <!-- BUSQUEDA EN LA TABLA DE departamentos PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT iddepartamento, descripcion FROM departamentos");
                  while($valores = mysqli_fetch_array($consulta)){
                    echo '<option value="'.$valores[iddepartamento].'">'.$valores[descripcion].'</option>';
                  }
                  ?>

                </select>


              </div>
              
             
             <div class="form-row">
               <div class="form-group col-md-12">
                 <label for="foto">Fotografía</label>
                 <input type="file" class="form-control" id="imagen" name="imagen" >
               </div>
             </div>
             
            
        
      </div>
      <div class="modal-footer" align="center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button> 
        <button type="submit" class="btn btn-primary" onclick="actualiza_usuario.php">Actualizar</button>
      </div>
      </form>
    </div>
  </div>
</div>

</div>



<?php include ("footer.php"); ?>

  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
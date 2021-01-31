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
          	<div class="navbar-text">Mostrando información de Expediente de Archivo ANT-DPP: </div>
          	
          </li>
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Editar
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" data-toggle="modal" data-target="#staticBackdrop1">Actualizar datos</a>
              <!-- <a class="dropdown-item" href="#">Eliminar Expediente</a> -->
            </div>
          </li>
          <li class="nav-item">
          		<a class="nav-link" href="archivo.php">Salir</a>
          </li>
        </ul>
      </div>
    </nav>


			
		</div>

	</div>
	<?php
          	$query0 = "SELECT folio, resolucion, fecha, descripcion, clase, servicio, accion, fisico, observacion, archivo, idExpediente FROM expedientes WHERE folio='$folio'";
          	$result0 = $my_sqli->query($query0);
          	$line = mysqli_fetch_row($result0);
  ?>
            <div class="row">
            	<div class="col-md-6">
            		<div>Expediente/Folio: <strong><?php echo $line[0]; ?></strong></div>
            		<div>Resolución: <strong><?php echo $line[1]?></strong></div>
            		<div>Fecha: <strong><?php echo $line[2]; ?></strong></div>
            		<div>Descripción: <strong><?php echo $line[3]; ?></strong></div>
            		<div>Clase: <strong><?php echo $line[4]; ?></strong></div>
            		<div>Servicio: <strong><?php echo $line[5]; ?></strong></div>
                <div>Acción: <strong><?php echo $line[6]; ?></strong></div>
                <div>Ubicación: <strong><?php echo $line[7]; ?></strong></div>
                <div>Observación: <strong><?php echo $line[8]; ?></strong></div>
                <!-- <div>Archivo: <strong><?php echo $line[9]; ?></strong></div> -->
            	</div>
            	
            </div>
</div>


<!-- MODAL -->
<!-- ACTUALIZACIÓN DE ARCHIVOS -->
 <div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="far fa-file-archive"></i><strong>&nbsp;&nbsp;Actualizar Expediente Archivo ANT-DPP</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="crea_archivo" action="actualizar_archivo.php" method="post" enctype="multipart/form-data">
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="avaluac">Expediente/Folio:</label>
                <input type="form-text" class="form-control form-control-sm" id="folio" name="folio" maxlength="45" value="<?php echo $line[0];?>">
              </div>
              <div class="form-group col-md-6">
                <label for="ant">Resolución:</label>
                <input type="form-text" class="form-control form-control-sm" id="resolucion" name="resolucion" value="<?php echo $line[1];?>" maxlength="45">
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col">
                <label for="descripcion">Descripcion</label>
                <input type="form-text" class="form-control form-control-sm" id="descripcion" name="descripcion" value="<?php echo $line[3];?>" maxlength="128" required>
              </div>
            </div>
             <div class="form-row"> 
              <div class="form-group col-md-4">
                <label for="fecha">Fecha:</label>
                <input type="date" class="form-control form-control-sm" id="fecha" name="fecha" value="<?php echo $line[2];?>" maxlength="30">
              </div>
              <div class="form-group col-md-8">
                <label for="servicio">Clase:</label>
                  <select class="custom-select-sm float-left" name="clase" id="clase">
                  <option value="<?php echo $line[4];?>"><?php echo $line[4];?></option> 
                  <!-- BUSQUEDA EN LA TABLA DE clases PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT prefijo, resolucion FROM clases");
                  while($valores = mysqli_fetch_array($consulta)){
                    echo '<option value="'.$valores[prefijo].'">'.$valores[prefijo].'- '.$valores[resolucion].'</option>';
                  }
                  ?>
                </select>
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="marca">Servicio:</label>
                <select class="custom-select-sm float-left" name="servicio" id="servicio">
                  <option value="<?php echo $line[5];?>"><?php echo $line[5];?></option> 
                  <!-- BUSQUEDA EN LA TABLA DE servicios PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT modalidad FROM servicios");
                  while($valores = mysqli_fetch_array($consulta)){
                    echo '<option value="'.$valores[modalidad].'">'.$valores[modalidad].'</option>';
                  }
                  ?>
                </select>
              </div>
              <div class="form-group col-md-6">
                <label for="modelo">Acciones ejecutadas:</label>
                <select class="custom-select-sm float-left" name="accion" id="accion">
                  <option value="<?php echo $line[6];?>"><?php echo $line[6];?></option> 
                  <!-- BUSQUEDA EN LA TABLA DE acciones PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT prefijo, descripcion FROM acciones");
                  while($valores = mysqli_fetch_array($consulta)){
                    echo '<option value="'.$valores[prefijo].'">'.$valores[prefijo].'- '.$valores[descripcion].'</option>';
                  }
                  ?>
                </select>
              </div>
             </div> 
             
             <div class="form-row">
               <div class="form-group col-md-6">
                <label for="custodio">Ubicación física:</label>
                
                <select class="custom-select-sm float-left" name="fisico" id="fisico">
                  <option value="<?php echo $line[7];?>"><?php echo $line[7];?></option> 
                  <!-- BUSQUEDA EN LA TABLA DE departamentos PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT cuarto, seccion, estante, fila, columna FROM fisico");
                  while($valores = mysqli_fetch_array($consulta)){
                    $ubicacion = 'CUARTO: '.$valores[cuarto].'-SECCION:'.$valores[seccion].'-ESTANTE: '.$valores[estante].'-FILA: '.$valores[fila].'-COLUMNA: '.$valores[columna];

                    echo '<option value="'.$ubicacion.'">'.'CUARTO: '.$valores[cuarto].'-SECCION:'.$valores[seccion].'-ESTANTE: '.$valores[estante].'-FILA: '.$valores[fila].'-COLUMNA: '.$valores[columna].'</option>';
                  }
                  ?>

                </select>
              </div>
             </div>
             <div class="form-row">
               <div class="form-group col">
                 <label for="observacion">Observación:</label>
                 <input type="form-text" class="form-control form-control-sm" id="observacion" name="observacion" value="<?php echo $line[8];?>" maxlength="128">
                 <input type="hidden" name="idExpediente" id="idExpediente" value="<?php echo $line[10];?>">
               </div>
             </div>
             <div class="form-row">
                    <div class="col">
                      <label for="archivo">Cargar archivo <strong>PDF</strong> a la Base:</label>
                        <input type="file" class="form-control-file" name="archivo" id="Subir archivo PDF" accept="application/pdf" required>    
                                </div>
                            </div>
      
      <div class="modal-footer" align="center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button> 
        <button type="submit" class="btn btn-primary" onclick="actualizar_archivo.php">Actualizar</button>
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
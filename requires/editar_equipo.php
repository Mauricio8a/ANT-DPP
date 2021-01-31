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
          	<div class="navbar-text">Mostrando información de Equipo Tecnológico: </div>
          	
          </li>
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Editar
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" data-toggle="modal" data-target="#staticBackdrop1">Actualizar datos</a>
              <a class="dropdown-item" href="#">Eliminar Equipo</a>
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
          	$query0 = "SELECT a.cod_avaluac, a.cod_ant, a.cod_esbye, a.serie, a.marca, a.modelo, a.descripcion, a.color, a.observacion, b.apellidos, b.nombres, a.idequipo, a.custodios_idcustodio FROM equipostecnologicos a, personas b WHERE a.serie='$serie' AND a.custodios_idcustodio = b.idpersona";
          	$result0 = $my_sqli->query($query0);
          	$line = mysqli_fetch_row($result0);
  ?>
            <div class="row">
            	<div class="col-md-6">
            		<div>CODIGO AVALUAC: <strong><?php echo $line[0]; ?></strong></div>
            		<div>CODIGO ANT: <strong><?php echo $line[1]?></strong></div>
            		<div>CODIGO ESBYE: <strong><?php echo $line[2]; ?></strong></div>
            		<div>SERIE #: <strong><?php echo $line[3]; ?></strong></div>
            		<div>MARCA: <strong><?php echo $line[4]; ?></strong></div>
            		<div>MODELO: <strong><?php echo $line[5]; ?></strong></div>
                <div>DESCRIPCION: <strong><?php echo $line[6]; ?></strong></div>
                <div>COLOR: <strong><?php echo $line[7]; ?></strong></div>
                <div>OBSERVACION: <strong><?php echo $line[8]; ?></strong></div>
                <div>CUSTODIO: <strong><?php echo $line[9]." ".$line[10]; ?></strong></div>
            	</div>
            	
            </div>
</div>


<!-- MODAL -->
<!-- ACTUALIZACIÓN DE EQUIPOS -->
<div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-laptop-code"></i><strong>&nbsp;&nbsp;Actualización de Equipos</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="actualiza_eq" action="actualiza_equipo.php" method="post" enctype="multipart/form-data">
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="avaluac">CODIGO AVALUAC</label>
                <input type="form-text" class="form-control" id="avaluac" name="avaluac" value="<?php echo $line[0];?>" pattern="^[0-9]+" maxlength="20">
              </div>
              <div class="form-group col-md-6">
                <label for="ant">CODIGO ANT</label>
                <input type="form-text" class="form-control" id="ant" name="ant" value="<?php echo $line[1];?>" maxlength="20">
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="esbye">CODIGO ESBYE</label>
                <input type="form-text" class="form-control" id="esbye" name="esbye" value="<?php echo $line[2];?>"maxlength="30">
              </div>
              <div class="form-group col-md-6">
                <label for="serie">SERIE</label>
                <input type="form-text" class="form-control" id="serie" name="serie" value="<?php echo $line[3];?>" maxlength="70" required>
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="marca">Marca</label>
                <input type="form-text" class="form-control" id="marca" name="marca" value="<?php echo $line[4];?>" maxlength="70">
              </div>
              <div class="form-group col-md-6">
                <label for="modelo">Modelo</label>
                <input type="form-text" class="form-control" id="modelo" name="modelo" value="<?php echo $line[5];?>" maxlength="70">

              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="descripcion">Descripcion</label>
                <input type="form-text" class="form-control" id="descripcion" name="descripcion" value="<?php echo $line[6];?>" maxlength="70" required>
              </div>
              <div class="form-group col-md-6">
                <label for="color">Color</label>
                <input type="form-text" class="form-control" id="color" name="color" value="<?php echo $line[7];?>" maxlength="30">
              </div>
             </div>

             <div class="form-row">
               <div class="form-group col-md-12">
                <label for="custodio">Asignar custodio</label>
                
                <select class="custom-select-sm float-right" name="custodio" id="custodio">
                  <option value="<?php echo $line[12]?>"><?php echo $line[9]."".$line[10];?></option> 
                  <!-- BUSQUEDA EN LA TABLA DE personas PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT idpersona, apellidos, nombres FROM personas");
                  while($valores = mysqli_fetch_array($consulta)){
                    echo '<option value="'.$valores[idpersona].'">'.$valores[apellidos].' '.$valores[nombres].'</option>';
                  }
                  ?>

                </select>


              </div>

             </div>

             <!-- Paso de valor del idequipo en forma oculta para la actualización --> 
             <div class="form-row">
               <div class="form-group col">
                 <label for="observacion">Observación:</label>
                 <input type="form-text" class="form-control" id="observacion" name="observacion" value="<?php echo $line[8];?>" maxlength="70">
                 <input type="hidden" id="idequipo" name="idequipo" value="<?php echo $line[11];?>">
               </div>
             </div>
             
            
        
      </div>
      <div class="modal-footer" align="center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button> 
        <button type="submit" class="btn btn-primary" onclick="actualiza_equipo.php">Actualizar</button>
        
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
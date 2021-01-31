<?php 
include ("../dll/config.php");
require '../dll/mysql.php'; 
extract($_POST);
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
            <a class="nav-link" href="archivo.php">Listado de Expedientes del Archivo Provincial</a>
          </li>
          <form class="form-inline" action="archivo.php" method="post">
            <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="campo">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
          </form>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Gestión de Expedientes</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" data-toggle="modal" data-target="#staticBackdrop1">Ingreso de Expedientes</a>
                           
            </div>
            <li class="nav-item">
            <a class="nav-link" href="../index.php">Salir</a>
          </li>
          </li>
        </ul>
      </div>
    </nav>
 

    </div>

  </div>
  
</div> <!-- Fin de contenidos 1 -->

<div class="container" id="main">
 <?php
 if(empty($_POST['campo'])){

    $query = "SELECT folio, resolucion, fecha, descripcion, clase, servicio, accion, fisico, observacion, archivo FROM expedientes ORDER BY fecha";
    $resultado = $my_sqli->query($query);
  }
  else{
    
      $query = "SELECT folio, resolucion, fecha, descripcion, clase, servicio, accion, fisico, observacion, archivo FROM expedientes WHERE folio LIKE '%$campo%' OR resolucion LIKE '%$campo%' OR fecha LIKE '%$campo%' OR descripcion LIKE '%$campo%' OR clase LIKE '%$campo%' OR servicio LIKE '%$campo%' OR accion LIKE '%$campo%' OR fisico LIKE '%$campo%' OR observacion LIKE '%$campo%' ORDER BY fecha";

    $resultado = $my_sqli->query($query);

  }

  
  echo "<table id='table' class='table table-hover' align='center'>";/*Creacion de tabla para mostrar resultados de consulta a la BDD*/
        echo "<tr>";
          echo "<td><strong>#</strong></td>";
          echo "<td><strong>EXPEDIENTE</strong></td>";
          echo "<td><strong>RESOLUCION</strong></td>";
          echo "<td><strong>FECHA</strong></td>";
          echo "<td><strong>DESCRIPCION</strong></td>";
          echo "<td><strong>CLASE</strong></td>";
          echo "<td><strong>SERVICIO</strong></td>";
          echo "<td><strong>ACCION</strong></td>";
          echo "<td><strong>UBICACION</strong></td>";
          echo "<td><strong>OBSERVACION</strong></td>";
          echo "<td><strong>DIGITAL</strong></td>";
          echo "</tr>";
        $cont = 0;
        while($line1 = mysqli_fetch_row($resultado)){
          echo "<tr>";
          $cont++;
          echo "<td><strong>$cont</strong></td>";
          echo "<td><a href='editar_archivo.php?folio=$line1[0]'>$line1[0]</a></td>"; 
          echo "<td>$line1[1]</td>";
          echo "<td>$line1[2]</td>";
          echo "<td>$line1[3]</td>"; 
          echo "<td>$line1[4]</td>";
          echo "<td>$line1[5]</td>";
          echo "<td>$line1[6]</td>";
          echo "<td>$line1[7]</td>";
          echo "<td>$line1[8]</td>"; 
          echo "<td><a href='$line1[9]' target='_blank'><i class='fas fa-download'></i></a></td>";
      //     echo "<td><a href='$line[9]' target='_blank'>ver</a> </td>";
      // 
          echo "</tr>";
          }
        echo "</table>";
?>
</div>

<!-- MODAL -->
<!-- CREACIÓN DE ARCHIVOS -->
 <div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="far fa-file-archive"></i><strong>&nbsp;&nbsp;Ingreso de Expedientes Archivo ANT-DPP</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="crea_archivo" action="crea_archivo.php" method="post" enctype="multipart/form-data">
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="avaluac">Expediente/Folio:</label>
                <input type="form-text" class="form-control form-control-sm" id="folio" name="folio" maxlength="45">
              </div>
              <div class="form-group col-md-6">
                <label for="ant">Resolución:</label>
                <input type="form-text" class="form-control form-control-sm" id="resolucion" name="resolucion"  maxlength="45">
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col">
                <label for="descripcion">Descripcion</label>
                <input type="form-text" class="form-control form-control-sm" id="descripcion" name="descripcion" maxlength="128" required>
              </div>
            </div>
             <div class="form-row"> 
              <div class="form-group col-md-4">
                <label for="fecha">Fecha:</label>
                <input type="date" class="form-control form-control-sm" id="fecha" name="fecha" maxlength="30">
              </div>
              <div class="form-group col-md-8">
                <label for="servicio">Clase:</label>
                  <select class="custom-select-sm float-left" name="clase" id="clase">
                  <option value="0">Seleccionar:</option> 
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
                  <option value="0">Seleccionar:</option> 
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
                  <option value="0">Seleccionar:</option> 
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
                  <option value="0">Seleccionar:</option> 
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
                 <input type="form-text" class="form-control form-control-sm" id="observacion" name="observacion" maxlength="128">
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
        <button type="submit" class="btn btn-primary" onclick="crea_expediente.php">Ingresar</button>
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
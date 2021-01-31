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
            <a class="nav-link" href="its.php">Catálogo de Equipos</a>
          </li>
          <form class="form-inline" action="its.php" method="post">
            <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="campo">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
          </form>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Gestión de Equipos
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" data-toggle="modal" data-target="#staticBackdrop1">Ingreso de Equipos</a>
              <a class="dropdown-item" href="<?=$url_sitio?>requires/tickets.php">Tickets de Mantenimiento</a>
              <a class="dropdown-item" href="<?=$url_sitio?>requires/reparaciones.php">Equipos en Reparación</a>
                           
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
</div>
<div class="container" id="main">
 <?php
 if(empty($_POST['campo'])){

    // $query = "SELECT a.cod_avaluac, a.cod_ant, a.cod_esbye, a.serie, a.marca, a.modelo, a.descripcion, a.observacion, b.apellidos, b.nombres FROM equipostecnologicos a INNER JOIN personas b ON a.custodios_idcustodio = b.idpersona ORDER BY a.descripcion";
  $query = "SELECT a.cod_avaluac, a.cod_ant, a.cod_esbye, a.serie, a.marca, a.modelo, a.descripcion, a.observacion, b.apellidos, b.nombres FROM equipostecnologicos a, personas b, custodios c WHERE a.custodios_idcustodio = c.idcustodio AND c.personas_idpersona = b.idpersona ORDER BY a.descripcion";
    $resultado = $my_sqli->query($query);
  }
  else{
    
    $query = "SELECT a.cod_avaluac, a.cod_ant, a.cod_esbye, a.serie, a.marca, a.modelo, a.descripcion, a.observacion, b.apellidos, b.nombres FROM equipostecnologicos a, personas b, custodios c WHERE a.custodios_idcustodio = c.idcustodio AND c.personas_idpersona = b.idpersona AND (a.cod_avaluac LIKE '%$campo%' OR a.cod_ant LIKE '%$campo%' OR a.cod_esbye LIKE '%$campo%' OR a.serie LIKE '%$campo%' OR a.marca LIKE '%$campo%' OR a.modelo LIKE '%$campo%' OR a.descripcion LIKE '%$campo%' OR a.observacion LIKE '%$campo%' OR b.apellidos LIKE '%$campo%' OR b.nombres LIKE '%$campo%') ORDER BY a.descripcion";

    $resultado = $my_sqli->query($query);

  }

  
  echo "<table id='table' class='table table-hover' align='center'>";/*Creacion de tabla para mostrar resultados de consulta a la BDD*/
        echo "<tr>";
          echo "<td><strong>#</strong></td>";
          echo "<td><strong>COD_AVALUAC</strong></td>";
          echo "<td><strong>COD_ANT</strong></td>";
          //echo "<td><strong>COD_ESBYE</strong></td>";
          echo "<td><strong>SERIE</strong></td>";
          echo "<td><strong>MARCA</strong></td>";
          echo "<td><strong>MODELO</strong></td>";
          echo "<td><strong>DESCRIPCION</strong></td>";
          echo "<td><strong>OBSERVACION</strong></td>";
          echo "<td><strong>CUSTODIO</strong></td>";
          echo "</tr>";
        $cont = 0;
        while($line1 = mysqli_fetch_row($resultado)){
          echo "<tr>";
          $cont++;
          echo "<td><strong>$cont</strong></td>";
          echo "<td>$line1[0]</td>";          
          echo "<td>$line1[1]</td>";
          //echo "<td>$line1[2]</td>";
          echo "<td><a href='editar_equipo.php?serie=$line1[3]'>$line1[3]</a></td>"; 
          echo "<td>$line1[4]</td>";
          echo "<td>$line1[5]</td>";
          echo "<td>$line1[6]</td>";
          echo "<td>$line1[7]</td>";
          echo "<td>$line1[8] $line1[9]</td>";
          echo "<td><a href='editar_equipo.php?serie=$line1[3]'><i class='fas fa-pencil-alt float-right'></i></a></td>";
          echo "<td><a href='eliminar.php?serie=$line1[3]'><i class='far fa-trash-alt'></i></a></td>";

      
          echo "</tr>";
          }
        echo "</table>";
?>
</div>

<!-- MODAL -->
<!-- CREACIÓN DE EQUIPOS -->
 <div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-desktop"></i><strong>&nbsp;&nbsp;Ingreso de Equipos</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="crea_eq" action="crea_equipo.php" method="post" enctype="multipart/form-data">
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="avaluac">CODIGO AVALUAC</label>
                <input type="form-text" class="form-control" id="avaluac" name="avaluac" pattern="^[0-9]+" maxlength="20">
              </div>
              <div class="form-group col-md-6">
                <label for="ant">CODIGO ANT</label>
                <input type="form-text" class="form-control" id="ant" name="ant"  maxlength="20">
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="esbye">CODIGO ESBYE</label>
                <input type="form-text" class="form-control" id="esbye" name="esbye" maxlength="30">
              </div>
              <div class="form-group col-md-6">
                <label for="serie">SERIE</label>
                <input type="form-text" class="form-control" id="serie" name="serie" maxlength="70" required>
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="marca">Marca</label>
                <input type="form-text" class="form-control" id="marca" name="marca" maxlength="70">
              </div>
              <div class="form-group col-md-6">
                <label for="modelo">Modelo</label>
                <input type="form-text" class="form-control" id="modelo" name="modelo" maxlength="70">

              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="descripcion">Descripcion</label>
                <input type="form-text" class="form-control" id="descripcion" name="descripcion" maxlength="70" required>
              </div>
              <div class="form-group col-md-6">
                <label for="color">Color</label>
                <input type="form-text" class="form-control" id="color" name="color" maxlength="30">
              </div>
             </div>

             <div class="form-row">
               <div class="form-group col-md-12 form-control-sm">
                <label for="custodio">Asignar custodio</label>
                
                <select class="custom-select-sm float-right" name="custodio" id="custodio">
                  <option value="0">Seleccionar:</option> 
                  <!-- BUSQUEDA EN LA TABLA DE departamentos PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT a.apellidos, a.nombres, b.personas_idpersona, B.idcustodio FROM personas a, custodios b WHERE a.idpersona = b.personas_idpersona ");
                  while($valores = mysqli_fetch_array($consulta)){
                    echo '<option value="'.$valores[idcustodio].'">'.$valores[apellidos].' '.$valores[nombres].'</option>';
                  }
                  ?>

                </select>


              </div>

             </div>
             

             <div class="form-row">
               <div class="form-group col">
                 <label for="observacion">Observación:</label>
                 <input type="form-text" class="form-control" id="observacion" name="observacion" maxlength="70">
               </div>
             </div>
             
            
        
      </div>
      <div class="modal-footer" align="center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button> 
        <button type="submit" class="btn btn-primary" onclick="crea_equipo.php">Ingresar</button>
        
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
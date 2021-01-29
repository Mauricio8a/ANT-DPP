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
    <!-- Para seleccionar fecha -->
    <

    <title><?php echo $nom_sitio; ?></title>
  </head>
  <body>
    <?php include ("header.php"); ?>

<!--Contenidos -->


<div class="container" id="main">
<!-- Formulario de ingreso de tickets de mantenimiento -->
    

    <form action="tickets.php" method="post">
            <div class="form-row">
              <div class="form-group col-md-3">
                <input class="form-control form-control-sm" type="Ticket" placeholder="Ticket" aria-label="Search" name="ticket" readonly>
              </div>
              <div class="form-group col-md-1">
                <button class="btn btn-outline-success btn-sm" type="button" onclick="location.href='http://www.ant.gob.ec'"><i class="fas fa-search"></i></button>
              </div>
              <div class="form-group col-md-3">
                <input class="form-control form-control-sm" type="date" placeholder="Fecha" aria-label="datetime" name="fecha">
              </div>
              <div class="form-group col-md-1">
                <button class="btn btn-outline-success btn-sm" type="button" onclick="location.href='http://www.ant.gob.ec'"><i class="fas fa-search"></i></button>
              </div>
              <div class="form-group col-md-3">
                <input class="form-control form-control-sm" type="search" placeholder="Técnico" aria-label="Search" name="tecnico">
              </div>
              <div class="form-group col-md-1">
                <button class="btn btn-outline-success btn-sm" type="button" onclick="location.href='http://www.ant.gob.ec'"><i class="fas fa-search"></i></button>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-3">
                <input class="form-control form-control-sm" type="search" placeholder="Usuario" aria-label="Usuario" name="usuario">
              </div>
              <div class="form-group col-md-1">
                <button class="btn btn-outline-success btn-sm" type="button"><i class="fas fa-search"></i></button></div>
              <div class="form-group col-md-3">
                <input class="form-control form-control-sm" type="search" placeholder="Equipo" aria-label="Equipo" name="equipo">
              </div>
              <div class="form-group col-md-1">
                <button class="btn btn-outline-success btn-sm" type="submit"><i class="fas fa-search"></i></button>
              </div>
              <div class="form-group col-md-4">
                <label for="tipo" class="form-label">Tipo:</label>
                <select class="custom-select-sm">
                  <option>Mantenimiento preventivo</option>
                  <option>Mantenimiento correctivo</option>
                  <option>Revisión e inspección</option>
                </select>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-2">
                <button class="btn-group btn-sm" type="submit">Generar Ticket</button>
              </div>
              <div class="form-group col-md-2">
                <button class="btn-group btn-sm" type="submit">Eliminar Ticket</button>
              </div>
              <div class="form-group col-md-2">
                <button class="btn-group btn-sm" type="submit">Limpiar Ticket</button>
              </div>
              <div class="form-group col-md-6 ">
                 <a href="<?=$url_sitio?>requires/its.php" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Salir</a>
              </div>
            </div>


            
            
    </form>
</div>

<div class="container" id="main">
<!-- Listado de Tickets de Mantenimiento
 --> 
 <?php
 if(empty($_POST['campo'])){

    $query = "SELECT * FROM tickets";
    $resultado = $my_sqli->query($query);
  }
  else{
    $query = "SELECT cod_avaluac, cod_ant, cod_esbye, serie, marca, modelo, descripcion, color, observacion FROM equipostecnologicos WHERE cod_avaluac LIKE '$campo%' OR cod_ant LIKE '$campo%' OR cod_esbye LIKE '$campo%' OR serie LIKE '$campo%' OR marca LIKE '$campo%' OR modelo LIKE '$campo%' OR descripcion LIKE '$campo%' OR color LIKE '$campo%' OR observacion LIKE '$campo%'";
      $resultado = $my_sqli->query($query);

  }

  
  echo "<table id='table' align='center'>";/*Creacion de tabla para mostrar resultados de consulta a la BDD*/
        echo "<tr>";
          echo "<td><strong>TICKET#</strong></td>";
          echo "<td><strong>FECHA</strong></td>";
          echo "<td><strong>TIPO-SRV</strong></td>";
          echo "<td><strong>TECNICO</strong></td>";
          echo "<td><strong>USUARIO</strong></td>";
          echo "<td><strong>EQUIPO</strong></td>";
          echo "<td><strong>SERIE</strong></td>";
          echo "<td><strong>OBSERVACION</strong></td>";
          echo "</tr>";
        $cont = 0;
        while($line1 = mysqli_fetch_row($resultado)){
          echo "<tr>";
          $cont++;
          echo "<td><strong>$cont</strong></td>";
          echo "<td><a href='editar.php?cedula=$line1[0]'>$line1[0]</a></td>";          
          echo "<td>$line1[1]</td>";
          echo "<td>$line1[2]</td>";
          echo "<td>$line1[3]</td>";
          echo "<td>$line1[4]</td>";
          echo "<td>$line1[5]</td>";
          echo "<td>$line1[6]</td>";
          echo "<td><a href='editar.php?cedula=$line1[0]'><i class='fas fa-pencil-alt float-right'></i></a></td>";
          echo "<td><a href='eliminar.php?cedula=$line1[0]'><i class='far fa-trash-alt'></i></a></td>";

          // echo "<td><a href='editar.php?id=$line1[0]' class='editar'><span class='icon-pencil'></span></a>";
          // echo "<td><a href='eliminar.php?cedula=$line1[1]' class='eliminar'><span class='icon-trashcan'></span></a>";
          // echo "<td><a href='prefactura.php?cedula=$line1[1]' class='prefactura' alt='Prefactura'><span class='icon-creditcard'></span></a>";
          echo "</tr>";
          }
        echo "</table>";
?>
</div>







    <?php include ("footer.php"); ?>
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
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
            <a class="nav-link" href="its.php">Listado de Equipos</a>
          </li>
          <form class="form-inline" action="its.php" method="post">
            <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="campo">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
          </form>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Gestión de Equipos
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="<?=$url_sitio?>requires/tickets.php">Tickets de Mantenimiento</a>
              <a class="dropdown-item" href="<?=$url_sitio?>requires/crea_equipo.php">Ingreso de Equipos</a>
              <a class="dropdown-item" href="<?=$url_sitio?>requires/reparaciones.php">Equipos en Reparación</a>
              <!-- <a class="dropdown-item" href="#">Editar Usuarios</a> -->
             
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

    $query = "SELECT cod_avaluac, cod_ant, cod_esbye, serie, marca, modelo, descripcion, color, observacion FROM equipostecnologicos";
    $resultado = $my_sqli->query($query);
  }
  else{
    $query = "SELECT cod_avaluac, cod_ant, cod_esbye, serie, marca, modelo, descripcion, color, observacion FROM equipostecnologicos WHERE cod_avaluac LIKE '$campo%' OR cod_ant LIKE '$campo%' OR cod_esbye LIKE '$campo%' OR serie LIKE '$campo%' OR marca LIKE '$campo%' OR modelo LIKE '$campo%' OR descripcion LIKE '$campo%' OR color LIKE '$campo%' OR observacion LIKE '$campo%'";
      
    //$resultado->bindParam(':field', $_POST['campo']);
    $resultado = $my_sqli->query($query);

  }

  
  echo "<table id='table' align='center'>";/*Creacion de tabla para mostrar resultados de consulta a la BDD*/
        echo "<tr>";
          echo "<td><strong>#</strong></td>";
          echo "<td><strong>COD_AVALUAC</strong></td>";
          echo "<td><strong>COD_ANT</strong></td>";
          echo "<td><strong>COD_ESBYE</strong></td>";
          echo "<td><strong>SERIE</strong></td>";
          echo "<td><strong>MARCA</strong></td>";
          echo "<td><strong>MODELO</strong></td>";
          echo "<td><strong>DESCRIPCION</strong></td>";
          echo "<td><strong>COLOR</strong></td>";
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
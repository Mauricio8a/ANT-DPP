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
            <a class="nav-link" href="admin.php">Listado de Personal</a>
          </li>
          <form class="form-inline" action="admin.php" method="post">
            <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" name="campo">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
          </form>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Gestión de Usuarios</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" data-toggle="modal" data-target="#staticBackdrop1">Crear Usuarios</a>
              
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

    $query = "SELECT a.cedula, a.apellidos, a.nombres, a.cargo, a.email, a.telefono, b.descripcion FROM personas a INNER JOIN departamentos b ON a.departamentos_iddepartamento = b.iddepartamento ORDER BY a.apellidos";
    $resultado = $my_sqli->query($query);
  }
  else{
    $query = "SELECT a.cedula, a.apellidos, a.nombres, a.cargo, a.email, a.telefono, b.descripcion FROM personas a INNER JOIN departamentos b ON a.departamentos_iddepartamento = b.iddepartamento AND (a.nombres LIKE '%$campo%' OR a.apellidos LIKE '%$campo%' OR a.cedula LIKE '%$campo%' OR a.cargo LIKE '%$campo%' OR b.descripcion LIKE '%$campo%') ORDER BY b.descripcion";

    $resultado = $my_sqli->query($query);

  }

  
  echo "<table id='table' align='center'>";/*Creacion de tabla para mostrar resultados de consulta a la BDD*/
        echo "<tr>";
          echo "<td><strong>#</strong></td>";
          echo "<td><strong>CEDULA</strong></td>";
          echo "<td><strong>APELLIDOS</strong></td>";
          echo "<td><strong>NOMBRES</strong></td>";
          echo "<td><strong>CARGO</strong></td>";
          echo "<td><strong>EMAIL</strong></td>";
          ECHO "<td><strong>TELEFONO</strong></td>";
          echo "<td><strong>DEPARTAMENTO</strong></td>";
          echo "</tr>";
        $cont = 0;
        while($line1 = mysqli_fetch_row($resultado)){
          echo "<tr>";
          $cont++;
          echo "<td><strong>$cont</strong></td>";
          echo "<td><a href='editar_usuario.php?cedula=$line1[0]'>$line1[0]</a></td>";          
          echo "<td>$line1[1]</td>";
          echo "<td>$line1[2]</td>";
          echo "<td>$line1[3]</td>";
          echo "<td>$line1[4]</td>";
          echo "<td>$line1[5]</td>";
          echo "<td>$line1[6]</td>";
          
          echo "<td><a href='editar_usuario.php?cedula=$line1[0]'><i class='fas fa-pencil-alt float-right'></i></a></td>";
          echo "<td><a href='eliminar_usuario.php?cedula=$line1[0]'><i class='far fa-trash-alt'></i></a></td>";
          echo "</tr>";
          }
        echo "</table>";
?>
</div>

<!-- MODAL -->
<!-- CREACIÓN DE USUARIOS -->
 <div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-user-plus"></i><strong>&nbsp;&nbsp;Creación de personal</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="crea_usu" action="crea_usuario.php" method="post" onsubmit="return valida_form();" enctype="multipart/form-data">
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="cedula">Cédula</label>
                <input type="form-text" class="form-control" id="cedula" name="cedula" pattern="^[0-9]+" minlength="10" maxlength="10" required>
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="cedula">Apellidos</label>
                <input type="form-text" class="form-control" id="apellidos" name="apellidos" maxlength="70" required>
              </div>
              <div class="form-group col-md-6">
                <label for="nombres">Nombres</label>
                <input type="form-text" class="form-control" id="nombres" name="nombres" maxlength="70" required>
              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="cargo">Cargo</label>
                <input type="form-text" class="form-control" id="cargo" name="cargo" maxlength="70" required>
              </div>
              <div class="form-group col-md-6">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" pattern="^[\w.\w]+@ant.gob.ec" maxlength="128" placeholder="@ant.gob.ec" required>

              </div>
             </div> 
             <div class="form-row"> 
              <div class="form-group col-md-6">
                <label for="direccion">Dirección</label>
                <input type="form-text" class="form-control" id="direccion" name="direccion" maxlength="70" required>
              </div>
              <div class="form-group col-md-6">
                <label for="telefono">Teléfono</label>
                <input type="form-text" class="form-control" id="telefono" name="telefono" pattern="^[0-9]+" maxlength="10" required>
              </div>
             </div>

             <div class="form-row">
               <div class="form-group col-md-12">
                <label for="departamento">Departamento</label>
                

                <!-- <input type="form-text" class="form-control" id="departamento" name="departamento" value="<?php echo $line[7];?>" pattern="^[0-9]+" maxlength="10" required> -->
                <select class="custom-select-sm float-right" name="departamento" id="departamento">
                  <option value="0">Seleccionar:</option> 
                  <!-- BUSQUEDA EN LA TABLA DE departamentos PARA LLENAR EL COMBO BOX -->
                  <?php
                  $consulta = $my_sqli->query("SELECT iddepartamento, descripcion FROM departamentos");
                  while($valores = mysqli_fetch_array($consulta)){
                    echo '<option value="'.$valores[iddepartamento].'">'.$valores[descripcion].'</option>';
                  }
                  ?>

                </select>


              </div>

             </div>
             
             <div class="form-row">
               <div class="form-group col">
                 <label for="foto">Fotografía</label>
                 <input type="file" class="form-control" id="imagen" name="imagen" >
               </div>
             </div>
             
            
        
      </div>
      <div class="modal-footer" align="center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button> 
        <button type="submit" class="btn btn-primary" onclick="valida_form();">Crear</button>
        
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
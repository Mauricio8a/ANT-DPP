<?php 
include ("dll/config.php");
require 'dll/mysql.php'; 
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
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="https://kit.fontawesome.com/cc208d15cb.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="<?=$url_sitio?>img/favicon-32x32.png"/>
    <title><?php echo $nom_sitio; ?></title>
  </head>
  <body>
    <?php include ("requires/header.php"); ?>
    <!-- Contenidos -->
    <div class="container" id="main">
  <div class="row">
      <div class="col-md-4" align="center">
        <img src="img/eqs.jpg" alt="Equipos" align="center">
        <p><i class="fas fa-desktop fa-2x"></i>&nbsp;&nbsp;Sistema de <strong>Control de Equipos</strong></p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop1">Ingresar</button>
        <!-- <button type="button" class="btn btn-secondary" data-toggle="modal" data-target= "#staticBackdrop4">Registrarse</button> -->
      </div>
      <div class="col-md-4" align="center">
        <img src="img/arch.jpg" height="180" alt="Archivo" align="center">
        <p><i class="fas fa-file-alt fa-2x"></i>&nbsp;&nbsp;Sistema de <strong>Consulta de Archivo Provincial</strong></p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop2">Ingresar</button>
        <!-- <button type="button" class="btn btn-secondary" data-toggle="modal" data-target= "#staticBackdrop4">Registrarse</button> -->
      </div>
      <div class="col-md-4" align="center">
        <img src="img/quipux.jpg" height="180" alt="Quipux" align="center">
        <p><i class="fas fa-network-wired fa-2x"></i>&nbsp;&nbsp;Sistema de <strong>Seguimiento QUIPUX</strong></p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop3">Ingresar</button>
        <!-- <button type="button" class="btn btn-secondary" data-toggle="modal" data-target= "#staticBackdrop4" >Registrarse</button> -->
      </div>
    </div>
    <div class="row">
      <div class="col-md-12" align="center">
        <p><br><br>
      <h4><i class="fas fa-user-lock fa-2x"></i>&nbsp;&nbsp;&nbsp;&nbsp;Ingreso al portal de <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop5"><strong>Administración</strong></button></h4>
      </div>
    </div> 
    <div class="row">
      <div class="col-md-12">
        <p><br>
        Esta herramienta es de uso exclusivo para los funcionarios de la Agencia Nacional de Tránsito de la Dirección Provincial de Pichincha, su funcionalidad radica en el uso de consultas a sistemas de administración pública e información de confidencialidad interna.
        </p>  
      </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-desktop"></i><strong>&nbsp;&nbsp;Ingreso al Sistema de Control de Equipos</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <div class="form-group">
              <label for="exampleInputEmail1"><i class="fas fa-user"></i>&nbsp;&nbsp;E-mail</label>
              
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              <small id="emailHelp" class="form-text text-muted">Ingrese su e-mail como nombre de usuario.</small>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><i class="fas fa-key"></i>&nbsp;&nbsp;Contraseña</label>
              <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
        <button type="button" class="btn btn-primary">Ingresar</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-file-alt"></i>&nbsp;&nbsp;<strong>Ingreso - Consulta de Archivo</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <div class="form-group">
              <label for="exampleInputEmail1"><i class="fas fa-user"></i>&nbsp;&nbsp;E-mail</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              <small id="emailHelp" class="form-text text-muted">Ingrese su e-mail como nombre de usuario.</small>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><i class="fas fa-key"></i>&nbsp;&nbsp;Contraseña</label>
              <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
        <button type="button" class="btn btn-primary">Ingresar</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="staticBackdrop3" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-network-wired"></i>&nbsp;&nbsp<strong>Ingreso - Consulta de Quipux Firmados</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <div class="form-group">
              <label for="exampleInputEmail1"><i class="fas fa-user"></i>&nbsp;&nbsp;E-mail</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              <small id="emailHelp" class="form-text text-muted">Ingrese su e-mail como nombre de usuario.</small>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><i class="fas fa-key"></i>&nbsp;&nbsp;Contraseña</label>
              <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
        <button type="button" class="btn btn-primary">Ingresar</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="staticBackdrop4" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><strong>Registro de Nuevo Usuario</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <div class="form-group">
              <label for="exampleInputEmail1"><i class="fas fa-user"></i>&nbsp;&nbsp;E-mail</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              <small id="emailHelp" class="form-text text-muted">Ingrese su e-mail institucional como nombre de usuario.</small>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><i class="fas fa-key"></i>&nbsp;&nbsp;Contraseña</label>
              <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><i class="fas fa-key"></i>&nbsp;&nbsp;Repetir Contraseña</label>
              <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
        <button type="button" class="btn btn-primary">Registrarse</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="staticBackdrop5" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-user-lock"></i>&nbsp;&nbsp;&nbsp;&nbsp;<strong>Ingreso Administrador Web</strong></h5>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="login.php">
            <div class="form-group">
              <label for="exampleInputEmail1"><i class="fas fa-user"></i>&nbsp;&nbsp;Usuario</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="user" >
              <small id="emailHelp" class="form-text text-muted">Ingrese su nombre de usuario.</small>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><i class="fas fa-key"></i>&nbsp;&nbsp;Contraseña</label>
              <input type="password" class="form-control" id="exampleInputPassword1" name="pass">
            </div>
          <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
        <button type="submit" class="btn btn-primary" >Ingresar</button>
      </div>   
        </form>
      </div>
     
    </div>
  </div>
</div>


    <?php include ("requires/footer.php"); ?>
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>  
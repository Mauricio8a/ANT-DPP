<?php 
include ("../dll/config.php");
require '../dll/mysql.php'; 
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
    <!-- <h3 align="center">Módulo en construcción</h3> -->
    <h4 align="center">Estamos ubicados en el Edificio Matriz de la <a href="https://www.ant.gob.ec/">Agencia Nacional de Tránsito</a></h4>
    
    <div class="row">
    <div class="col-md-6">
      <h5>Dirección:</h5>
      <p>Av Antonio José de Sucre y José Sánchez, Quito - Pichincha</p>
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.8067994417593!2d-78.5041202851708!3d-0.13769063549058486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91d5853768a1cf23%3A0x94041820c357c426!2sAgencia%20Nacional%20de%20Transito!5e0!3m2!1ses!2sec!4v1612024690687!5m2!1ses!2sec" width="550" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
    <div class="col-md-6">
      <h5>Teléfonos:</h5>
      <p>PBX (593) Pichincha (02) 3-828-890</p>
      <br>Despacho #Ext: 2925
      <br>Secretaría #Ext: 2920
      <br>Coordinación Tecnológica. Ext 2950
      <br>
    </div>
  </div>
    
  <div class="row">
    <div class="col-md-12">
      <p align="center">Diseño y programación <a href="mailto:mauricio.ochoa@ant.gob.ec">Mauricio Ochoa:</a>0984814350</p>
    </div>
  </div>
</div> <!-- Fin de contenidos 1 -->




    <?php include ("footer.php"); ?>
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>  
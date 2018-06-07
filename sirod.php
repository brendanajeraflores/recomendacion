<!DOCTYPE html>
<html lang="en">
<head>
  <title>SIROD</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h1>Sistema de recomendación para salir de vacaciones.</h2>
  <h4>Brenda Najera Flores</h4>
  <form method="POST">
    <div >
      <label for="tipo">Seleccione su preferencia</label><br>        
        <label class="radio-inline">
            <input type="radio" name="playa">Playa
        </label><br><br>
        <label class="radio-inline">
            <input type="radio" name="ciudad">Ciudad
        </label><br><br>
        <label class="radio-inline">
            <input type="radio" name="fiestas">Fiestas
        </label><br><br>
        <label class="radio-inline">
            <input type="radio" name="ruinas">Ruinas
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Seleccionar</button><br><br>
  </form>

  <?php

  if(isset($_POST["playa"])){
    //$playa = "playa"
    $output = exec('swipl -s sirod.pl -g vacaciones(Ciudad,enero,playa). -t halt.');
    if (!empty($output)){ ?>
    <h3>Los Cabos</h3>
    <?php echo $output;?>
    <img src="img/cabos.jpg" width="50%" height="50%" class="img-responsive center-block"><br>
  <?php } else {
    echo "No se encontraron resultados";
  }
  
  }


  if(isset($_POST["ciudad"])){
    //$playa = "playa"
    $output = exec('swipl -s sirod.pl -g vacaciones(Ciudad,enero,ciudad). -t halt.');?>
    <h3>Nueva York</h3>
    <?php
    echo $output;?>
    <img src="img/new.jpg" width="50%" height="50%" class="img-responsive center-block"><br>
  <?php }

  if(isset($_POST["fiestas"])){
    //$playa = "playa"
    $output = exec('swipl -s sirod.pl -g vacaciones(Ciudad,enero,fiestas). -t halt.');?>
    <h3>Acapulco</h3>
    <?php
    echo $output;?>
    <img src="img/acapulco.jpg" width="50%" height="50%" class="img-responsive center-block"><br>
  <?php }

  if(isset($_POST["ruinas"])){
    //$playa = "playa"
    $output = exec('swipl -s sirod.pl -g vacaciones(Ciudad,enero,ruinas). -t halt.');?>
    <h3>Cancun</h3>
    <?php
    echo $output;?>
    <img src="img/cancun.jpg" width="50%" height="50%" class="img-responsive center-block"><br>
  <?php }



?>
</div>
</body>
</html>
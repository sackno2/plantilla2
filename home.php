<?php
  $page_title = 'Home Page';
  require_once('includes/load.php');
  if (!$session->isUserLoggedIn(true)) { redirect('index.php', false);}
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
 <div class="col-md-12">
    <div class="panel">
      <div class="jumbotron text-center">
         <h1><img src="libs/images/logoadescotab.png" width="189" height="57" alt=""/></h1>
         <h1>Asociación de Desarrollo comunal Tabloncito</h1>
         <h2>Sistema de Administración de Servicio de Agua Potable</h2>
     
      </div>
    </div>
 </div>
</div>
<?php include_once('layouts/footer.php'); ?>

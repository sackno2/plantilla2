<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
?>
<?php
  $desconexion = find_by_id8('inv_reconexion',(int)$_GET['id']);
  if(!$desconexion){
    $session->msg("d","ID vacío");
    redirect('lis_reconexion.php');
  }

  $desconexion_id = delete_by_id8('inv_reconexion',(int)$desconexion['cod_cuenta']);
  if($desconexion_id){
      $session->msg("s","Reconexión eliminado");
	  redirect('lis_reconexion.php');
	  
  } else {
      $session->msg("d","Eliminación falló");
      redirect('lis_reconexion.php');
  }
?>

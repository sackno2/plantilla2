<?php
  $page_title = 'Desconexión';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
   $reg_desconexion = find_by_id_filtro('inv_desconexion',(int)$_GET['id']);
   $rec_cliente = find_by_id_filtro2('inv_cliente',(int)$_GET['id']);
?>

<?php
 if(isset($_POST['edit_desconexion'])){
     echo $_POST['num_cuenta'];
   
   $req_fields = array('num_cuenta','fecha_rec','nombres_rec','apellidos_rec', 'motivo_rec','fecha_eje','solucion_des','detalle_des');
   validate_fields($req_fields);
   if(empty($errors)){
     
     $c_numcuenta   = remove_junk($db->escape($_POST['num_cuenta']));
     $c_fecharec   = remove_junk($db->escape($_POST['fecha_rec']));
     $c_nombresrec   = remove_junk($db->escape($_POST['nombres_rec']));
     $c_apellidosrec  = remove_junk($db->escape($_POST['apellidos_rec']));
     $c_motivorec  = remove_junk($db->escape($_POST['motivo_rec']));
   $c_fechaeje  = remove_junk($db->escape($_POST['fecha_eje']));
   $c_soluciondes  = remove_junk($db->escape($_POST['solucion_des']));
     if (is_null($_POST['detalle_des']) || $_POST['detalle_des'] === "") {
       $asigna_m = '0';
     } else {
       $c_detalledes = remove_junk($db->escape($_POST['detalle_des']));
     }
  
     
       
   $query  = "UPDATE inv_desconexion SET cod_cuenta='{$c_numcuenta}', fecha_orden='{$c_fecharec}', motivo='{$c_motivorec}', fecha_ejecucion='{$c_fechaeje}', ejecutada='{$c_soluciondes}', observacion='{$c_detalledes}' WHERE cod_cuenta='$reg_desconexion[cod_cuenta]'";
     
//Rutina desactivar cliente
if($c_soluciondes==="SI"){
  
  $query2 = "UPDATE inv_cliente SET estado='1' WHERE num_cuenta ='$c_numcuenta'";
  $result2 =$db->query($query2);   
     
  } 
//fin rutina desactivar cliente 
   
     if($db->query($query)){
       $session->msg('s',"Desconexión agregado exitosamente. ");
       redirect('lis_desconexion.php', false);
     } else {
       $session->msg('d',' Lo siento, registro falló.');
       redirect('reg_desconexion.php', false);
     }
                

   } else{
       $session->msg("d", $errors);
       redirect('lis_desconexion.php',false);
   }

 }

?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
</div>
  <div class="row">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Editar Desconexión</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
         
 <!--Inicio formulario principal-->       
   <form method="post" action="edit_desconexion.php" class="clearfix"> 
 
 <div class="form-row">
 	<div class="form-group col-md-6">
      <label for="num_cuenta">Código de cuenta</label>
      <input type="text" name="num_cuenta" class="form-control" id="num_cuenta" value="<?php echo remove_junk($rec_cliente['num_cuenta']);?>" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="fecha_rec">Fecha</label>
      <input type="date" name="fecha_rec" class="form-control" id="fecha_rec" value="<?php echo remove_junk($reg_desconexion['fecha_orden']);?>" placeholder="dd/mm/aaaa" autofocus >
    </div>
  </div>
  <div class="form-row"> 
  <div class="form-group col-md-6">
    <label for="nombres_rec">Nombres</label>
    <input type="text" name="nombres_rec" class="form-control" placeholder="nombres_rec" value="<?php echo remove_junk($rec_cliente['nombre']);?>" autofocus required >  
  </div>  
  
  <div class="form-group col-md-6">
      <label for="apellidos_rec">Apellidos</label>
      <input type="text" name="apellidos_rec" class="form-control" id="apellido_rec" value="<?php echo remove_junk($rec_cliente['apellido']);?>" autofocus required>
    </div>
 
  </div>
   <div class="form-row">
 	<div class="form-group col-md-6">
      <label for="motivo_rec">Motivo</label>
      <select id="motivo_rec" name="motivo_rec" class="form-control">
        <option selected><?php echo remove_junk($reg_desconexion['motivo']);?></option>
        <option value="Acumulación de Mora">Acumulación de Mora</option>
        <option value="Solicitud de Cliente">Solicitud de Cliente</option>
        <option value="Reparaciones">Reparaciones</option>
        <option value="Venta de Inmueble">Venta de Inmueble</option>
        <option value="Otros">Otros</option>
      </select>
    </div>
    <div class="form-group col-md-6">
   <label for="fecha_eje">Fecha de ejecución</label>
      <input type="date" name="fecha_eje" class="form-control" id="fecha_eje" value="<?php echo remove_junk($reg_desconexion['fecha_ejecucion']);?>" placeholder="dd/mm/aaaa" autofocus >
	</div>
    <div class="form-group col-md-6">
      <label for="asignado_medidor">Observaciones</label>
      <textarea class="form-control" rows="3" name="detalle_des" placeholder="Detalles....."><?php echo remove_junk($reg_desconexion['observacion']);?></textarea>	     
    </div>
 </div>
 
  <div class="form-group col-md-12">
      <label for="solucion_des">DESCONECTAR</label>
      <select name="solucion_des" id="solucion_des">
       <option selected><?php echo remove_junk($reg_desconexion['ejecutada']);?></option>
       <option value="NO">NO</option>
       <option value="SI">SI</option>
      </select>	     
  </div>
 
  <div class="row">
      <div class="form-group col-md-4" align="center">
      <a href="lis_desconexion.php" class="btn btn-primary">Regresar</a>
      </div>
      <div class="form-group col-md-4" align="center">
      <input type="submit" name="edit_desconexion" id="submit" value="Guardar" class="btn btn-primary">
      </div>
      <div class="form-group col-md-4" align="right">
      <input type="submit" name="submit3" id="submit3" value="Reporte" class="btn btn-primary">
    </div>
  </div>

 </form> 
 
<!--Hasta aqui el formulario -->
         </div>
        </div>
      </div>
  </div>

<?php include_once('layouts/footer.php'); ?>

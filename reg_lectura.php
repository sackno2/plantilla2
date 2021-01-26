<?php
  $page_title = 'Lecturas';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
?>
<?php
$lec_cliente = find_by_id2('inv_cliente',(int)$_GET['id']); 
//$lec_cuenta = find_by_cta('inv_cliente',(int)$_GET['id']);
//$reg_lectura = lecturas_table();


//if(!$rec_cliente){
 //$session->msg("d","Cliente no encontrado por Codigo.",$rec_cliente);
 //redirect('reg_lectura.php');
//}
function mes_letras($mes)
 {
    switch($mes) 
   {
      case "1":
         $month = "Enero";
         break;
      case "2":
         $month = "Febrero";
         break;
      case "3":
         $month = "Marzo";
         break;
      case "4":
         $month = "Abril";
         break;
      case "5":
         $month = "Mayo";
         break;
      case "6":
         $month = "Junio";
         break;
      case "7":
         $month = "Julio";
         break;
      case "8":
         $month = "Agosto";
         break;
      case "9":
         $month = "Septiembre";
         break;
      case "10":
         $month = "Octubre";
         break;
      case "11":
         $month = "Noviembre";
         break;
      case "12":
         $month = "Diciembre";
         break;
   }
   
   return $month;
}
?>

<?php 


 if(isset($_POST['reg_lectura'])){
     echo $_POST['num_cuenta'];
     
    $req_fields = array('num_cuenta','mes_ini_n','anio_ini','lec_ant_li','lec_act_li','user_lect');
    validate_fields($req_fields);
    if(empty($errors)){
        $li_numcuenta   = remove_junk($db->escape($_POST['num_cuenta']));
        $li_mes   = remove_junk($db->escape($_POST['mes_ini_n']));
        $li_anio   = remove_junk($db->escape($_POST['anio_ini']));
        //calcular el ultimo dia del mes para fecha lectura
        function getUltimoDiaMes($elAnio,$elMes) {
        return date("d",(mktime(0,0,0,$elMes+1,1,$elAnio)-1));
        }
        //Ejemplo de uso ultimo dia
        $ultimoDia = getUltimoDiaMes(($_POST['anio_ini']),($_POST['mes_ini_n']));
        $li_fecha_lect = ($_POST['anio_ini']).'-'.($_POST['mes_ini_n']).'-'.$ultimoDia;	
        
        //$li_fecha_lect = $li_anio.'-'.$li_mes.'-'.$ultimoDia;	
        //$li_fecha_lect  = remove_junk($db->escape($_POST['fecha_lect_li']));
        $li_lec_ant  = remove_junk($db->escape($_POST['lec_ant_li']));
        $li_lec_act  = remove_junk($db->escape($_POST['lec_act_li']));
        //$li_consumo =  $li_lec_act - $li_lec_ant;
        $li_consumo = ($_POST['lec_act_li'])-($_POST['lec_ant_li']);
        $li_user  = remove_junk($db->escape($_POST['user_lect']));
        if (($_POST['lec_ant_li'])>($_POST['lec_act_li'])) {
            $li_cobro = 'v';
            } else {
              $li_cobro = 'c';
              }
       // no se permite la misma lectura inicial para la cuenta y mes y año
        $query_cta = "SELECT * FROM lecturas WHERE num_cuenta='$li_numcuenta'";
        $resul_cta = $db->query($query_cta);
        if($resul_cta->num_rows >= 1){    
        
                //if($db->query($query_cta)){
                $session->msg('d',"La Carga Inicial de Lectura para la cuenta ya fue agregada anteriormente".$num_cuenta);
                 //mysql_free_result($query_cta);
                redirect('reg_ini_lec1.php', false);
                }
                else
                {
                //efectua registro inicial de lectura, marca el recibo
                $query  = "INSERT INTO lecturas (num_cuenta,mes,anio,fecha_lectura,lectura_anterior, lectura_actual, consumo, user, cobro ) VALUES ('{$li_numcuenta}','{$li_mes}','{$li_anio}','{$li_fecha_lect}','{$li_lec_ant}', '{$li_lec_act}','{$li_consumo}', '{$li_user}', '{$li_cobro}')";
                if($db->query($query)){
                     $session->msg('s',"Lectura inical agregada exitosamente.".$num_cuenta);
                     redirect('reg_ini_lec1.php', false);
                    } else {
                $session->msg('d',' Lo siento, registro falló.');
                redirect('reg_lectura.php', false);
               } 
               }
    } else {
                    $session->msg("d", $errors);
                    redirect('reg_ini_lec1.php',false);
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
            <span>REGISTRO INICIAL DE LECTURA</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
         
 <!--Inicio formulario principal-->       
 <form method="post" action="reg_lectura.php" class="clearfix"> 
 
 <div class="form-row">
 	<div class="form-group col-md-4">
      <label for="num_cuenta">Código de cuenta</label>
      <input type="text" name="num_cuenta" class="form-control" id="num_cuenta" value="<?php echo remove_junk($lec_cliente['num_cuenta']);?>" readonly>
    </div>
         
     <div class="form-group col-md-4">
    <label for="nombres_rec">Nombres</label>
    <input type="text" name="nombres_rec" class="form-control" placeholder="nombres_rec" value="<?php echo remove_junk($lec_cliente['nombre']);?>" readonly >  
  </div>  
  
  <div class="form-group col-md-4">
      <label for="apellidos_rec">Apellidos</label>
      <input type="text" name="apellidos_rec" class="form-control" id="apellido_rec" value="<?php echo remove_junk($lec_cliente['apellido']);?>"  readonly>
    </div>
   </div>
       
  <div class="form-row"> 
  <div class="form-group col-md-6">
    <label for="lec_ant_li">Lectura anterior</label>
    <input type="number" name="lec_ant_li" class="form-control" min="0" value="0" readonly >  
  </div>  
  
  <div class="form-group col-md-6">
    <label for="lec_act_li">Lectura actual</label>
    <input type="number" name="lec_act_li" class="form-control" min="0" value="0" readonly>  
  </div>  
 
<?php $date = explode("/",date('d/m/Y'));
  list($day,$month,$year) = $date;
//echo $month.'/'.$day.'/'.$year.' '.$hour.':'.$min.':'.$sec;

//output: 03/08/2020 02:01:06


       
        
        $li_mes_i   = $month;
        $li_anio_i = $year;
        $li_mes_letra= mes_letras($li_mes_i);



?>
  </div>
   <div class="form-row">
 	<div class="form-group col-md-5">
      <label for="mes_ini">Mes Inicial</label>
      <input type="text" name="mes_ini" class="form-control" min="0" value="<?php echo $li_mes_letra;?>" readonly>

      <input type="hidden" name="mes_ini_n" class="form-control" min="0" value="<?php echo $li_mes_i ;?>" readonly >
      
    </div>
  

    <div class="form-group col-md-3">
        <label for="anio_ini">Año Inicial</label>

        <input type="number" name="anio_ini" class="form-control" min="0" value="<?php echo $li_anio_i;?>" readonly>
      
       
    </div>
     
       <div class="form-group col-md-4">
      <label for="user_lect">Usuario</label>
     <?php  if ($session->isUserLoggedIn(true)); ?>  
     <input type="user_lect" name="user_lect" class="form-control" id="user_lect" value="<?php echo remove_junk(ucfirst($user['name']));?>" readonly>
   
        
  </div>
       
 </div>
 
  
 
  <div class="row">
            <div class="form-group col-md-6" align="left">
      <input type="submit" name="reg_lectura" id="submit" value="Guardar" class="btn btn-primary">
      </div>
      <div class="form-group col-md-4" align="right">
                <a href="reg_ini_lec1.php" class="btn btn-primary">Regresar</a>
          
            </div>
  </div>

 </form> 
 
<!--Hasta aqui el formulario -->
         </div>
        </div>
      </div>
  </div>



<?php include_once('layouts/footer.php'); ?>






<?php
  
  $page_title = 'Agregar Cliente';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
 
  $clientes = join_inv_cliente_table();
?>
<?php
  //echo $_POST['num_cuenta'];
 if(isset($_POST['add_cliente'])){
    $req_fields = array('num_cuenta','fecha_actual','nombres_cli', 'apellidos_cli','fech_naci','direccion_cli','cod_departamento','cod_municipio','sexo_cli','dui','telefono_cli','celular_cli','nit','email_cli','num_medidor','lect_inicial','estado_cli');
   validate_fields($req_fields);
   if(empty($errors)){
     //$c_codcliente  = remove_junk($db->escape($_POST['cod_cliente']));*/
     $c_numcuenta   = remove_junk($db->escape($_POST['num_cuenta']));
     $c_fechactual   = remove_junk($db->escape($_POST['fecha_actual']));
     $c_nombres   = remove_junk($db->escape($_POST['nombres_cli']));
     $c_apellidos  = remove_junk($db->escape($_POST['apellidos_cli']));
     $c_fechanaci   = remove_junk($db->escape($_POST['fech_naci']));
     $c_direccion   = remove_junk($db->escape($_POST['direccion_cli']));
     $c_departamento   = remove_junk($db->escape($_POST['cod_departamento']));
     $c_municipio  = remove_junk($db->escape($_POST['cod_municipio']));
	 $c_sexo  = remove_junk($db->escape($_POST['sexo_cli']));
	 $c_dui  = remove_junk($db->escape($_POST['dui']));
     $c_telefono   = remove_junk($db->escape($_POST['telefono_cli']));
     $c_celular   = remove_junk($db->escape($_POST['celular_cli']));
     $c_nit   = remove_junk($db->escape($_POST['nit']));
     $c_correo  = remove_junk($db->escape($_POST['email_cli']));
	 $c_nummedi  = remove_junk($db->escape($_POST['num_medidor']));
     $c_lectmedi   = remove_junk($db->escape($_POST['lect_inicial']));
    // $c_estado   = remove_junk($db->escape($_POST['estado_cli']));
    // $c_latitud   = remove_junk($db->escape($_POST['latitud_cli']));
    // $c_longitud  = remove_junk($db->escape($_POST['longitud_cli']));
     if (is_null($_POST['estado_cli']) || $_POST['estado_cli'] === "") {
       $media_id = '0';
     } else {
       $c_estado = remove_junk($db->escape($_POST['estado_cli']));
     }
     $date    = make_date();
     $query  = "INSERT INTO inv_cliente (num_cuenta,fecha_crea, nombre,apellido,fecha_naci,direccion,cod_municipio,cod_departamento, sexo, dui,telefono, celular,nit,mail,num_medidor,lectura_ini,estado) VALUES ('{$c_numcuenta}','{$c_fechactual}','{$c_nombres}','{$c_apellidos}','{$c_fechanaci}', '{$c_direccion}','{$c_municipio}','{$c_departamento}','{$c_sexo}','{$c_dui}','{$c_telefono}', '{$c_celular}','{$c_nit}','{$c_correo}','{$c_nummedi}','{$c_lectmedi}','{$c_estado}')";
     $query .=" ON DUPLICATE KEY UPDATE num_cuenta='{$c_numcuenta}'";

     $actualiza=("UPDATE inv_medidor SET asignado='SI' WHERE numero='$c_nummedi'");
   $result1 =$db->query($actualiza);

        
	 
  if($db->query($query)){
      $session->msg('s',"Cliente agregado exitosamente. ");

      //Codigo agregar lectura inicial 
     
       //$li_numcuenta   = remove_junk($db->escape($_POST['num_cuenta']));

        //$li_numcuenta   = $c_numcuenta; 

$date = explode("/",date('d/m/Y'));
  list($day,$month,$year) = $date;
//echo $month.'/'.$day.'/'.$year.' '.$hour.':'.$min.':'.$sec;

//output: 03/08/2020 02:01:06


        //$c_fechactual   = remove_junk($db->escape($_POST['fecha_actual']));
        //$li_mes   = remove_junk($db->escape($_POST['mes_ini']));

        
        $li_mes   = $month;
        $li_anio = $year;
        
        
        //calcular el ultimo dia del mes para fecha lectura
        function getUltimoDiaMes($elAnio,$elMes) {
        return date("d",(mktime(0,0,0,$elMes+1,1,$elAnio)-1));
        }

      //Ejemplo de uso ultimo dia
        $ultimoDia = getUltimoDiaMes($li_anio,$li_mes);
        $li_fecha_lect = ($li_anio).'-'.($li_mes).'-'.$ultimoDia; 
        
        //$li_fecha_lect = $li_anio.'-'.$li_mes.'-'.$ultimoDia; 
        //$li_fecha_lect  = remove_junk($db->escape($_POST['fecha_lect_li']));
        $li_lec_ant  = 0;
        $li_lec_act  = 0;
        //$li_consumo =  $li_lec_act - $li_lec_ant;
        $li_consumo = $li_lec_act-$li_lec_ant;
        $li_user  = remove_junk($db->escape($_POST['user_lect']));
        if (($_POST['lec_ant_li'])>($_POST['lec_act_li'])) {
            $li_cobro = 'v';
            } else {
              $li_cobro = 'c';
              }
       // no se permite la misma lectura inicial para la cuenta y mes y año
        $query_cta = "SELECT * FROM lecturas WHERE num_cuenta='$c_numcuenta'and mes='$li_mes' and anio='$li_anio'";
        $resul_cta = $db->query($query_cta);
        if($resul_cta->num_rows >= 1){    
        
                //if($db->query($query_cta)){
                $session->msg('d',"La Carga Inicial de Lectura para la cuenta ya fue agregada anteriormente".$num_cuenta);
                 //mysql_free_result($query_cta);
                redirect('cliente.php', false);
                }
                else
                {
                //efectua registro inicial de lectura, marca el recibo
                $query2   = "INSERT INTO lecturas (num_cuenta,mes,anio,fecha_lectura,lectura_anterior, lectura_actual, consumo, user, cobro ) VALUES ('{$c_numcuenta}','{$li_mes}','{$li_anio}','{$li_fecha_lect}','{$li_lec_ant}', '{$li_lec_act}','{$li_consumo}', '{$li_user}', '{$li_cobro}')";
                if($db->query($query2)){
                     //$session->msg('s',"Lectura inical agregada exitosamente.".$num_cuenta);
                     redirect('cliente.php', false);
                    } 
               } 

               // Fin codigo agregar lectura

   





       redirect('add_cliente.php', false);
     } else {
       $session->msg('d',' Lo siento, registro falló.');
       redirect('product.php', false);
     }

   } else{
     $session->msg("d", $errors);
     redirect('add_cliente.php',false);
   }

 }

?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
</div>
  <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading clearfix">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Clientes</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
<!--Inicio formulario principal-->       
   <form method="post" action="add_cliente.php" class="clearfix"> 
 <div class="form-row">
 	<div class="form-group col-md-4">
      <label for="cod_cliente">Código Cliente</label>
      <input type="text" name="cod_cliente" class="form-control" id="cod_cliente" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="num_cuenta">No. Cuenta</label>
      <input type="text" name="num_cuenta" class="form-control" id="num_cuenta" autofocus required>
    </div>
    <div class="form-group col-md-2">
      <label for="fecha_actual">Fecha</label>
      <input type="text" name="fecha_actual" value="<?php echo date("Y-m-d"); ?>" class="form-control" id="fecha_actual" autofocus readonly>
    </div>
  </div>
  <div class="form-row"> 
  <div class="form-group col-md-6">
    <label for="nombres_cli">Nombres</label>
    <input type="text" name="nombres_cli" class="form-control" placeholder="Nombres" autofocus required >  
  </div>  
  
  <div class="form-group col-md-6">
      <label for="apellidos_cli">Apellidos</label>
      <input type="text" name="apellidos_cli" class="form-control" id="apellidos_cli" placeholder="Apellidos" autofocus required>
    </div>
  <div class="form-group col-md-6">
      <label for="fecha_naci">Fecha de Nacimiento</label>
      <input type="date" name="fech_naci" class="form-control" id="fecha_naci" placeholder="dd/mm/aa" autofocus required>
  </div>
  <div class="form-group col-md-6">
      <label for="direccion_cli">Dirección</label>
      <input type="text" name="direccion_cli" class="form-control" id="direccion_cli" placeholder="Dirección: lote, calle, numero casa" autofocus required>
  </div>
  </div>
   <div class="form-row">
 	<div class="form-group col-md-4">
      <label for="departamento_cli">Departamento</label>
      <?php
		// Consulta la tabla departamento para obtenerla lista del select
		$query_depto = ("SELECT * FROM inv_departamento ORDER BY cod_departamento ASC");
		
		$result_depto = $db->query($query_depto);
								?>
      <select id="cont" name="cod_departamento" class="form-control" onChange="load(this.value)" required>
        <option selected>--------</option>
        <?php
		 while($row_depto = mysqli_fetch_array($result_depto))
			{
			 printf("<option value='".$row_depto['cod_departamento']." '>".$row_depto['departamento']."</option>");
		 	}
			mysqli_free_result($result_depto);
		?>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="municipio_cli">Municipio</label>
      <select id="mostrar_select" name="cod_municipio" class="form-control" width="90%" required>
        
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="sexo_cli">Sexo</label>
      <select id="sexo_cli" name="sexo_cli" class="form-control">
        <option selected>-------</option>
        <option value="1">Femenino</option>
        <option value="2">Masculino</option>
      </select>
    </div>
  </div>
 <div class="form-row">
 	<div class="form-group col-md-4">
      <label for="dui_cli">DUI * (formato: xxxxxxxx-x)</label>
      <input type="text" name="dui" onkeyup="mascara(this,'-',patron2,true)" class="form-control" id="dui" placeholder="Formato: 04798895-9" value="0">
    </div>
    <div class="form-group col-md-4">
      <label for="telefono_cli">Teléfono * (formato: xxxx-xxxx)</label>
      <input type="text" name="telefono_cli" class="form-control" onKeyUp="mascara(this,'-',patron,true)" id="telefono_cli" placeholder="Ej. 2235-5687" value="0">
    </div>
    <div class="form-group col-md-4">
      <label for="celular_cli">Celular *  (formato: xxxx-xxxx)</label>
       <input type="text" name="celular_cli" class="form-control" onkeyUp="mascara(this,'-',patron,true)" id="celular_cli" placeholder="Ej. 6235-2545" value="0">
    </div>
  </div> 
   
  <div class="form-group col-md-6">
    <label for="nit_cli">NIT * (formato: xxxx-xxxxxx-xxx-4x)</label>
    <input type="text" name="nit" onkeyup="mascara(this,'-',patron3,true)" class="form-control" id="nit_cli" placeholder="Ej. 1236-221299-325-4" value="0">
  </div>
  <div class="form-group col-md-6">
    <label for="email_cli">Correo electrónico * (Ej. juanperez@gmail.com)</label>
    <input type="mail" name="email_cli" class="form-control" id="email_cli" placeholder="xxxxxx@yyyyyy.zzz" value="0">
  </div>
<div class="form-row">
    <div class="form-group col-md-4">
      <label for="num_medidor">Número Medidor</label>
      <?php
		// Consulta la tabla medidor para obtenerla lista del select
		$query_m = ("SELECT numero FROM inv_medidor WHERE asignado ='NO' ORDER BY cod_medidor ASC");
		$result_m = $db->query($query_m);
	  ?>		
      <select id="num_medidor" name="num_medidor" class="form-control" required>
        <option selected>--------</option>
        <?php
		 while($row_m = mysqli_fetch_array($result_m))
		 {
		 printf("<option value='".$row_m['numero']." '>".$row_m['numero']."</option>");
		 }
		mysqli_free_result($result_m);
		?>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="lec_inicial">Lectura inicial</label>
      <input type="text" name="lect_inicial" class="form-control" id="lect_inicial" value="0">
    </div>
    <div class="form-group col-md-4">
      <label for="estado_cli">Estado</label>
      <select id="estado_cli" name="estado_cli" class="form-control">
        <option value="1">Inactivo</option>
        <option value="2">Activo</option>
      </select>
    </div>
  </div>
  
  <div clas="form-row">
  <div class="form-group col-md-12">
      <label for="user_lect" align="center">Usuario</label>
     <?php  if ($session->isUserLoggedIn(true)); ?>  
     <input type="user_lect" name="user_lect" class="form-control" id="user_lect" align="center" value="<?php echo remove_junk(ucfirst($user['name']));?>" readonly>  
  </div>
  </div>

  <div clas="row">
  </div>  
<!--  <div class="row">
  <div class="form-group">
   <label for="ubicaGeo">Ubicacion Geografica</label>
  </div>
  </div>
  <div class="row">
  <div class="form-group col-md-4">
      <label for="latitud_cli">Latitud * (Ej. 13.xxxxxx")</label>
      <input type="text" name="latitud_cli" class="form-control" id="latitud_cli" placeholder="Ej. 13.xxxxxx" value="0">
    </div>
    <div class="form-group col-md-4">
      <label for="longitud_cli">Longitud * (Ej. -88.xxxxxx)</label>
      <input type="text" name="longitud_cli" class="form-control" id="longitud_cli" placeholder="Ej. -88.xxxxxx" value="0">
    </div>
    <div class="form-group col-md-4">
      <label for="altura_cli">Altura * (Ej. 110 msnm)</label>
       <input type="text" name="altura_cli" class="form-control" id="altura_cli" placeholder="Ej. 110" value="0">
    </div>
  </div> -->
  <div class="form-row">
      <div class="form-group col-md-4" align="left">
      <input type="submit" name="submit1" id="submit1" value="Buscar" class="btn btn-primary">
      </div>
      <div class="form-group col-md-4" align="center">
      <input type="submit" name="add_cliente" id="submit" value="Guardar" class="btn btn-primary">
      </div>
      <div class="form-group col-md-4" align="right">
      <input type="submit" name="submit3" id="submit3" value="Reporte" class="btn btn-primary">
    </div>
  </div>
 </form>  
  </div>      
               
<!--Fin formulario principal-->
		
         </div>
        </div>
      </div>
  </div>
<?php include_once('layouts/footer.php'); ?>

<?php
  $page_title = 'Carga Inicial de Lectura';
  require_once('includes/load.php');
   error_reporting(0);
  // Checkin What level user has permission to view this page
   page_require_level(2);
  $clientes = join_inv_cliente_table();
  $lecturas = join_lecturas_table();
?>
<?php
 //$cta_lectura="";
 $salida="";
 //$query = "SELECT * FROM inv_cliente ORDER By cod_cliente";
 	$query = ("SELECT c.* FROM oswa_inv.inv_cliente c WHERE NOT EXISTS (SELECT * FROM oswa_inv.lecturas l WHERE c.num_cuenta = l.num_cuenta)");
 //$query2 = "SELECT * FROM lecturas ORDER By cod_lectura";
 
 
 if(isset($_POST['consulta'])){
		$q = $_POST['consulta'];
		$query = ("SELECT cod_cliente, num_cuenta, nombre, apellido FROM inv_cliente  WHERE num_cuenta LIKE '%".$q."%'");	
                //$query = ("SELECT cod_lectura, num_cuenta, FROM lecturas  WHERE num_cuenta LIKE '%".$q."%'");	
                
	}
	
	$resultado = $db->query($query);

          if($resultado->num_rows > 0){
		
		$salida.="<table class='table table-bordered'>
				  <thead>
				    <tr>
						<th class='text-center' style='width: 20%;'>Codigo</th>
						<th class='text-center' style='width: 20%;'>Cuenta</th>
						<th class='text-center' style='width: 20%;'>Nombres</th>
						<th class='text-center' style='width: 20%;'>Apellidos</th>
						<th class='text-center' style='width: 60px;'>Acción</th>
					</tr>
				  </thead>
				  <tbody>";
		while ($fila = $resultado->fetch_assoc()){
			$salida.="<tr>
					<td class='text-center'>".$fila['cod_cliente']."</td>
					<td class='text-center'>".$fila['num_cuenta']."</td>
					<td class='text-center'>".$fila['nombre']."</td>
					<td class='text-center'>".$fila['apellido']."</td>
					<td class='text-center'>
					<div class='btn-group'>
					<a href='reg_lectura.php?id=$fila[cod_cliente]' class='btn btn-info btn-xs'  title='Cargar' data-toggle='tooltip'>
                     <span class='glyphicon glyphicon-export'></span>
                    </a>
					</div>
					</td>
			  </tr>";
		}
		
		$salida.="</tbody></table>";
	} else {
		$salida.="No hay datos :(";
	}
	
	echo $salida;
	//$db->close();
	
?>



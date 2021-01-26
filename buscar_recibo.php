<?php
$page_title = 'Buscar recibo';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  error_reporting(0);
?>

<?php
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
function fecha_guion($fecha){ 
    $objeto_DateTime = date_create_from_format('Y-m-d',$fecha);	
	$cadena_nuevo_formato = date_format($objeto_DateTime, "d/m/Y");	
    return $cadena_nuevo_formato; 
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
<div class="panel-heading clearfix">
    <strong>
        <span class="glyphicon glyphicon-th"></span>
        <span>Busqueda de recibo por cliente</span>
    </strong>
</div>
</div>
    
<!--Tabla Formulario-->
<form action="" method="POST" autocomplete="off">

    <div> 
         <label  for="num_cuenta">Busqueda :</label>
         <input type="text" name="busqueda" id="busqueda" class="textbox" style="width:80%;" placeholder="Apellido" autofocus required/>
    </div>    
						
    <div> 
        <input type="submit" name="buscar" value="Buscar" class="btn btn-primary"/>
     					

    
       <a href="copia_recibo.php" class="btn btn-primary">Regresar</a>
    </div> 

					
</form> 


<!--tabla de contenido-->
    <table align="center" width="100%" height="30" bgcolor="white" background="../images/tabla_heder.png" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="">	
	<tr>
	<td ></td>
	<td ></td>
	<td Width="10%">&nbsp;Cuenta</td>
	<td Width="20%">Cliente</td>
	<td Width="10%">No Recibo</td>
	<td Width="10%">Corte</td>
	<td Width="10%">Vence</td>
	<td Width="10%">Monto $</td>
        <td Width="10%">Total Pagado $</td>
	<td Width="10%">Pagado</td>					
	<td Width="10%" align="center">Trasladar</td>
	</tr>
    </table>


<?php			
    if ( $_REQUEST['buscar'] == "Buscar" )//si se presiona el boton buscar
        {	
	$busqueda= $_POST['busqueda'];
        $query2 ="SELECT inv_cliente.num_cuenta AS Cuenta,CONCAT(inv_cliente.nombre,' ',inv_cliente.apellido) AS Cliente,
		recibos.num_recibo AS Recibo, 
		DATE_FORMAT(recibos.fecha_cobro,'%d-%m-%Y') AS Cobro,
		DATE_FORMAT(recibos.fecha_pago,'%d-%m-%Y') AS Vencimiento, 
		recibos.monto AS Monto, recibos.pagado AS Pagado, recibos.total_pagado AS Total, recibos.pagado AS Pagado 
		FROM inv_cliente,recibos 
		WHERE inv_cliente.apellido LIKE '%$busqueda%' AND (inv_cliente.cod_cliente=inv_cliente.cod_cliente) AND (inv_cliente.num_cuenta=recibos.num_cuenta) AND recibos.anulado='NO' AND recibos.estado='Activo' ORDER by recibos.num_cuenta,recibos.mes DESC";

        $result2 = $db->query($query2); //almacena la consulta
	echo '		
	<div style="width: 100%; height: 280px; overflow-x:auto; overflow-y:auto; text-align: left;border: 1px solid silver;">
	<table cellspacing="0" cellpadding="0" Width="100%" style="border: solid 1px silver;" class="tabla_color">';
	$contador=0;
	$num_fila = 0;
	while($row = mysqli_fetch_array($result2))
            {
            $bgcolor1 = " '#CED8F6' "; // color sobre seleccion 
							$bgcolor2 = " '#ffffff' ";// color original blanco 
							$bgcolor3 = " '#EEE9FD' ";// color original 2
							
							echo '<tr '; 
								if ($num_fila%2==0) 
									 echo 'bgcolor=#ffffff onmouseover="this.style.backgroundColor= '.$bgcolor1.'; " onmouseout="this.style.backgroundColor= '.$bgcolor2.';"' ; //si el resto de la divisi�n es 0 pongo un color 
								else 
									 echo 'bgcolor=#EEE9FD onmouseover="this.style.backgroundColor= '.$bgcolor1.'; " onmouseout="this.style.backgroundColor= '.$bgcolor3.';"'; //si el resto de la divisi�n NO es 0 pongo otro color 
														 
								echo '> '; 
												
							echo"
									<td><input type='hidden' value='".$row['cod_cliente']."'> </td>
										<td Width='10%'>&nbsp;".$row['Cuenta']."</td>
										<td Width='20%'>&nbsp;".$row['Cliente']."</td>
										<td Width='10%'>".$row['Recibo']."</td>
										<td Width='10%'>".$row['Cobro']."</td>
										<td Width='10%'>".$row['Vencimiento']."</td>
										<td Width='10%'>".$row['Monto']."</td>
										<td Width='10%'>".$row['Total']."</td>
										<td Width='10%'>".$row['Pagado']."</td>
														
										<td Width='10%' align='center'>&nbsp;<a href='copia_recibo.php?recibo=".$row['Recibo']."' >Enviar</a>
										</td>
										</tr>";
									$num_fila++; 	
									$contador++;
							}
							mysqli_free_result($result2);
				echo '			
					</table>
					</div> ';
					echo "<b>Registros para su busqueda: <font color='blue' size='2'>".$contador ."</font> </b>";	
				
				
			}
			else
			{
			
				$query = "SELECT * FROM recibo";
				$result = mysqli_query($server, $query);
				$num_total_registros = mysqli_num_rows($result);
				//Si hay registros
				if ($num_total_registros > 0) 
				{
					//Limita la busqueda
					$TAMANO_PAGINA = 17;
						$pagina = false;

					//examina la pagina a mostrar y el inicio del registro a mostrar
						if (isset($_GET["pagina"]))
							$pagina = $_GET["pagina"];
						
					if (!$pagina) {
						$inicio = 0;
						$pagina = 1;
					}
					else {
						$inicio = ($pagina - 1) * $TAMANO_PAGINA;
					}
					//calcula el total de paginas
					$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);

					//$query2 = "SELECT * FROM cliente ORDER BY cod_cliente ASC LIMIT ".$inicio."," . $TAMANO_PAGINA;
					$query2 ="SELECT cuenta.num_cuenta AS Cuenta,CONCAT(cliente.nombre,' ',cliente.apellido) AS Cliente,
					recibo.num_recibo AS Recibo, 
					DATE_FORMAT(recibo.fecha_cobro,'%d-%m-%Y') AS Cobro,
					DATE_FORMAT(recibo.fecha_pago,'%d-%m-%Y') AS Vencimiento, 
					recibo.monto AS Monto, recibo.pagado AS Pagado, recibo.total_pagado AS Total, recibo.pagado AS Pagado 
					FROM cuenta,cliente,recibo 
					WHERE (cuenta.cod_cliente=cliente.cod_cliente) AND (cuenta.cod_cuenta=recibo.cod_cuenta) AND recibo.anulado='NO' AND recibo.estado='Activo' ORDER by recibo.mes DESC LIMIT ".$inicio.",". $TAMANO_PAGINA;

					
					$rs = mysqli_query($server, $query2);
					
					
					echo '	<div style="width: 100%; height: 280px; overflow-x:auto; overflow-y:auto; text-align: left;border: 1px solid silver;" class="tabla_color">
							<table Width="100%" cellspacing="0" cellpadding="0"  style="border: solid 1px silver;">';
							$num_fila = 0;
							while ($row = mysqli_fetch_array($rs))
								{
									$bgcolor1 = " '#CED8F6' "; // color sobre seleccion 
									$bgcolor2 = " '#ffffff' ";// color original blanco 
									$bgcolor3 = " '#EEE9FD' ";// color original 2
										
								echo '<tr '; 
								if ($num_fila%2==0) 
								 echo 'bgcolor=#ffffff onmouseover="this.style.backgroundColor= '.$bgcolor1.'; " onmouseout="this.style.backgroundColor= '.$bgcolor2.';"' ; //si el resto de la divisi�n es 0 pongo un color 
								else 
								 echo 'bgcolor=#EEE9FD onmouseover="this.style.backgroundColor= '.$bgcolor1.'; " onmouseout="this.style.backgroundColor= '.$bgcolor3.';"'; //si el resto de la divisi�n NO es 0 pongo otro color 
															 
									echo '> '; 
															
									echo"
										<td><input type='hidden' value='".$row['cod_cliente']."'> </td>
										<td Width='10%'>&nbsp;".$row['Cuenta']."</td>
										<td Width='20%'>&nbsp;".$row['Cliente']."</td>
										<td Width='10%'>".$row['Recibo']."</td>
										<td Width='10%'>".$row['Cobro']."</td>
										<td Width='10%'>".$row['Vencimiento']."</td>
										<td Width='10%'>".$row['Monto']."</td>
										<td Width='10%'>".$row['Total']."</td>
										<td Width='10%'>".$row['Pagado']."</td>
											
										<td Width='10%' align='center'>&nbsp;<a href='copia_de_recibo.php?recibo=".$row['Recibo']."' ><img src='../images/ico/undo.png' width='32'></a>
										</td></tr>";
										$num_fila++; 
								}
								mysqli_free_result($result);
										
					echo '			
					</table>
					</div> ';
					
				
					//tabla de paginacion	
					echo '<table Width="100%" height="30" cellspacing="0" cellpadding="0"  style="border: solid 1px silver;" class="tabla_color">
							<tr>
								<td align="center" width="33%">';
						
									if ($total_paginas > 1) 
									{
										if ($pagina != 1)
											
										echo '<a href="?pagina=1"><img src="../images/ico/pag_ini.png" title="Pag. 1" border="0"></a>&nbsp;';
										echo '<a href="?pagina='.($pagina-1).'"><img src="../images/ico/pag_atras.png" title="Anterior" border="0" ></a>';
														
										/*for ($i=1;$i<=$total_paginas;$i++) 
										{
										if ($pagina == $i)
										//si muestra el indice de la pagina actual, no coloca enlace
										echo $pagina;
										else
										//si el indice no corresponde con la pagina mostrada actualmente,
										//coloca el enlace para ir a esa pagina
										echo '  <a href="'.$url.'?pagina='.$i.'">'.$i.'</a>  ';
											}*/
									if ($pagina != $total_paginas)
										echo '&nbsp;&nbsp;&nbsp;<a href="?pagina='.($pagina+1).'"><img src="../images/ico/pag_sig.png" title="Siguiente" border="0"></a>';
									}
							
						echo '</td>
							  <td align="left" width="34%">';
									// pagina actual de n numeros de paginas
									echo 'Pag. '.$pagina.' de ' .$total_paginas;
						echo '</td>
							  <td align="right" width="33%">';			
							
									//el numero total de registros
									echo 'N&uacute;mero de registros: '.$num_total_registros.'&nbsp;&nbsp;&nbsp;&nbsp;';				
					echo '</td>
						</tr>
						</table>';
				}
			}			
			?>

   <?php include_once('layouts/footer.php'); ?>
        
    
     
     

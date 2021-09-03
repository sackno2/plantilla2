<?php
 $page_title = 'Control de mora';
require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  error_reporting(0);
?>
<script type="text/javascript" src="libs/js/ajax.js"></script>
<script type="text/javascript">

	
	
	/************************************************************************************************************
	Ajax client lookup
		
	************************************************************************************************************/	
var ajax = new sack();
	var currentClientID=false;
	function getClientData()
	{
		var clientId = document.getElementById('clientID').value.replace(/[^0-9]/g,'');
		if(clientId.length!=0 && clientId!=currentClientID){
			currentClientID = clientId
			ajax.requestFile = 'getClient2.php?getClientId='+clientId;	// Specifying which file to get
			ajax.onCompletion = showClientData;	// Specify function that will be executed after file has been found
			ajax.runAJAX();		// Execute AJAX function			
		}
		
	}
	
	function showClientData()
	{
		var formObj = document.forms['clientForm'];	
		eval(ajax.response);
	}
	
	
	function initFormEvents()
	{
		document.getElementById('clientID').onblur = getClientData;
		document.getElementById('clientID').focus();
	}
	
	
	window.onload = initFormEvents;
	</script>	



<?php include_once('layouts/header.php'); ?>

<div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>

 <div class="panel-heading clearfix">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Control de moras</span>
         </strong>
        </div>
        <div><strong><span>Cuentas con mora</span></strong></div>
         <div align= "right">  
        <a href="reporte_control_mora.php" title="Generar Reporte" ><button  class="btn btn-primary"> Reporte de Moras</button></a>	
						&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="home.php" class="btn btn-primary">Regresar</a>
         </div>
<!--tabla de contenido-->
			<table align="center" width="100%" height="30" bgcolor="white" background="../images/tabla_heder.png" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="">	
				<tr background="../images/tabla_header.png" height="30">
					<td ></td>
					<td Width="10%">&nbsp;Cuenta</td>					
					<td Width="35%">Cliente</td>
					<td Width="15%">Fecha Cobro</td>
					<td Width="10%">Fecha Vencimiento</td>
					<td Width="10%">Mora</td>
					<td Width="10%">Monto</td>
					<td Width="10%">Total</td>
				</tr>
			</table>
<?php			
			echo '	<div style="width: 100%; height: 350px; overflow-x:auto; overflow-y:auto; text-align: left;border: 1px solid silver;" class="tabla_color">';
			
				
				$mes_anterior = date('m', strtotime('-2 month')) ; // resta 2 meses
				$anio = date('Y');
				$query2 = "SELECT inv_cliente.num_cuenta AS Cuenta,CONCAT(inv_cliente.nombre,' ',inv_cliente.apellido) AS Cliente,DATE_FORMAT(recibos.fecha_cobro,'%d-%m-%Y') AS Cobro,DATE_FORMAT(recibos.fecha_pago,'%d-%m-%Y') AS Vencimiento, recibos.recargo AS Mora, recibos.monto AS Monto, (recibos.recargo+recibos.monto) AS Total FROM inv_cliente,recibos WHERE (inv_cliente.num_cuenta=recibos.num_cuenta) AND recibos.pagado='NO' AND recibos.mes<='$mes_anterior' AND recibos.anio<='$anio' ORDER by recibos.num_cuenta,recibos.mes,recibos.anio ASC";
				$rs = $db->query($query2);

				////////////////////////////////////////////////////////////////
				$query3 = "SELECT recibos.num_cuenta AS Cuenta, CONCAT(inv_cliente.nombre,' ',inv_cliente.apellido) AS Cliente, (SUM( monto ) + SUM(recargo)) AS total2 FROM inv_cliente,recibos WHERE inv_cliente.num_cuenta=recibos.num_cuenta) AND recibos.pagado='NO' GROUP BY recibos.num_cuenta";
				$rs2 = $db->query($query3);
				//$row2 = mysqli_fetch_array($rs2);
				
				////////////////////////////////////////////////////////////////

				
				echo '	<table Width="100%" cellspacing="0" cellpadding="0"  style="border: solid 1px silver;">';
						$contador=0;
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
									<td Width='10%'>".$row['Cuenta']."</td>
									<td Width='35%'>&nbsp;".$row['Cliente']."</td>
									<td Width='15%'>".$row['Cobro']."</td>
									<td Width='10%'>".$row['Vencimiento']."</td>	
									<td Width='10%'>".$row['Mora']."</td>		
									<td Width='10%'>".$row['Monto']."</td>	
									<td Width='10%'>".$row['Total']."</td>
	
									</tr>";
								
								

								$num_fila++;
								$contador++;
							}
							mysqli_free_result($rs);
									
				echo '			
				</table>
			    </div> ';


////////////////////////////////////////////////////////////////////////////////
	echo '	<table Width="100%" cellspacing="0" cellpadding="0"  style="border: solid 1px silver;">';
						$contador=0;
						$num_fila = 0;
			    
				    	
						while ($row2 = mysqli_fetch_array($rs2))
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
									<td Width='10%'>".$row2['Cuenta']."</td>
									<td Width='35%'>&nbsp;".$row2['Cliente']."</td>
									<td Width='15%'>".$row2['total2']."</td>
									<td Width='10%'>".$row['Vencimiento']."</td>	
									<td Width='10%'>".$row['Mora']."</td>		
									<td Width='10%'>".$row['Monto']."</td>	
									<td Width='10%'>".$row['Total']."</td>
	
									</tr>";
								
								

								$num_fila++;
								$contador++;
							}
							mysqli_free_result($rs2);
									
				echo '			
				</table>
			    </div> ';		    





 ?>
 <?php include_once('layouts/footer.php'); ?>

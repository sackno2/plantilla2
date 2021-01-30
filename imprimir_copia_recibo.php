<?php

  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  error_reporting(0);
  
  function fecha_guion($fecha){ 
    $objeto_DateTime = date_create_from_format('Y-m-d',$fecha);	
	$cadena_nuevo_formato = date_format($objeto_DateTime, "d/m/Y");	
    return $cadena_nuevo_formato; 
} 
  
//fecha normal con barra :yyyy-mm-dd >>> dd/mm/yyyy
function fecha_barra($fecha){ 
    preg_match("([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})", $fecha, $mifecha); 
    $lafecha=$mifecha[3]."/".$mifecha[2]."/".$mifecha[1]; 
    return $lafecha; 
}	
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
?>
<!-- estilo para el div1 de los servicios-->
<style type="text/css"> 
		 .posicion1{
			position: absolute; 
			width: 50%; 
			height: 140px; 
			top: 200px; 
			left: 15px;
			
			/*filter:alpha(opacity=60);   
			-moz-opacity: 0.6;   
			opacity: 0.6;  */
			}
</style> 
<!-- estilo para el div2 de los servicios-->
<style type="text/css"> 
		 .posicion2{
			position: absolute; 
			width: 49%; 
			height: 140px; 
			top: 200px; 
			right: 0px;
			
			/*filter:alpha(opacity=60);   
			-moz-opacity: 0.6;   
			opacity: 0.6;  */
			}
</style> 


<body onload="window.print()">
<font face="arial" size="1">
<?php

$num_recibo_post = $_GET['recibo'];



// EXTRAE DATOS DE TABLA RECIBO
$datos_recibo = "SELECT * FROM recibos WHERE num_recibo='$num_recibo_post'";			
$result_datos_recibo = $db->query($datos_recibo);
                                                                
if($recibo_ok = mysqli_fetch_array($result_datos_recibo))						
$cod_recibo =$recibo_ok["cod_recibo"];

$num_recibo	=$recibo_ok["num_recibo"];
$num_cuenta	=$recibo_ok["num_cuenta"];
$fecha_cobro =$recibo_ok["fecha_cobro"];	
$fecha_pago	=$recibo_ok["fecha_pago"];
$fecha_pagado =$recibo_ok["fecha_pagado"];	
$mes =$recibo_ok["mes"];	
$anio =$recibo_ok["anio"];	
$cod_lectura =$recibo_ok["cod_lectura"];	
$monto =$recibo_ok["monto"];	
$recargo =$recibo_ok["recargo"];
$monto_recargo = $monto+$recargo;	
$pagado =$recibo_ok["pagado"];	
$estado =$recibo_ok["estado"];	
$anulado =$recibo_ok["anulado"];	
								
								
if($anulado=='SI')
    {
    $Mensaje_nulo = '<font color="red" size="4"><b>ANULADO</b></font>';
    }
else
    {
    $Mensaje_nulo = '';
    }
								
//EXTRAER DATOS DE TABLA RECIBO LINEA
//extraer el servicio
$recibo_linea = "SELECT * FROM recibo_linea WHERE cod_recibo='$cod_recibo'";			
$result_recibo_linea = $db->query($recibo_linea);
if($recibo_linea_ok = mysqli_fetch_array($result_recibo_linea))
$cod_servicio =$recibo_linea_ok["cod_servicio"];	
$costo =$recibo_linea_ok["costo"];
								
//EXTRAER DATOS DE TABLA SERVICIO
//extraer el servicio
$servi = "SELECT * FROM inv_servicio WHERE cod_servicio='$cod_servicio'";			
$result_servi = $db->query($servi);
if($servi_ok = mysqli_fetch_array($result_servi))
$nombre_servicio =$servi_ok["nombre"];
					
//EXTRAER DATOS DE TABLA CUENTA						
$cta = "SELECT * FROM inv_cliente WHERE num_cuenta='$num_cuenta'";			
$result_cta = $db->query($cta);

if($cta_ok = mysqli_fetch_array($result_cta)) {
$num_cuenta = $cta_ok["num_cuenta"];
$cod_cliente = $cta_ok["cod_cliente"];
$num_medidor = $cta_ok["num_medidor"];
$nombre = $cta_ok["nombre"];
$apellido = $cta_ok["apellido"];
$direccion = $cta_ok["direccion"];
}
//CONSUMO								
//obtener datos de la lectura del mes a facturar
$lectura_query = "SELECT * FROM lecturas WHERE num_cuenta='$num_cuenta' AND mes='$mes' AND anio='$anio'";			
$result_lectura_query = $db->query($lectura_query);
                                                             
if($lectura_ok = mysqli_fetch_array($result_lectura_query))
$mes = $lectura_ok["mes"];
$anio = $lectura_ok["anio"];
$cod_lectura = $lectura_ok["cod_lectura"];
$lectura_anterior = $lectura_ok["lectura_anterior"];
$lectura_actual = $lectura_ok["lectura_actual"];
$consumo = $lectura_ok["consumo"];
					
//CONSUMO HISTORIAL
//para el historial de los ultimos tres meses
$mes_desc1=$mes-03;//descuenta 3 meses
$historial1 = "SELECT * FROM lecturas WHERE num_cuenta='$num_cuenta' AND mes='$mes_desc1' AND anio='$anio' ORDER BY num_cuenta DESC LIMIT 0,4";			
$result_historial1 = $db->query($historial1);
                                                             
if($historial_ok1 = mysqli_fetch_array($result_historial1))
$mes1 = $historial_ok1["mes"];
$consumo1=$historial_ok1["consumo"];
								
$mes_desc2=$mes-02;//descuenta 2 meses
$historial2 = "SELECT * FROM lecturas WHERE num_cuenta='$num_cuenta' AND mes='$mes_desc2' AND anio='$anio' ORDER BY num_cuenta";			
$result_historial2 = $db->query($historial2);
                                                              
if($historial_ok2 = mysqli_fetch_array($result_historial2))
$mes2 = $historial_ok2["mes"];
$consumo2=$historial_ok2["consumo"];
								
$mes_desc3=$mes-01;//descuenta 1 mes
$historial3 = "SELECT * FROM lecturas WHERE num_cuenta='$num_cuenta' AND mes='$mes_desc3' AND anio='$anio' ORDER BY num_cuenta ";			
$result_historial3 = $db->query($historial3);
								
if($historial_ok3 = mysqli_fetch_array($result_historial3))
$mes3 = $historial_ok3["mes"];
$consumo3=$historial_ok3["consumo"];
								
//TARIFAS PARA HISTORIAS
//obtener datos del valor por consumo (segun rango y tarifa)
$tarifa1 = "SELECT * FROM inv_tarifa ORDER BY cod_tarifa LIMIT 0,3";
$result_tarifa1 = $db->query($tarifa1);
                                                                
if($tarifa_ok1 = mysqli_fetch_array($result_tarifa1))
$cod_tarifa1 = $tarifa_ok1["cod_tarifa"];
$rango_inicio1 = $tarifa_ok1["inicio"];
$rango_final1 = $tarifa_ok1["final"];
$precio_tarifa1 = $tarifa_ok1["precio"];
					
//obtener datos del valor por consumo (segun rango y tarifa)
$tarifa2 = "SELECT * FROM inv_tarifa ORDER BY cod_tarifa LIMIT 1,3";			
$result_tarifa2 = $db->query($tarifa2);
                                                             
if($tarifa_ok2 = mysqli_fetch_array($result_tarifa2))
$cod_tarifa2 = $tarifa_ok2["cod_tarifa"];
$rango_inicio2 = $tarifa_ok2["inicio"];
$rango_final2 = $tarifa_ok2["final"];
$precio_tarifa2 = $tarifa_ok2["precio"];
								
//obtener datos del valor por consumo (segun rango y tarifa)
$tarifa3 = "SELECT * FROM inv_tarifa ORDER BY cod_tarifa LIMIT 2,3";			
$result_tarifa3 = $db->query($tarifa3);
                                                         
if($tarifa_ok3 = mysqli_fetch_array($result_tarifa3))
$cod_tarifa3 = $tarifa_ok3["cod_tarifa"];
$rango_inicio3 = $tarifa_ok3["inicio"];
$rango_final3 = $tarifa_ok3["final"];
$precio_tarifa3 = $tarifa_ok3["precio"];
								
														
//VALOR CONSUMO HISTORIAL
///determinar valor consumo 1
if ($consumo1 >=$rango_inicio1 AND $consumo1 <= $rango_final1 )
    {$valor_consumo1 = $precio_tarifa1; }
if ($consumo1 >=$rango_inicio2 AND $consumo1 <= $rango_final2 )
    {$valor_consumo1 = $precio_tarifa2; }
if ($consumo1 >=$rango_inicio3 AND $consumo1 <= $rango_final3 )
    {$valor_consumo1 = $precio_tarifa3; }
								
///determinar valor consumo 2
if ($consumo2 >=$rango_inicio1 AND $consumo2 <= $rango_final1 )
    {$valor_consumo2 = $precio_tarifa1; }
								
if ($consumo2 >=$rango_inicio2 AND $consumo2 <= $rango_final2 )
    {$valor_consumo2 = $precio_tarifa2; }
								
if ($consumo2 >=$rango_inicio3 AND $consumo2 <= $rango_final3 )
    {$valor_consumo2 = $precio_tarifa3; }
							
///determinar valor consumo 3
if ($consumo3 >=$rango_inicio1 AND $consumo3 <= $rango_final1 )
    {$valor_consumo3 = $precio_tarifa1; }
					
if ($consumo3 >=$rango_inicio2 AND $consumo3 <= $rango_final2 )
    {$valor_consumo3 = $precio_tarifa2; }
								
if ($consumo3 >=$rango_inicio3 AND $consumo3 <= $rango_final3 )
    {$valor_consumo3 = $precio_tarifa3; }
					
								
								
?>

<!--DIV1 MOSTRARA LA LINEA DEL SERVICIO-->
<div class="posicion1" style="height: 100px; border: 0px solid silver;">	
    <table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9">
	<tr>
            <td colspan="3" style="line-height:10px;">&nbsp;&nbsp;</td>
	</tr> 	
<?php //EXTRAER DATOS DE TABLA RECIBO LINEA
    $recibo_linea = "SELECT * FROM recibo_linea WHERE cod_recibo='$cod_recibo'";
     $result_recibo_linea = $db->query($recibo_linea);
    
    While($recibo_linea_ok = mysqli_fetch_array($result_recibo_linea))
        {
	$consultar_servi = "SELECT * FROM inv_servicio WHERE cod_servicio='$recibo_linea_ok[cod_servicio]'";
	$result_consultar_servi = $db->query($consultar_servi);
        
        
        $Datos_servi = mysqli_fetch_array($result_consultar_servi);
	echo"
            <tr>
            <td width='22%' style='line-height:10px;' align='center'>$recibo_linea_ok[cod_servicio]</td>
            <td width='44%' style='line-height:10px;' align='center'>$Datos_servi[nombre]</td>
            <td width='34%' style='line-height:10px;' align='center'>$ $recibo_linea_ok[costo]</td>
            </tr>";
	}
	//EXTRAER DATOS DE TABLA SERVICIO FALTA REVISAR HTML
?>
    </table>
</div>	

<!--DIV2 MOSTRARA LA LINEA DEL SERVICIO-->
<div class="posicion2" style="height: 100px; border: 0px solid silver;">	
    <table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9">
	<tr>
            <td colspan="3" style="line-height:10px;">&nbsp;&nbsp;</td>
	</tr> 	
<?php //EXTRAER DATOS DE TABLA RECIBO LINEA
    $recibo_linea = "SELECT * FROM recibo_linea WHERE cod_recibo='$cod_recibo'";
     $result_recibo_linea = $db->query($recibo_linea);
    
    While($recibo_linea_ok = mysqli_fetch_array($result_recibo_linea))
        {
	$consultar_servi = "SELECT * FROM inv_servicio WHERE cod_servicio='$recibo_linea_ok[cod_servicio]'";
	$result_consultar_servi = $db->query($consultar_servi);
        
        
        $Datos_servi = mysqli_fetch_array($result_consultar_servi);
	echo"
            <tr>
            <td width='22%' style='line-height:10px;' align='center'>$recibo_linea_ok[cod_servicio]</td>
            <td width='44%' style='line-height:10px;' align='center'>$Datos_servi[nombre]</td>
            <td width='34%' style='line-height:10px;' align='center'>$ $recibo_linea_ok[costo]</td>
            </tr>";
	}
	//EXTRAER DATOS DE TABLA SERVICIO FALTA REVISAR HTML
?>
    </table>
</div>	

<table border="0" width="100%" height="450" cellspacing="0" cellpadding="1" style="font_family:arial;font-size:9">
    <tr>
        <td width="50%" align="center">			
            <!--tabla de contenido-->
            <table align="center" width="99%" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;font-size:0.7em" class="">	
            	<tr height="65">
                    <td COLSPAN="2">
			&nbsp;&nbsp;<img src="./libs/images/logoadescotab.png" width="140" height="50">
                    </td>
                    <td COLSPAN="2" align="center">
			DIRECCION: <?php echo $direccion; ?><br>
      DIRECCION2<br>
			NIT: <br>
			TELS.: <br>
                    </td>
                </tr>
		<tr>
                    <td width="" align="center" COLSPAN="3">
                        NOMBRE DEL CLIENTE 
			<table align="center" width="100%" height="70" bgcolor="#E0E6F8" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
			<tr>
                            <td width="99%" align="center">
                                <?php


				echo strtoupper($nombre).' '.strtoupper($apellido).'<br>';
	
				?>
                            </td>
			</tr>
			</table>	
                    </td>
                    
                    <td width="34%" align="center">
			RECIBO No.
			<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                            <tr>
                                <td width="99%" align="center">
				<?php echo $num_recibo;?>
				</td>
                            </tr>
			</table>
			CUENTA No.	
			<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                            <tr>
				<td width="99%" align="center">
                                    <?php echo $num_cuenta;?>
				</td>
                            </tr>
                        </table>	
                    </td>
		</tr>
		<tr>
                    <td width="22%" align="center">
			LECTURA ACTUAL
			<table align="center" width="99%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                            <tr>
                            <td width="99%" align="center">
                            <?php echo $lectura_actual;?>
                            </td>
                            </tr>
			</table>
                    </td>		
                    <td width="22%" align="center">
                        LECTURA ANTERIOR
			<table align="center" width="99%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                            <tr>
				<td width="99%" align="center">
                                    <?php echo $lectura_anterior;?>
				</td>
                            </tr>
			</table>
                    </td>		
                    <td width="22%" align="center">		
			CONSUMO EN M<sup>3</sup>
			<table align="center" width="99%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                            <tr>
                                <td width="99%" align="center">
                                    <?php echo $consumo;?>
				</td>
                            </tr>
			</table>	
                    </td>
                    <td width="34%" align="center">
                        FECHA DE LECTURA
			<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                            <tr>
				<td width="99%" align="center">
                                    <?php echo fecha_guion($fecha_cobro);?>
				</td>
                            </tr>
			</table>
							
                    </td>
		</tr>	
		<tr>
                    <td width="22%" align="center">
			CODIGO
			<table align="center" width="100%" height="90" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
			<tr>
                            <td width="99%" align="center">
                            </td>
			</tr>
			</table>
                    </td>
                    <td width="44%" align="center" COLSPAN="2">
			SERVICIOS FACTURADOS
			<table align="center" width="100%" height="90" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                            <tr>
                            <td width="99%" align="center">
                            </td>
                            </tr>
                        </table>
                    </td>
                    <td width="34%" align="center">
                    	VALOR
                        <table align="center" width="100%" height="90" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
			<tr>
                            <td width="99%" align="center">
                            </td>
			</tr>
							</table>
							
					</td>
					
										
				</tr>
				<tr>
					<td width="22%" align="center">
							PAGO EXTEMPORANEO 
							
					</td>
					<td width="22%" align="center">
							
							<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										 
											<?php echo '$ '.$monto_recargo;?>
										
									</td>
								</tr>
							</table>
							
					</td>
					<td width="22%" align="center">
							TOTAL A PAGAR $
												
					</td>
					<td width="34%" align="center">
							<!--TOTAL-->
							<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px red;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center" >
										<?php echo '$ '.$monto;?>
									</td>
								</tr>
							</table>
							
					</td>
				</tr>
				<tr>
					<td width="50%" COLSPAN="2">
							&nbsp;&nbsp;FECHA DE VENCIMIENTO
							
							
					</td>
					<td width="50%" align="right" COLSPAN="2">
							<!--TOTAL-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px red;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo fecha_guion($fecha_pago);?>
									</td>
								</tr>
							</table>
							
					</td>
				</tr>
				<tr height="30">
					<td width="25%">
							&nbsp;&nbsp;HISTORIAL ULTIMOS <br>&nbsp;&nbsp;3 MESES
					</td>
					<td width="25%" align="center">
							<?php echo mes_letras($mes1);?>
					</td>
					<td width="25%" align="center">
							<?php echo mes_letras($mes2);?>
					</td>
					<td width="25%" align="center">
							<?php echo mes_letras($mes3);?>
					</td>
				</tr>
				<tr>
					<td width="25%">
							&nbsp;&nbsp;CONSUMO EN M<sup>3</sup>
					</td>
					<td width="25%" align="center">
							<!--MES 1-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
											<?php echo $consumo1;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 2-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $consumo2;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 3-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $consumo3;?>
									</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td width="25%">
							&nbsp;&nbsp;VALOR PAGADO
					</td>
					<td width="25%" align="center">
							<!--MES 1-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
											<?php echo '$ '.$valor_consumo1;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 2-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo '$ '.$valor_consumo2;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 3-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo '$ '.$valor_consumo3;?>
									</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td colspan="4">
							
							<table width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 0px silver;" class="tabla_bordes">	
								<tr>
									<td>
										&nbsp;&nbsp;No.<font color="red" size="3" colspan="2"> <?php echo $num_recibo;?>&nbsp;&nbsp;<?php echo $Mensaje_nulo;?></font>
									</td>
									<td align="right" >
										<font color="red" colspan="2"><h5>COPIA RE-IMPRESA&nbsp;&nbsp;&nbsp;</h5></font>
									</td>
								</tr>
							</table>
					</td>
				</tr>
			</table>
		</td>
		<td width="50%" align="center">
			
				<!--tabla de contenido-->
			<table align="center" width="99%"  bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;font-size:0.7em" class="">	
				<tr height="65">
					<td COLSPAN="2">
						&nbsp;&nbsp;<img src="./libs/images/logoadescotab.png" width="140" height="50">
					</td>
					<td COLSPAN="2" align="center">
						
						DIRECCION 1: <?php echo $direccion; ?><br>
						DIRECCION 2 <br>
						NIT: <br>
						TELS.: <br>
						
					</td>
					
				</tr>
				<tr>
					<td width="" align="center" COLSPAN="3">
							NOMBRE DEL CLIENTE 
							<table align="center" width="100%" height="70" bgcolor="#E0E6F8" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php
											echo strtoupper($nombre).' '.strtoupper($apellido).'<br>';
											
										?>
									</td>
								</tr>
							</table>	
						
					</td>
					<td width="34%" align="center">
							RECIBO No.
							<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $num_recibo;?>
									</td>
								</tr>
							</table>
							CUENTA No.	
							<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $num_cuenta;?>
									</td>
								</tr>
							</table>	
					</td>
				</tr>
				<tr>
					<td width="22%" align="center">
							LECTURA ACTUAL
							<table align="center" width="99%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $lectura_actual;?>
									</td>
								</tr>
							</table>
					</td>		
					<td width="22%" align="center">
							LECTURA ANTERIOR
							<table align="center" width="99%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $lectura_anterior;?>
									</td>
								</tr>
							</table>
					</td>		
					<td width="22%" align="center">		
							CONSUMO EN M<sup>3</sup>
							<table align="center" width="99%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $consumo;?>
									</td>
								</tr>
							</table>	
					</td>
					<td width="34%" align="center">
							FECHA DE LECTURA
							<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo fecha_guion($fecha_cobro);?>
									</td>
								</tr>
							</table>
							
					</td>
				</tr>	
				<tr>
					<td width="22%" align="center">
							CODIGO
							<table align="center" width="100%" height="90" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										
									</td>
								</tr>
							</table>
							
					</td>
					<td width="44%" align="center" COLSPAN="2">
							SERVICIOS FACTURADOS
							<table align="center" width="100%" height="90" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										
									</td>
								</tr>
							</table>
							
					</td>
					<td width="34%" align="center">
							VALOR
							<table align="center" width="100%" height="90" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										
									</td>
								</tr>
							</table>
							
					</td>
				</tr>
				<tr>
                                        <td width="22%" align="center">
                                        PAGO EXTEMPORANEO
                                        </td>
					<td width="22%" align="center">
                                            <table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
                                            <tr>
                                                <td width="99%" align="center">
                                                    <?php echo '$ '.$monto_recargo;?>
						</td>
						</tr>
							
                                            <!-- HASTA AQUI -->
                                            </table>
							
					</td>
					<td width="22%" align="center">
							TOTAL A PAGAR $
												
					</td>
					<td width="34%" align="center">
							<!--TOTAL-->
							<table align="center" width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px red;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center" >
										<?php echo '$ '.$monto;?>
									</td>
								</tr>
							</table>
							
					</td>
				</tr>
				<tr>
					<td width="50%" COLSPAN="2">
							&nbsp;&nbsp;FECHA DE VENCIMIENTO
							
							
					</td>
					<td width="50%" align="right" COLSPAN="2">
							<!--TOTAL-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px red;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo fecha_guion($fecha_pago);?>
									</td>
								</tr>
							</table>
							
					</td>
				</tr>
				<tr height="30">
					<td width="25%">
							&nbsp;&nbsp;HISTORIAL ULTIMOS<br>&nbsp;&nbsp; 3 MESES
					</td>
					<td width="25%" align="center">
							<?php echo mes_letras($mes1);?>
					</td>
					<td width="25%" align="center">
							<?php echo mes_letras($mes2);?>
					</td>
					<td width="25%" align="center">
							<?php echo mes_letras($mes3);?>
					</td>
				</tr>
				<tr>
					<td width="25%">
							&nbsp;&nbsp;CONSUMO EN M<sup>3</sup>
					</td>
					<td width="25%" align="center">
							<!--MES 1-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
											<?php echo $consumo1;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 2-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $consumo2;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 3-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo $consumo3;?>
									</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td width="25%">
							&nbsp;&nbsp;VALOR PAGADO
					</td>
					<td width="25%" align="center">
							<!--MES 1-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
											<?php echo '$ '.$valor_consumo1;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 2-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo '$ '.$valor_consumo2;?>
									</td>
								</tr>
							</table>
					</td>
					<td width="25%" align="center">
							<!--MES 3-->
							<table width="70%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 1px silver;" class="tabla_bordes">	
								<tr>
									<td width="99%" align="center">
										<?php echo '$ '.$valor_consumo3;?>
									</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td colspan="4">
							
							<table width="100%" height="25" bgcolor="white" cellspacing="0" cellpadding="0" style="border: solid 0px silver;" class="tabla_bordes">	
								<tr>
									<td>
										&nbsp;&nbsp;No.<font color="red" size="3" colspan="2"> <?php echo $num_recibo;?>&nbsp;&nbsp;<?php echo $Mensaje_nulo;?></font>
									</td>
									<td align="right" >
										<font color="red" colspan="2"><h5>COPIA RE-IMPRESA&nbsp;&nbsp;&nbsp;</h5></font>
									</td>
								</tr>
							</table>
					</td>
					
				</tr>
			</table>
				
		</td>
	</tr>
</table>		
</font>			
</body>
						
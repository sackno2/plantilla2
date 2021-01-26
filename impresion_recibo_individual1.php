<?php
  $page_title = 'Impresion de recibo individual';
  //require_once('config.php');
   ob_start();
  require_once('includes/load.php');
  
  function fecha_guion($fecha){ 
    $objeto_DateTime = date_create_from_format('Y-m-d',$fecha);	
	$cadena_nuevo_formato = date_format($objeto_DateTime, "d/m/Y");	
    return $cadena_nuevo_formato; 
} 
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
  
  
  require_once(dirname(__FILE__)."/html2pdf/html2pdf.class.php");
  
  
  
  
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

   	
    //EXTRAER DATOS DE TABLA CLIENTE						
    $cta = "SELECT * FROM inv_cliente WHERE num_cuenta='$num_cuenta'";	
    $result_cta = $db->query($cta); 
    if($cta_ok = mysqli_fetch_array($result_cta))
      $num_cuenta = $cta_ok["num_cuenta"];
      $cod_cliente = $cta_ok["cod_cliente"];
      $num_medidor = $cta_ok["num_medidor"];
      $nombre = $cta_ok["nombre"];
      $apellido = $cta_ok["apellido"];
           
        
      
    $lectura_query = "SELECT * FROM lecturas WHERE num_cuenta='$num_cuenta' AND mes='$mes' AND anio='$anio' AND cod_lectura='$cod_lectura'";			
        $result_lectura_query = $db->query($lectura_query); 
        if($lectura_ok = mysqli_fetch_array($result_lectura_query))
            $mes = $lectura_ok["mes"];
            $anio = $lectura_ok["anio"];
            $cod_lectura = $lectura_ok["cod_lectura"];
            $lectura_anterior = $lectura_ok["lectura_anterior"];
            $lectura_actual = $lectura_ok["lectura_actual"];
            $consumo = $lectura_ok["consumo"];
            
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
            $historial3 = "SELECT * FROM lecturas WHERE num_cuenta='$num_cuenta' AND mes='$mes_desc3' AND anio='$anio' ORDER BY num_cuenta";			
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
<body> 
<table border="0" width="100%" height=""  align="left" cellspacing="0" cellpadding="1" style="font_family:arial;font-size:9">
         
       <!--encabezado--><!---->
        <table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9">
            <tr>
            	<td colspan="4" style="line-height:50px;" align="center">&nbsp;</td>
            </tr>
					
            <tr>
		<td colspan=3 style="line-height:10px;"><br>Nombre: &nbsp; <?php echo strtoupper($nombre.' '.$apellido);?></td>
		<td style="line-height:10px;">&nbsp;&nbsp;</td>
            </tr>
				
            <tr>
		<td colspan=3 style="line-height:10px;">Recibo No. &nbsp;</td> 
		<td style="line-height:10px;">&nbsp;<?php echo $num_recibo;?></td>
            </tr>
	
            <tr>
		<td colspan=3 style="line-height:10px;">No. de cuenta:&nbsp;</td> 
		<td style="line-height:10px;">&nbsp;<?php echo $num_cuenta;?> </td>
            </tr>
				
            <tr>
                <td> Lectura actual  </td>
                <td> Lectura anterior  </td>
                <td> Consumo  </td>
                <td> Fecha de cobro  </td>
            </tr>
				
            <tr>
		<td width="25%" style="line-height:10px;" align="center"><?php echo $lectura_actual;?></td>
		<td width="25%" style="line-height:10px;" align="center"><?php echo $lectura_anterior;?> </td>
		<td width="25%" style="line-height:10px;" align="center"><?php echo $consumo;?></td>
		<td width="25%" style="line-height:10px;" align="center"><?php echo fecha_guion($fecha_cobro);?></td>
            </tr>
				
	</table>
                        
    <!--DIV MOSTRARA LA LINEA DEL SERVICIO-->
    <div style="width: 100%; height: 110px; text-align: left;border: 0px solid silver;">	
	<table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9;border: 0px solid silver;">
            <tr>
		<td> Codigo  </td><td> Servicio  </td><td> Monto  </td>
            </tr>
            <?php //EXTRAER DATOS DE TABLA RECIBO LINEA
		//extraer el servicio
		/*$recibo_linea = mysqli_query($server, "SELECT * FROM recibo_linea WHERE cod_recibo='$cod_recibo'");			
                if($recibo_linea_ok = mysqli_fetch_array($recibo_linea))
		$cod_servicio =$recibo_linea_ok["cod_servicio"];	
		$costo =$recibo_linea_ok["costo"];
			
		//EXTRAER DATOS DE TABLA SERVICIO
                //extraer el servicio
		$servi = mysqli_query($server, "SELECT * FROM servicio WHERE cod_servicio='$cod_servicio'");			
		if($servi_ok = mysqli_fetch_array($servi))
		$nombre_servicio =$servi_ok["nombre"];*/
		///////////////////////////////////////////////////////////////
            $recibo_linea = "SELECT * FROM recibo_linea WHERE cod_recibo='$cod_recibo'";
            $result_recibo_linea = $db->query($recibo_linea);
		//$recibo_linea = mysqli_query($server, "SELECT servicio.cod_servicio,servicio.nombre, recibo_linea.cod_recibo,recibo_linea.cod_servicio, recibo_linea.costo FROM servicio,recibo_linea WHERE (servicio.cod_servicio=recibo_linea.cod_servicio) AND recibo_linea.cod_recibo='$cod_recibo' ORDER recibo_linea.cod_servicio ASC");
				
            While($recibo_linea_ok = mysqli_fetch_array($result_recibo_linea))
		{
                //$cod_servicio =$recibo_linea_ok["cod_servicio"];	
		//$costo =$recibo_linea_ok["costo"];
					
		$consultar_servi = "SELECT * FROM inv_servicio WHERE cod_servicio='$recibo_linea_ok[cod_servicio]'";
		$result_consultar_servi= $db->query($consultar_servi);
                                                                     
                $Datos_servi = mysqli_fetch_array($result_consultar_servi);
					
		echo"
                    <tr>
                        <td>&nbsp;$recibo_linea_ok[cod_servicio]</td>
                        <td >$Datos_servi[nombre]</td>
									
                        <td>$&nbsp;$recibo_linea_ok[costo]</td>
                    </tr>";
			
		}
		//EXTRAER DATOS DE TABLA SERVICIO
		/*extraer el servicio
		$servi = mysqli_query($server, "SELECT * FROM servicio WHERE cod_servicio='$cod_servicio'");			
		if($servi_ok = mysqli_fetch_array($servi))
		$nombre_servicio =$servi_ok["nombre"];*/
            ?>
					
	</table>
    </div>  
                        
    <!--mora-->	
    <table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9;border: 0px solid silver;">
            <tr>
                <td style="line-height:20px;" width="50%" align="left">Recargo: $&nbsp;<?php echo $monto_recargo;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td style="line-height:20px;" width="50%" align="left">Total: $&nbsp;<?php echo $monto;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            
            <tr>	
                  
                <td style="line-height:25px;" width="50%" align="left">Fecha de Vencimiento: <?php echo fecha_guion($fecha_pago);?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
	</table>
			
    <!--consumo-->	
    <table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9;border: 0px solid silver;">
            <tr>
                <td colspan="3" style="line-height:20px;">Historial de consumo: &nbsp;</td>
            </tr>
            <tr>
		<td style="line-height:10px;" width="33%" align="center"><?php echo mes_letras($mes1);?></td><td style="line-height:10px;" width="34%" align="center"><?php echo mes_letras($mes2);?></td><td style="line-height:10px;" width="33%" align="center">&nbsp;&nbsp;<?php echo mes_letras($mes3);?></td>
            </tr>
            
            <tr>
                <td style="line-height:10px;" width="33%" align="center"><?php echo $consumo1;?></td><td style="line-height:10px;" width="34%" align="center"><?php echo $consumo2;?></td><td style="line-height:10px;" width="25%" align="center">&nbsp;&nbsp;<?php echo $consumo3;?></td>
            </tr>
            
            <tr>
		<td style="line-height:10px;" width="33%" align="center">$&nbsp;<?php echo $valor_consumo1;?></td><td style="line-height:10px;" width="34%" align="center">$&nbsp;<?php echo $valor_consumo2;?></td><td style="line-height:10px;" width="33%%" align="center">$&nbsp;<?php echo $valor_consumo3;?></td>
            </tr>
            <tr>
		<td colspan="3"style="line-height:5px;">&nbsp;</td>
            </tr>
            <tr>
		<td colspan="3" style="line-height:35px;">&nbsp;</td>
            </tr>
             <tr>
		<td colspan="3" style="line-height:35px;">&nbsp;</td>
            </tr>
            <tr>
		<td colspan="3" style="line-height:35px;">&nbsp;</td>
            </tr>
	</table>
		
     
    <!--encabezado--><!---->
        <table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9">
            <tr>
            	<td colspan="4" style="line-height:50px;" align="center">&nbsp;</td>
            </tr>
					
            <tr>
		<td colspan=3 style="line-height:10px;"><br>Nombre: &nbsp; <?php echo strtoupper($nombre.' '.$apellido);?></td>
		<td style="line-height:10px;">&nbsp;&nbsp;</td>
            </tr>
				
            <tr>
		<td colspan=3 style="line-height:10px;">Recibo No. &nbsp;</td> 
		<td style="line-height:10px;">&nbsp;<?php echo $num_recibo;?></td>
            </tr>
	
            <tr>
		<td colspan=3 style="line-height:10px;">No. de cuenta:&nbsp;</td> 
		<td style="line-height:10px;">&nbsp;<?php echo $num_cuenta;?> </td>
            </tr>
				
            <tr>
                <td> Lectura actual  </td>
                <td> Lectura anterior  </td>
                <td> Consumo  </td>
                <td> Fecha de cobro  </td>
            </tr>
				
            <tr>
		<td width="25%" style="line-height:10px;" align="center"><?php echo $lectura_actual;?></td>
		<td width="25%" style="line-height:10px;" align="center"><?php echo $lectura_anterior;?> </td>
		<td width="25%" style="line-height:10px;" align="center"><?php echo $consumo;?></td>
		<td width="25%" style="line-height:10px;" align="center"><?php echo fecha_guion($fecha_cobro);?></td>
            </tr>
				
	</table>	
			
        <!--DIV MOSTRARA LA LINEA DEL SERVICIO-->
	<div style="width: 100%; height: 110px; text-align: left;border: 0px solid silver;">	
	<table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9;border: 0px solid silver;">
            <tr>
		<td> Codigo  </td><td> Servicio  </td><td> Monto  </td>
            </tr>
            <?php //EXTRAER DATOS DE TABLA RECIBO LINEA
		//extraer el servicio
		/*$recibo_linea = mysqli_query($server, "SELECT * FROM recibo_linea WHERE cod_recibo='$cod_recibo'");			
                if($recibo_linea_ok = mysqli_fetch_array($recibo_linea))
		$cod_servicio =$recibo_linea_ok["cod_servicio"];	
		$costo =$recibo_linea_ok["costo"];
			
		//EXTRAER DATOS DE TABLA SERVICIO
                //extraer el servicio
		$servi = mysqli_query($server, "SELECT * FROM servicio WHERE cod_servicio='$cod_servicio'");			
		if($servi_ok = mysqli_fetch_array($servi))
		$nombre_servicio =$servi_ok["nombre"];*/
		///////////////////////////////////////////////////////////////
            $recibo_linea = "SELECT * FROM recibo_linea WHERE cod_recibo='$cod_recibo'";
            $result_recibo_linea = $db->query($recibo_linea);
		//$recibo_linea = mysqli_query($server, "SELECT servicio.cod_servicio,servicio.nombre, recibo_linea.cod_recibo,recibo_linea.cod_servicio, recibo_linea.costo FROM servicio,recibo_linea WHERE (servicio.cod_servicio=recibo_linea.cod_servicio) AND recibo_linea.cod_recibo='$cod_recibo' ORDER recibo_linea.cod_servicio ASC");
				
            While($recibo_linea_ok = mysqli_fetch_array($result_recibo_linea))
		{
                //$cod_servicio =$recibo_linea_ok["cod_servicio"];	
		//$costo =$recibo_linea_ok["costo"];
					
		$consultar_servi = "SELECT * FROM inv_servicio WHERE cod_servicio='$recibo_linea_ok[cod_servicio]'";
		$result_consultar_servi= $db->query($consultar_servi);
                                                                     
                $Datos_servi = mysqli_fetch_array($result_consultar_servi);
					
		echo"
                    <tr>
                        <td>&nbsp;$recibo_linea_ok[cod_servicio]</td>
                        <td >$Datos_servi[nombre]</td>
									
                        <td>$&nbsp;$recibo_linea_ok[costo]</td>
                    </tr>";
			
		}
		//EXTRAER DATOS DE TABLA SERVICIO
		/*extraer el servicio
		$servi = mysqli_query($server, "SELECT * FROM servicio WHERE cod_servicio='$cod_servicio'");			
		if($servi_ok = mysqli_fetch_array($servi))
		$nombre_servicio =$servi_ok["nombre"];*/
            ?>
					
	</table>
    </div>	
			
	<!--mora-->	
	<table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9;border: 0px solid silver;">
            <tr>
                <td style="line-height:20px;" width="50%" align="left">Recargo: $&nbsp;<?php echo $monto_recargo;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td style="line-height:20px;" width="50%" align="left">Total: $&nbsp;<?php echo $monto;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            
            <tr>	
                  
                <td style="line-height:25px;" width="50%" align="left">Fecha de Vencimiento: <?php echo fecha_guion($fecha_pago);?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
	</table>
			
	<!--consumo-->	
	<table border="0" width="100%" cellspacing="0" cellpadding="0" style="font_family:arial;font-size:9;border: 0px solid silver;">
            <tr>
                <td colspan="3" style="line-height:20px;">Historial de consumo: &nbsp;</td>
            </tr>
            <tr>
		<td style="line-height:10px;" width="33%" align="center"><?php echo mes_letras($mes1);?></td><td style="line-height:10px;" width="34%" align="center"><?php echo mes_letras($mes2);?></td><td style="line-height:10px;" width="33%" align="center">&nbsp;&nbsp;<?php echo mes_letras($mes3);?></td>
            </tr>
            
            <tr>
                <td style="line-height:10px;" width="33%" align="center"><?php echo $consumo1;?></td><td style="line-height:10px;" width="34%" align="center"><?php echo $consumo2;?></td><td style="line-height:10px;" width="25%" align="center">&nbsp;&nbsp;<?php echo $consumo3;?></td>
            </tr>
            
            <tr>
		<td style="line-height:10px;" width="33%" align="center">$&nbsp;<?php echo $valor_consumo1;?></td><td style="line-height:10px;" width="34%" align="center">$&nbsp;<?php echo $valor_consumo2;?></td><td style="line-height:10px;" width="33%%" align="center">$&nbsp;<?php echo $valor_consumo3;?></td>
            </tr>
            <tr>
		<td colspan="3"style="line-height:5px;">&nbsp;</td>
            </tr>
            <tr>
		<td colspan="3" style="line-height:35px;">&nbsp;</td>
            </tr>
            <tr>
		<td colspan="3" style="line-height:35px;">&nbsp;</td>
            </tr>
            <tr>
		<td colspan="3" style="line-height:35px;">&nbsp;</td>
            </tr>
	</table>
		

</table>
</body>


<?php
 $content = ob_get_clean();
 //$content= ob_clean();
 //require_once('html2pdf/html2pdf.class.php');
 try {
    //$pdf = new HTML2PDF('L','letter','es','UTF-8');//L y P*/
    //$pdf->pdf->SetDisplayMode('fullpage');
    //ob_clean();
    //$pdf -> writeHTML($content);
   // $pdf -> pdf ->IncludeJS('print(TRUE)');
    //$pdf -> output('recibos.pdf');
     $html2pdf = new HTML2PDF("P", "letter", "es");
     $html2pdf->setDefaultFont('Arial');
     $html2pdf->pdf->SetDisplayMode("fullpage");
     $html2pdf->writeHTML($content, isset($_GET["vuehtml"]));
     $html2pdf->Output("recibos_individual.pdf");
    
 }
 catch(HTML2PDF_exception $e) {
       echo $e;
     exit;
   }
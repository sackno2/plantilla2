<?php
require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);

  
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

if(isset($_GET['getClientId']))
{
	$result1 = "select * from recibos where num_recibo='".$_GET['getClientId']."'" or die(mysqli_error());
	$result_1 = $db->query($result1);
        if($row1 = mysqli_fetch_array($result_1))
	        
        $num_cuenta = $row1["num_cuenta"];
	$fecha_pago = $row1["fecha_pago"];
	$mes = $row1["mes"];
	$anio = $row1["anio"];
	$monto = $row1["monto"];
	$fecha_pagado0 = $row1["fecha_pagado"];
	
	
	
	
	$result2 = "select * from inv_cliente where num_cuenta='".$num_cuenta."'" or die(mysqli_error());
	$result_2 = $db->query($result2);
        
        if($row2 = mysqli_fetch_array($result_2))
	$num_cuenta = $row2["num_cuenta"];
	$cod_cliente = $row2["cod_cliente"];
        
        $result3 = "select * from inv_cliente where cod_cliente='".$cod_cliente."'" or die(mysqli_error());
	$result_3 = $db->query($result3);
        if($row3 = mysqli_fetch_array($result_3))
	$nombre = $row3["nombre"];
	$apellido = $row3["apellido"];
        
	
	
	
		  if($_GET['getClientId'] != '')
		  {
			echo "formObj.num_cuenta.value = '".$num_cuenta."';\n"; 
			echo "formObj.cliente.value = '".$nombre.' '.$apellido."';\n";    
			echo "formObj.mes.value = '".mes_letras($mes).' '.$anio.' / Vence:'.fecha_guion($fecha_pago)."';\n";    
			echo "formObj.monto.value = '".$monto."';\n"; 
			echo "formObj.fecha_pagado.value = '".fecha_guion($fecha_pagado0)."';\n"; 
			
		    
		  }
		  else
		  {
			echo "formObj.num_cuenta.value = '';\n";   
			echo "formObj.cliente.value = '';\n";   
			echo "formObj.mes.value = '';\n";    
			echo "formObj.monto.value = '';\n";    
			echo "formObj.fecha_pagado.value = '';\n"; 
			
			
		  } 
		
}
?>
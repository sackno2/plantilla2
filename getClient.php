<?php

  require_once('includes/load.php');
  
  //page_require_level(2);
if(isset($_GET['getClientId']))
 {  
    $cuenta = "select * from inv_cliente where num_cuenta='".$_GET['getClientId']."'" or die(mysqli_error());
    $result= $db->query($cuenta);
                          
    if($row = mysqli_fetch_array($result))
    $cod_cliente = $row["cod_cliente"];
    {
    //$result2 = mysqli_query($server, "select * from cliente where cod_cliente='".$cod_cliente."'") or die(mysqli_error());
    $cta_result2 = "select * from inv_cliente where cod_cliente='".$cod_cliente."'" or die(mysqli_error());
    $result2= $db->query($cta_result2);
    
    if($row2 = mysqli_fetch_array($result2))
    
  
    //if($row = mysqli_fetch_array($result_cuenta))
        {
        echo "formObj.nombre.value = '".$row2["nombre"]."';\n";    
	echo "formObj.nombre2.value = '".$row2["nombre"]."';\n";    
	echo "formObj.apellido.value = '".$row2["apellido"]."';\n";    
	echo "formObj.apellido2.value = '".$row2["apellido"]."';\n";   
        }
    else{
        echo "formObj.nombre.value = '';\n";   
        echo "formObj.nombre2.value = '';\n";   	
	echo "formObj.apellido.value = '';\n";    
	echo "formObj.apellido2.value = '';\n";  
  }    
}
}

?>







	
	
		 
		  
		  
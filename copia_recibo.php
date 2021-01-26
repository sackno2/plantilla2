<?php
$page_title = 'Impresion copia de recibo';
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
<script type="text/javascript" src="libs/js/ajax.js"></script>
<script type="text/javascript">
    
Ajax client lookup
		
	************************************************************************************************************/	
var ajax = new sack();
	var currentClientID=false;
	function getClientData()
	{
		var clientId = document.getElementById('clientID').value.replace(/[^0-9]/g,'');
		if(clientId.length!=0 && clientId!=currentClientID){
			currentClientID = clientId
			ajax.requestFile = 'getClient3.php?getClientId='+clientId;	// Specifying which file to get
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
	
	

	<!--
	...n�mero de tel�fono tipo 2634-2060:
		var patron = new Array(4,4)
	-->
	<script>
		var patron = new Array(4,4)
		var patron2 = new Array(8,1)
		var patron3 = new Array(4,6,3,1)
	function mascara(d,sep,pat,nums){
	if(d.valant != d.value){
	val = d.value
	largo = val.length
	val = val.split(sep)
	val2 = ''
	for(r=0;r<val.length;r++){
		val2 += val[r]	
	}
	if(nums){
		for(z=0;z<val2.length;z++){
			if(isNaN(val2.charAt(z))){
				letra = new RegExp(val2.charAt(z),"g")
				val2 = val2.replace(letra,"")
			}
		}
	}
	val = ''
	val3 = new Array()
	for(s=0; s<pat.length; s++){
		val3[s] = val2.substring(0,pat[s])
		val2 = val2.substr(pat[s])
	}
	for(q=0;q<val3.length; q++){
		if(q ==0){
			val = val3[q]
		}
		else{
			if(val3[q] != ""){
				val += sep + val3[q]
				}
		}
	}
	d.value = val
	d.valant = val
	}
}
</script>

<!--bloquear boton derecho de mouse-->
<script language="javascript">
    document.oncontextmenu = function () {return false;}
</script>

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
            <span>Impresion copia de recibo</span>
         </strong>
        </div>
    </div>
        
    
     <?php	//recibe la variable de la busqueda
	if(isset($_GET['recibo']))
            {
		$get_recibo = $_GET['recibo'];
            } 
	else
            {
		$get_recibo = '';  
		}
					
    ?>
    
        
    <div>DATOS DEL CLIENTE</div>
    
	
    
        
	
    <div class="row">
    <form class="col-12" name="f1" action="" method="POST" autocomplete="off">
	<div class="pull-left"> 
        <label  for="num_recibo">N&uacute;mero de Recibo:</label>
        <input  type="text" pattern="[0-9]{1,10}" name="num_recibo" id="num_recibo" value="<?php echo $get_recibo; ?>"  maxlength="10"  title="Valor numerico" style="width:100px;" autofocus required />
	<input type="submit" name="filtrar" value="Filtrar Recibo" class="btn btn-primary"/>
    	 <a href="buscar_recibo.php"class="btn btn-primary">Buscar Recibo</a>
    </div>
    </form>
     </div>
    

    <?php
	$num_recibo_post = $_POST["num_recibo"];
	if ( $_REQUEST['filtrar'] == "Filtrar Recibo" )
            {
		$datos_recibo = "select * from recibos where num_recibo='$num_recibo_post'";
                $result1= $db->query($datos_recibo);
		if($row1 = mysqli_fetch_array($result1))
                        
                  {
                    $num_recibo = $row1["num_recibo"];
                    $num_cuenta = $row1["num_cuenta"];
                    $fecha_vencimiento = fecha_guion($row1["fecha_pago"]);
                    $monto = $row1["monto"];
                    $pagado = $row1["pagado"];
                    $anulado = $row1["anulado"];
                    
		if($anulado=='SI')
                    {
                    $Mensaje_nulo = '<font color="red"><b>ESTE RECIBO ESTA ANULADO</b></font>';
                    }
                    else
			{
			$Mensaje_nulo = '';
			}
                    $datos_cliente = "select * from inv_cliente where num_cuenta='$num_cuenta'";
                     $result2= $db->query($datos_cliente);
                    if($row2 = mysqli_fetch_array($result2))
                    $num_cuenta = $row2["num_cuenta"];
                    $cod_cliente = $row2["cod_cliente"];
                    $nombre = $row2["nombre"];
                    $apellido = $row2["apellido"];
                    $mensaje_aviso = '
                    
                    <font color="blue">!Todos los campos son obligatorios!</font>';
                    }
                    else
			{
			$num_recibo = "";
			$nombre = "";
			$apellido = "";
			$fecha_vencimiento = "";
			$num_cuenta = "";
			$cod_cliente = "";
			$mensaje_aviso = '	<center>
					<font color="red">!N&uacute;mero de recibo <b>'.$_POST['num_recibo'].'</b> NO existe!</font>
					</center>';
			}
			}
			else
			{
			$mensaje_aviso = '
                        <br>
			<font color="blue">!Todos los campos son obligatorios!</font>';
			}
    ?>
    
    <div>

<form name="f2" action="" method="POST" autocomplete="off">
    <div> 
       <label  for="num_recibo">N&uacute;mero de Recibo:</label> 
        <input type="text" name="recibo" id="recibo" value="<?php echo $num_recibo;?>" class="textbox"  style="width:100px;" disabled />
						
    </div>    
    
    <div> 
        <label  for="num_cuenta">N&uacute;mero de Cuenta:</label>
        
        <input type="text" name="cuenta" id="cuenta" value="<?php echo $num_cuenta;?>" class="textbox"  style="width:100px;" disabled />
    </div>   
    
    <div> 
        <label  for="cliente">Cliente :</label>
        <input type="text" name="cliente" id="cliente" value="<?php echo $nombre.' '.$apellido;?>" class="textbox" style="width:90%;" disabled />
	
    </div> 
    
    <div> 
        <label  for="monto">Monto: $</label>
         <input type="text" name="monto" id="monto" value="<?php echo $monto;?>" class="textbox" style="width:100px;" disabled />
	
    </div> 
    
    					
    <div> 
        <label  for="num_cuenta">Vencimiento:</label>
       
    <input type="text" name="vencimiento" id="vencimiento" value="<?php echo $fecha_vencimiento;?>" class="textbox"  style="width:100px;" disabled />
	 					
    </div> 
    <?php echo $Mensaje_nulo;?>
        							
    </form> 
              
    </div>    
    
    
     <div> 
    <a href="recibos.php" class="btn btn-primary">Regresar</a> 
    
     <?php
	if($num_recibo_post==$num_recibo)
            {
            ?><input type="button" value="Imprimir" class="btn btn-primary" onclick="javascript:window.open('imprimir_copia_recibo.php?recibo=<?php echo $num_recibo;?>', 'imprimir_copia', 'width=1000, height=700, scrollbars=NO')"><?php 		
			}	
							else
							{
								echo '';
							}
							
							?>
    </div> 
    <br>
					
    <!-- aviso de ejecusion-->
   <table align="center" width="99%" height="80" cellspacing="0" cellpadding="0" style="border: solid 1px #CED8F6;" class="tabla_bordes_color">
    <tr>
	<td align="center">
            <?php		
		echo $mensaje_aviso;
            ?>		
	</td>
    </tr>
   </table>
                                        
                                    
   <?php include_once('layouts/footer.php'); ?>
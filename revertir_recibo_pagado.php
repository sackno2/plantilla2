<?php
 $page_title = 'Administracion de recibos pagados';
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
            <span>Revertir pago de recibo</span>
         </strong>
        </div>



<body>


	
	


					
					<!-- Formulario-->
					<form name="clientForm" action="" method="POST" autocomplete="off">
					
                                                <div class="form-row">
                                                        <div class="form-group col-md-12" align="left">
                                                        <label for="titulo"><font  size="2"><b>BUSCAR RECIBO</b></font></label>
                                                         </div>
                                                    
                                                   
                                                </div>
                                                    <div class="form-row">    
                                                      <div class="form-group col-md-6" align="left">
                                                       <b>Ingrese N&uacute;mero de Recibo:</b>
							<input type="number" min="1" name="clientID" id="clientID" maxlength="10" class="textbox" style="width:100px;" autofocus required />
                                                         
							</div>
                                                        
                                                         <div class="form-group col-md-6" align="left">
                                                        Fecha pagado: <input type="text" name="fecha_pagado" id="fecha_pagado" class="textbox" style="width:150px;" disabled />
                                                         </div>
                                                     </div>
                                                
                                                 <div class="form-row">
                                                
                                                     
                                                     <div class="form-group col-md-6" align="left">
                                                        Cuenta de Cliente: <input type="text" name="num_cuenta" id="num_cuenta" maxlength="10" class="textbox" style="width:100px;" disabled />
						     </div>
                                                     
                                                     <div class="form-group col-md-6" align="left">
                                                        Cliente: <input type="text" name="cliente" id="cliente" class="textbox" style="width:80%;" disabled />
						    </div>
                                                </div>
                                                
                                                <div class="form-row">
                                                 <div class="form-group col-md-6" align="left">
                                                        Mes aplicado: <input type="text" name="mes" id="mes" class="textbox" style="width:275px;" disabled />
                                                 </div>
                                                    
                                                 <div class="form-group col-md-6" align="left">
                                                        Monto: $ <input type="text" name="monto" id="monto" class="textbox" style="width:100px;" disabled />
								
                                                 </div>
                                                        </div>
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
						
					
                                                
                                                         
            <div class="row">
            <div class="form-group col-md-6" align="left">
           <input type="checkbox" id="solucionado" name="checkbox" value="solucionado" required /><label for="solucionado"><b>Marcar para confirmar</b></label>
            <input type="submit" name="guardar" value="Revertir Pago" class="btn btn-primary"/>&nbsp;&nbsp;&nbsp;&nbsp;
								
            </div>
            
            <div class="form-group col-md-6" align="right">
                <a href="pagos.php" class="btn btn-primary">Regresar</a>
           </div>
            </div>
						
										
					</form> 
					<br>
					<!-- aviso de ejecusion-->
					<table align="center" width="99%" height="80" cellspacing="0" cellpadding="0" style="border: solid 1px #CED8F6;" class="tabla_bordes_color">
						<tr>
							<td align="center">
							
						<?php		
						if ( $_REQUEST['guardar'] == "Revertir Pago" )
						{
							
							$num_recibo = stripslashes($_POST["clientID"]);
							$num_recibo = strip_tags($num_recibo);
							
							$fecha_pagado1 ='0000-00-00';
							
							$total_pagado = '0.00';
                                                        
							//verifica que el recibo existe
							$query_r = "SELECT num_recibo FROM recibos WHERE num_recibo='$num_recibo'";
							 $result_query_r = $db->query($query_r);
                                                        
                                                        if($row = mysqli_fetch_array($result_query_r))
								{
									//no se permite marcar el mmismo recibo
								$query = "SELECT num_recibo,pagado FROM recibos WHERE num_recibo='$num_recibo' AND pagado='NO' ";
                                                                $result_query = $db->query($query);
								
                                                                
                                                                if($row = mysqli_fetch_array($result_query))
									{
										echo ' 
										<center>
										<br>
										<font color="red">!Recibo <b>'.$num_recibo.'</b> No estaba marcado como pagado. No se efectuaron cambios!</font>
                                                                                </center>';
										mysqli_free_result($query); //liberamos la memoria del query a la db
									}
								else
									{
                                                                                
										//marca el recibo
										$actualiza="UPDATE recibos SET total_pagado='$total_pagado', pagado='NO',fecha_pagado='$fecha_pagado1' WHERE num_recibo='$num_recibo'";
										$result = $db->query($actualiza);
										if($result == false) 
										{
											echo '
											<center>
											<br>
											<font color="red">! <b>Error</b>, datos No guardados, verifique por favor !</font>
											</center>';
											$error = mysqli_errno();	
											echo msg_error($error);
										}
										else
										{
											echo '
											<center>
											<br>
											<font color="green" >!El Recibo <b>'.$num_recibo.'</b> fue Revertido a NO PAGADO!</font><br>
											</center>
											';
									    }

									}		
								}
							else
								{
									echo ' 
										<center>
										<br>
										<font color="red">!Recibo <b>'.$num_recibo.'</b> No existe en el registro!</font>
										</center>';
										mysqli_free_result($query_r); //liberamos la memoria del query a la db
															
								}	
						}
						else
						{
							echo '
							
							<font color="black">!Todos los campos son obligatorios!</font>';
						
						}//fin bloque scrip guardar
							
						?>		


							</td>
						</tr>
					</table>			
					
					</Fieldset>
					
					
				
				
	


</body>


<?php include_once('layouts/footer.php'); ?>
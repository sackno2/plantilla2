<?php
$page_title = 'Toma de lecturas';
  require_once('includes/load.php');
  //require_once('includes/mes_letras.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);

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
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
  
</div>
  <div class="row">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>LISTADO TOMA DE LECTURAS</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
             

<body>
<form method="post" action="listado_lecturasPDF.php" class="clearfix"> 
<table align="center" width="100%" bgcolor="white" height="530" cellspacing="1" cellpadding="0" style="border: solid 1px grey;" class="tabla_bordes"><!--tabla margen del tama�o del formulario-->
	<tr>
	 
	  <td align="center" width="300px">
			<fieldset class="tabla_bordes" style="border: solid 1px silver;">		
			<!-- Formulario filtrado--> 
	<table align="center" width="99%" height="480" cellspacing="0" cellpadding="0" style="border: solid 1px #CED8F6;" class="tabla_bordes_color">
	
	<tr>
	<div class="form-row">
	 <tr>
		<td align="center" width="100px">
		 <h4>Seleccione mes y año</h4>	
		</td>
	 </tr>	
 	<div class="form-group col-md-4">
      <label for="mes_r">Mes:</label>
        <select id="mes" name="mes_r" onchange="enviar_mes(this.value)" class="form-control" style="width: 140%;" required >
	<option value=1> 1-Enero</option>
	<option value=2> 2-Febrero</option>
	<option value='3'> 3-Marzo</option>
	<option value='4'> 4-Abril</option>
	<option value='5'> 5-Mayo</option>
	<option value='6'> 6-Junio</option>
	<option value='7'> 7-Julio</option>
	<option value='8'> 8-Agosto</option>
	<option value='9'> 9-Septiembre</option>
	<option value='10'>10-Octubre</option>
	<option value='11'>11-Noviembre</option>
	<option value='12'>12-Diciembre</option>
	</select>
    </div> 
    &nbsp;
	&nbsp;
	&nbsp;
	&nbsp;
     <div class="form-group col-md-4">
      <label for="anio_r">A&ntilde;o:</label>
        <?php
										$anio_1 = date('Y', strtotime('-1 year'));
										$anio_2 = date('Y', strtotime('-2 year'));
										$anio_3 = date('Y', strtotime('-3 year'));
										$anio_4 = date('Y', strtotime('-4 year'));
										$anio_5 = date('Y', strtotime('-5 year'));
										$anio_6 = date('Y', strtotime('-6 year'));
										$anio_7 = date('Y', strtotime('-7 year'));
										$anio_8 = date('Y', strtotime('-8 year'));
										$anio_9 = date('Y', strtotime('-9 year'));
										
									?>

									<select name="anio_r" class="form-control" style="width: 130%;"  required >
										<option value="<?php echo date('Y');?>"><?php echo date('Y');?></option>
										<option value="<?php echo $anio_1;?>"><?php echo $anio_1;?></option>
										<option value="<?php echo $anio_2;?>"><?php echo $anio_2;?></option>
										<option value="<?php echo $anio_3;?>"><?php echo $anio_3;?></option>
										<option value="<?php echo $anio_4;?>"><?php echo $anio_4;?></option>
										<option value="<?php echo $anio_5;?>"><?php echo $anio_5;?></option>
										<option value="<?php echo $anio_6;?>"><?php echo $anio_6;?></option>
										<option value="<?php echo $anio_7;?>"><?php echo $anio_7;?></option>
										<option value="<?php echo $anio_8;?>"><?php echo $anio_8;?></option>
										<option value="<?php echo $anio_9;?>"><?php echo $anio_9;?></option>
									</select>
        </div>
     		
					
				</tr>
				<tr>
					<tr>
					<td align="center">
                     <?php 
                     //$mes_r = remove_junk($db->escape($_POST['mes_r']));
                    // $anio_r = $_POST['anio_r'];

                    // <a href="destino.php?variable1=valor1&variable2=valor2">Mi enlace</a>
                     ?>                      
				<?php //echo	'<a href="listado_lecturasPDF.php?mes_r=$_POST['mes_r']&anio_r=" target="iframe_report" class="btn btn-primary" />Mostrar Reporte</a>';?>
					<div class="btn-group">
                    

                    <input type="submit" name="add_cliente" id="submit" value="Enviar" class="btn btn-primary">
     
                    </div>


					</td>	
					

					
				</tr>			
				</tr>
				<tr>
					<td align="center">
						<hr width="90%" style="border: solid 1px #CED8F6;">
					</td>
				</tr>
				<tr>
					
				</tr>
				
				<tr>
					<td align="center">
						<hr width="90%" style="border: solid 1px #CED8F6;">
					</td>
				</tr>
				<tr>
					<td align="center">						
						<div class="center">
                                                    <a href="lectura.php" class="btn btn-primary">Regresar</a>
                                                
                                               
                                                </div>
					</td>
				</tr>
			</table>
			</fieldset>
		</td>	
	
		<td align="center">
	
<!--===================================================================================================================================================-->  							
<!--======================================================INICIO BLOQUE DEL AREA DE TRABAJO============================================================-->
			
			<!--<embed src="../FPDF/usuario_pdf.php" width="99%" height="520">-->
			<iframe name="iframe_report" id="iframe_report" src="" value="Lectura"  scrolling="auto" color="silver" style=" background-position: 50% 50%; background-size:200px 80px; background-color: silver; border-color: silver;" width="99%" height="520" align="center" frameborder="1" >
							Su navegador no soporta iframes, se recomientda utilizar los navegadores Google Chrome o Mozilla Firefox.
			</iframe>

		</td>
	</tr>
</table>		

</form> 
</body>
</html>
<?php include_once('layouts/footer.php');?>
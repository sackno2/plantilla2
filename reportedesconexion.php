<?php
   $page_title = 'Reporte Desconexiones';
  
  require_once('includes/load.php');
  $desconexion = join_inv_desconexion_table_lista();
  $asociacion = join_asociacion1_table();

// Deshabilitar todo reporte de errores
//error_reporting(0);  
/*  $sql2 = ("SELECT * FROM asociacion WHERE cod_asociacion=18");
  $asociacion1= $db->query($sql2);
  $rowgenera2 = mysqli_fetch_array($asociacion1);*/
  
?>
<page>
 <h3 align="center">Reporte de Desconexiones</h3>
 <table width="621" border="0" align="center" cellspacing="1">
   <?php foreach ( $asociacion as $asociaciones):?>
  <tr>
    <td width="325">Código:<?php echo remove_junk($asociaciones['cod_asociacion']);?></td>
    <td width="289">Asociación:<?php echo remove_junk($asociaciones['nom_asociacion']); ?></td>
  </tr>
  <tr>
    <td>Departamento:<?php echo remove_junk($asociaciones['departamento']);?></td>
    <td>Municipio:<?php echo remove_junk($asociaciones['municipio']);?></td>
  </tr>
  <tr>
    <td>Dirección:<?php echo remove_junk($asociaciones['dir_asociacion']);?></td>
    <td>NIT:<?php echo remove_junk($asociaciones['nit_asociacion']);?></td>
  </tr>
  <tr>
    <td>Fecha:<?php echo date('Y-m-d'); ?></td>
    <td>Teléfono:<?php echo remove_junk($asociaciones['tel_asociacion']);?></td> 
  </tr>
  <?php endforeach; ?>
 </table>

 

<table class="table table-bordered" border="1" align="center" cellpadding="2" >
            <thead>
              <tr>
                <th class="text-center" style="width: 3%;">#</th>
                <th class="text-center" style="width: 10%;">Cuenta</th>
                <th class="text-center" style="width: 10%;">Nombre</th>
                <th class="text-center" style="width: 15%;">Apellido</th>
                <th class="text-center" style="width: 10%;">Fech. Orden</th>
                <th class="text-center" style="width: 20%;">Motivo</th>
                <th class="text-center" style="width: 10%;">Ejecutada</th>
                <th class="text-center" style="width: 10%;">Fech. Ejecución</th>
              </tr>
            </thead>
            <tbody>
            

            <?php foreach ( $desconexion as $desconexiones):?>
              
              <tr>
                <td class="text-center"><?php echo count_id();?></td>
                <td class="text-center"> <?php echo remove_junk($desconexiones['cod_cuenta']); ?></td>
                <td class="text-center"> <?php echo remove_junk($desconexiones['nombre']); ?></td>
                <td class="text-center"> <?php echo remove_junk($desconexiones['apellido']); ?></td>
                <td class="text-center"> <?php echo remove_junk($desconexiones['fecha_orden']); ?></td>
                <td class="text-center"> <?php echo remove_junk($desconexiones['motivo']); ?></td>
                <td class="text-center"> <?php echo remove_junk($desconexiones['ejecutada']); ?></td>
                <td class="text-center"> <?php echo remove_junk($desconexiones['fecha_ejecucion']); ?></td>
              </tr>   
            <?php endforeach; ?>
            </tbody>
    </table> 
 </page> 


<?php
/**
 * HTML2PDF Librairy - example
 *
 * HTML => PDF convertor
 * distributed under the LGPL License
 *
 * @author      Laurent MINGUET <webmaster@html2pdf.fr>
 *
 * isset($_GET['vuehtml']) is not mandatory
 * it allow to display the result in the HTML format
 */

    // get the HTML
    ob_start();
   // include(dirname(__FILE__).'/reportedesconexionPDF.php');
    $content = ob_get_clean();

    // convert to PDF
    require_once(dirname(__FILE__).'/html2pdf/html2pdf.class.php');
    try
    {
        $html2pdf = new HTML2PDF('P', 'A4', 'fr');
        $html2pdf->pdf->SetDisplayMode('fullpage');
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        $html2pdf->Output('reportedesconexionPDF.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
?>
<?php
ob_start();
 $page_title = 'Listado de Lectura';
  //require_once('config.php');
  require_once('includes/load.php');
//error_reporting(0);

$fech_lectura = busq_ultima_fecha();
$fecha_ultima ="";
$ultimo_mes="";
$ultimo_anio="";
//$mes_ultimo_letra="";

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

/////////////////////////////
$mes = $_POST['mes_r'];
$anio = $_POST['anio_r'];


///////////////////////////////

 $reporte = join_lecturas_reporte($mes,$anio);

//calcular el ultimo dia del mes para fecha lectura
            function getUltimoDiaMes($elAnio,$elMes) {
            return date("d",(mktime(0,0,0,$elMes+1,1,$elAnio)-1));
            }


foreach ($fech_lectura as $fechas_lect):
  //obtniendo la ultima fecha
$fecha_ultima= remove_junk($fechas_lect['ultima_fecha']);
$fecha_ultima_f= date("Y-m-d", strtotime("$fecha_ultima"));
$ultimo_mes=date("n",strtotime($fecha_ultima_f));
$ultimo_anio=date("Y",strtotime($fecha_ultima_f));
endforeach;

//Calculando nueva fecha para lectura
$proxima_fecha = strtotime($fecha_ultima."+ 1 days");
//echo date("Y-m-d",$proxima_fecha) . "\n";
$proximo_mes=date("n",$proxima_fecha);
//echo $proximo_mes;
$proximo_anio=date("Y",$proxima_fecha);
//echo $proximo_anio;
$proximo_mes_letra= mes_letras("$proximo_mes");

?>

 
<page>
 <h3 align="center">Listado de toma de lecturas</h3>
 <table width="621" border="0" align="center" cellspacing="1">
  <tr>
    <td class="text-center" width="100">Mes:<?php echo $proximo_mes_letra;?></td>
    <td class="text-center" width="100">Año:<?php echo $proximo_anio; ?></td>
    <td class="text-center" width="300">Fecha de toma de lectura:<?php echo date('Y-m-d');?></td>
  </tr> 
</table>
 <table class="table table-bordered" border="1" align="center" cellpadding="3" >
            <thead>
              <tr>
                <th class="text-center" style="width: 4%;">#</th>
                <th class="text-center" style="width: 20%;"> Nombres</th>
                <th class="text-center" style="width: 20%;"> Apellidos</th>
                <th class="text-center" style="width: 10%;"> Cuenta </th>
                <th class="text-center" style="width: 10%;"> Dirección </th>
                <th class="text-center" style="width: 15%;"> Lectura Anterior</th>
                <th class="text-center" style="width: 15% ;"> Lectura Actual</th>
              </tr>
             </thead>
               <tbody> 
               <?php foreach ($reporte as $reportes):?>    
              <tr>
                <td class="text-center"><?php echo count_id();?></td>
                <td class="text-center"> <?php echo remove_junk($reportes['nombre']);?></td>
                <td class="text-center"> <?php echo remove_junk($reportes['apellido']); ?></td>
                <td class="text-center"> <?php echo remove_junk($reportes['num_cuenta']); ?></td>
                <td class="text-center"> <?php echo remove_junk($reportes['direccion']); ?></td>
                <td class="text-center"><?php echo remove_junk($reportes['lectura_actual']); ?></td>
                 <td class="text-center"></td>
                </tr>
                <?php endforeach; ?>
              </tbody>
        </table>
  </page> 

<?php


/////
//$pdf = new PDF($order_invoice_list,PDF::TEMPLATE_INVOICE, $this->context->smarty, $this->context->language->id);
//ob_clean();
//$pdf->render();
//////
//include(dirname(__FILE__).'/prueba_reporte.php');
$content = ob_get_clean();
require_once(dirname(__FILE__).'/html2pdf/html2pdf.class.php');

try
    {
       $html2pdf = new HTML2PDF('L', 'A4', 'fr');
        $html2pdf->pdf->SetDisplayMode('fullpage');
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        $html2pdf->Output('reportelecturas.pdf');
      }
 catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }

/*

include(dirname(__FILE__).'/prueba_reporte.php');
$content = ob_get_clean();

//require_once('html2pdf/html2pdf.class.php');
//require_once(dirname(__FILE__).'/../html2pdf.class.php');
try {
 $pdf = new HTML2PDF('P','A4','es','UTF-8');//L y P*/
/* $pdf->pdf->SetDisplayMode('fullpage');
 $pdf ->writeHTML($content);
 $pdf -> pdf ->IncludeJS('print(TRUE)');
 $pdf -> output('listadolecturaspdf.pdf');
 
 /*       $html2pdf = new HTML2PDF('L', 'letter', 'es', 'UTF-8');
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        $html2pdf -> pdf ->IncludeJS('print(TRUE)');
        $html2pdf->Output('listadolecturaspdf.pdf');*/
/* }
  catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    };*/
 ?>

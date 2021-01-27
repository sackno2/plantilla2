<?php
//error_reporting(0);
ob_start();

/////
//$pdf = new PDF($order_invoice_list,PDF::TEMPLATE_INVOICE, $this->context->smarty, $this->context->language->id);
//ob_clean();
//$pdf->render();
//////
include(dirname(__FILE__).'/prueba_reporte.php');
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

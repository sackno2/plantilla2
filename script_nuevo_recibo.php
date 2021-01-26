<?php


require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  error_reporting(0);

		//Vaciar la tabla tmp
		$vaciado1 = "truncate table recibo_linea_tmp";
		//$result1 = mysqli_query($server, $vaciado1);
		$result_1 = $db->query($vaciado1);
		
                                                               // $result_cta = $db->query($cta);
								//if($cta_ok = mysqli_fetch_array($result_cta))
		
		//Header("Location: recibo_otros_servicios.php");
												
		?>
			<META HTTP-EQUIV="Refresh" CONTENT="0; URL=recibo_otros_servicios1.php">
			<?php include_once('layouts/header.php'); ?>									
		<?php
		
		
		
?>

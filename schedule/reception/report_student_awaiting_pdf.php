<?php
ob_start();
session_start();

include_once 'html2pdf/html2fpdf.php'; //HTML to PDF Creation
if($_SERVER['HTTP_HOST'] == "bletprojects.com" || $_SERVER['HTTP_HOST'] == "localhost"){
	$baseUrl="http://" . $_SERVER['HTTP_HOST'] ."/schedule/reception/"; 
}else if($_SERVER['HTTP_HOST'] == "berlitz-ksa.com" || $_SERVER['HTTP_HOST'] == "www.berlitz-ksa.com"){
	$baseUrl="http://" . $_SERVER['HTTP_HOST'] ."/mySMS/reception/"; 
}else{
	$baseUrl="http://" . $_SERVER['HTTP_HOST'] ."/reception/";
}

$filename = "report_student_awaiting.pdf";

$filepath="pdf_reports/".$filename;
$htmlFile = $baseUrl."report_student_awaiting_pdf_data.php?status=$_REQUEST[status]&centre_id=$_SESSION[centre_id]";
//$htmlFile =$baseUrl."report_invoice_on_arrival.php?quote_id=$_REQUEST[qoute_id]&id=$_REQUEST[pay_id]"; 
$buffer = file_get_contents($htmlFile); 
$pdf = new HTML2FPDF('P', 'mm', 'A3');
$pdf->AddPage(); 
$pdf->UseCSS(); 
$pdf->WriteHTML($buffer); 
$pdf->Output($filepath, 'F');

$file = $filepath;
if (file_exists($file)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header("Content-Type: application/force-download");
    header('Content-Disposition: attachment; filename=' . urlencode(basename($file)));
    // header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file));
    ob_clean();
    flush();
    readfile($file);
    exit;
}

?>	

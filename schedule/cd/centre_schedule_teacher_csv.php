<?php
ob_start();
session_start();

include_once('../includes/ExportToExcel.class.php');

//Object initialization

$exp=new ExportToExcel();
$exp->exportWithPage("centre_schedule_teacher_cvs_data.php","report_schedule_teacher.xls");
?>
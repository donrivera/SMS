<?php
ob_start();
session_start();
include_once '../includes/class.Main.php';

//Object initialization
$dbf = new User();

$from = $dbf->getDataFromTable("user", "email", "id='$_SESSION[id]'");
$to = $_REQUEST['mobile'];

$headers .= 'MIME-Version: 1.0' . "\n";
$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
$headers .= "From:".$from."\n";

$body=$_POST[msg];

$subject = $_POST[subject];

mail($to,$subject,$body,$headers);
//=================
// End Email
//=================

//Start Save Mail	
$dt = date('Y-m-d');
$dttm = date('Y-m-d h:i:s');

$string="dated='$dttm',user_id='$_SESSION[id]',msg='$subject',send_to='student',email='$to',send_date='$dt',msg_from='Admin',page_full_path='$_SERVER[REQUEST_URI]'";
$dbf->insertSet("email_history",$string);
// End Save Mail

header("Location:email_single.php?student_id=$_REQUEST[student_id]&msg=sent");
exit;
?>
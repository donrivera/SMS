<?
ob_start();
session_start();
include_once '../includes/class.Main.php';

//Object initialization
$dbf = new User();

if($_REQUEST['action']=='insert')
{
$important='0';
	if($_POST[imp]!="")
	{
		$important='1';
	}
	
	//Get time when News has been posted
	$tm = date("h:i A");
	
	$cr_date = date('Y-m-d H:i:s A');
	
	$audience='0';
	if($_POST[audience]!="")
	{
		$audience='1';
		
		$string="alert_id='$_POST[alert_id]',imp='$important',imp_info='$_POST[imp_info]',infor='$_POST[info]',dt='$_POST[date]',audience='$audience',tm='$tm',created_datetime='$cr_date',created_by='$_SESSION[id]',cen_dr='1',stu_ad='1',rep='1',student='1',teacher='1',centre_id='$_POST[centre_id]'";
		
	}
	else
	{
		$string="alert_id='$_POST[alert_id]',imp='$important',imp_info='$_POST[imp_info]',infor='$_POST[info]',dt='$_POST[date]',audience='$audience',tm='$tm',created_datetime='$cr_date',created_by='$_SESSION[id]',centre_id='$_POST[centre_id]'";	
	}
	
	$dbf->insertSet("news",$string);
	
	header("Location:news_manage.php");
}


if($_REQUEST['action']=='edit')
{
  $important='0';
	if($_POST[imp]!="")
	{
		$important='1';
	}
	
	$cr_date = date('Y-m-d H:i:s A');
	
	$audience='0';
	if($_POST[audience]!="")
	{
		$audience='1';
		
		$string="alert_id='$_POST[alert_id]',imp='$important',imp_info='$_POST[imp_info]',infor='$_POST[info]',dt='$_POST[date]',audience='$audience',tm='$tm',created_datetime='$cr_date',created_by='$_SESSION[id]',cen_dr='1',stu_ad='1',rep='1',student='1',teacher='1',centre_id='$_POST[centre_id]'";
		
	}
	else
	{
		$string="alert_id='$_POST[alert_id]',imp='$important',imp_info='$_POST[imp_info]',infor='$_POST[info]',dt='$_POST[date]',audience='$audience',tm='$tm',created_datetime='$cr_date',created_by='$_SESSION[id]',centre_id='$_POST[centre_id]'";	
	}

	$dbf->updateTable("news",$string,"id='$_REQUEST[id]'");
	
	header("Location:news_manage.php");
}

if($_REQUEST['action']=='delete')
{
	$dbf->deleteFromTable("news","id='$_REQUEST[id]'");
	header("Location:news_manage.php");
}

if($_REQUEST['action']=='setstatus')
{	
	$status = 0;
	if($_REQUEST[val]=="true")
	{
		$status = 1;
	}
	if($_REQUEST['type']=='cd')
	{
		$string="cen_dr='$status'";
		$dbf->updateTable("news",$string,"id='$_REQUEST[id]'");
	}
	if($_REQUEST['type']=='sa')
	{
		$string="stu_ad='$status'";
		$dbf->updateTable("news",$string,"id='$_REQUEST[id]'");
	}
	if($_REQUEST['type']=='re')
	{
		$string="rep='$status'";
		$dbf->updateTable("news",$string,"id='$_REQUEST[id]'");
	}
	if($_REQUEST['type']=='st')
	{
		$string="student='$status'";
		$dbf->updateTable("news",$string,"id='$_REQUEST[id]'");
	}
	if($_REQUEST['type']=='te')
	{
		$string="teacher='$status'";
		$dbf->updateTable("news",$string,"id='$_REQUEST[id]'");
	}
	exit;
}

if($_REQUEST['action']=='block')
{
	$dbf->updateTable("news","status='1'","id='$_REQUEST[id]'");
	header("Location:news_manage.php");
}

if($_REQUEST['action']=='unblock')
{
	$dbf->updateTable("news","status='0'","id='$_REQUEST[id]'");
	header("Location:news_manage.php");
}
?>

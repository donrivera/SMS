<?php
ob_start();
session_start();
if(($_COOKIE['cook_username'])=='')
{
	if($_SESSION['id']=="" || $_SESSION['user_type']!="Center Director")
	{
		header("Location:../index.php");
		exit;
	}
}

include_once '../includes/class.Main.php';

$pageTitle='Welcome to Berlitz-KSA';

include 'application_top.php';

include_once '../includes/language.php';

//Object initialization
$dbf = new User();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Berlitz</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<?php
if($_SESSION[font]=='big'){
	?>
    <link rel="stylesheet" type="text/css" href="glowtabs-big.css" />
    <?php
}else if($_SESSION[font]=="small"){
	?>
    <link rel="stylesheet" type="text/css" href="glowtabs-small.css" />
    <?php
}else{
	?>    
    <link rel="stylesheet" type="text/css" href="glowtabs.css" />
    <?php
}
?>
<script type="text/javascript" src="dropdowntabs.js"></script>
<!--UI JQUERY DATE PICKER-->
<link rel="stylesheet" href="datepicker/jquery.ui.all.css">

<script src="datepicker/jquery.ui.core.js"></script>
<script src="datepicker/jquery.ui.widget.js"></script>
<script src="datepicker/jquery.ui.datepicker.js"></script>

<link rel="stylesheet" href="datepicker/demos.css">
<script>
$(function() {
	$( ".datepick" ).datepicker({
		changeMonth: true,
		changeYear: true,
		dateFormat: 'yy-mm-dd'
	});
});

$(function() {
	$( ".datepickFuture" ).datepicker({
		changeMonth: true,
		changeYear: true,
		//numberOfMonths: 2,
		minDate: new Date(),
		
		//maxDate: new Date(2011, 10, 25, 17, 30),

		dateFormat: 'yy-mm-dd'
	});
});


$(function() {
	$( ".datepickPast" ).datepicker({
		changeMonth: true,
		changeYear: true,
		//numberOfMonths: 2,
		maxDate: new Date(),
		
		//maxDate: new Date(2011, 10, 25, 17, 30),

		dateFormat: 'yy-mm-dd'
	});
});	
</script>
<!--UI JQUERY DATE PICKER-->
</head>
<script language="Javascript" type="text/javascript">
var countdown;
var countdown_number;

function countdown_init(count) {
    countdown_number = count;
    countdown_trigger();
}

function countdown_trigger(){
    if(countdown_number > 0){
        countdown_number--;
        //document.getElementById('countdown_text').innerHTML = countdown_number;
        if(countdown_number > 0) {
            countdown = setTimeout('countdown_trigger()', 1000);
        }
    }
	if(countdown_number == 0){
		var msg = "Your session has been expired.";
		alert(msg)
		window.location.href='../logout.php';
	}
}
</script>
<?php
//Get from the table
$res_logout = $dbf->strRecordID("conditions","*","type='Logout Time'");
$count = $res_logout["name"]; // Set timeout period in seconds
?>
<body onload="countdown_init(<?php echo $count;?>);">
<?php if($_SESSION[lang]=="EN"){?>
<table <?php if($_SESSION["lang"] == "AR"){?> style="margin-top:-15px;" <?php } ?> width="100%" border="0" align="center" cellpadding="0" cellspacing="0" onclick="countdown_init(<?=$count;?>);">
  <tr>
    <td height="39" align="left" valign="middle" style="padding-left:5px;"><?php include '../top.php';?></td>
  </tr>
  <tr>
    <td height="104" align="left" valign="top"><?php include 'header.php';?></td>
  </tr>
  <tr>
    <td align="left" valign="top">
    
    <form name="frm" method="post" id="frm">
    <table width="98%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="19%" align="left" valign="top"><?php include 'left_menu.php';?></td>
        <td width="2%"><p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
        <td width="79%" align="left" valign="top">
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="middle" style="background:url(../images/footer_repeat.png) repeat-x;"><table width="100%" border="0" cellspacing="0">
              <tr class="logintext">
                <td width="54%" height="30" align="left" class="headingtext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_HEADING");?> </td>
                <td width="22%" align="left">&nbsp;</td>
                <td width="8%" align="left">&nbsp;</td>
                <td width="8%" align="left">&nbsp;</td>
                <td width="8%" align="left">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="35" align="left" valign="middle" >
            <?php //if($_REQUEST["enddate"] != ''){?>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
                <td width="36" align="center" valign="top"><a href="centre_schedule_enddate_word.php?enddate=<?php echo $_REQUEST["enddate"];?>"><img src="../images/word2007.png" width="20" height="20" border="0" title="<?php echo ICON_EXPORT_WORD ?>"></a></td>
                <td width="36" align="center" valign="top"><a href="centre_schedule_enddate_csv.php?enddate=<?php echo $_REQUEST["enddate"];?>"><img src="../images/excel2007.PNG" width="20" height="20" border="0" title="<?php echo ICON_EXPORT_XLS ?>"></a></td>
                <td width="30" align="center" valign="top"><a href="centre_schedule_enddate_pdf.php?enddate=<?php echo $_REQUEST["enddate"];?>"><img src="../images/pdf.png" width="20" height="20" border="0" title="<?php echo ICON_EXPORT_PDF ?>"></a></td>
                <td width="36" align="center" valign="middle">&nbsp;</td>
              </tr>
            </table>
            <?php //} ?>
			
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:solid 1px; border-color:#FFCC00;">
              <tr>
                <td width="165" height="25" align="right" valign="middle" bgcolor="#FBF3E6" class="pedtext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_CHOOSEENDDATE");?>:&nbsp;</td>
                <td width="112" align="left" valign="middle" bgcolor="#FBF3E6">
                <input name="enddate" type="text" class="datepick new_textbox100" id="enddate" value="<?php echo $_REQUEST[enddate];?>" /></td>
                <td width="254" align="left" valign="middle" bgcolor="#FBF3E6">
                <input type="submit" name="submit" id="submit" value="<?php echo constant("btn_search");?>" class="btn1" onclick="javascript:document.frm.action='centre_schedule_enddate.php',document.frm.submit();"/>
                </td>
                <td width="499" align="left" valign="middle" bgcolor="#FBF3E6" class="red_smalltext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_RECORDDISPLAYACCORDINGTOENDDATE");?>.</td>
              </tr>
            </table></td>
          </tr>
          
          <tr>
            <td align="left" valign="top">
            <table width="100%" border="1" bordercolor="#000000" cellspacing="0" cellpadding="0" style="border-collapse:collapse;">
              <tr>
                <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("ADMIN_REPORT_TEACHER_BOARD_TEACHERNAME");?></td>
                <td height="25" align="center" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_COURSE");?></td>
                <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("ADMIN_REPORT_TEACHER_OVERTIME_REPORT_GROUP");?></td>
                <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("CD_CENTRE_SCHEDULE_RANGEDATE_NOOFSTUDENT");?></td>
                <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("ADMIN_REPORT_STUDENT_NOT_ENROLLED_STATUS");?></td>
              </tr>
              
              <?php
			$color = "#ECECFF";
			
			if($_REQUEST[enddate] !=''){
				 $cond="end_date <='$_REQUEST[enddate]' And centre_id='$_SESSION[centre_id]'";
			}else{
				$cond="centre_id='$_SESSION[centre_id]'";
			}
			//Get Number of Rows
			$num=$dbf->countRows('student_group',$cond);
			//echo $num;
			
            //Loop start
			foreach($dbf->fetchOrder('student_group',$cond,"id","") as $val){
			
			//Get no of students
			$val_no = $dbf->strRecordID("student_group_dtls","COUNT(id)","parent_id='$val[id]'");
			
			//Get group name
			$val_group = $dbf->strRecordID("common","*","id='$val[group_id]'");
			
			//Get course name
			$val_course = $dbf->strRecordID("course","*","id='$val[course_id]'");
			
			//Get teacher name
			$val_teacher = $dbf->strRecordID("teacher","*","id='$val[teacher_id]'");
			?>              
              <tr bgcolor="<?php echo $color;?>" onMouseover="this.bgColor='#FDE6D0'" onMouseout="this.bgColor='<?php echo $color;?>'">
                <td width="202" align="center" valign="middle"  class="mycon"><?php echo $val_teacher[name];?></td>
                <td width="188" height="25" align="center" valign="middle"  class="mycon"><?php echo $val_course[name];?></td>
                <td width="367" align="center" valign="middle"  class="mycon"><?php echo $dbf->FullGroupInfo($val["id"]);?></td>
                <td width="100" align="center" valign="middle"  class="mycon"><?php echo $val_no["COUNT(id)"];?></td>
                <td width="102" align="center" valign="middle"  class="mycon"><?php echo $val[status];?></td>
              </tr>
            <?php
			if($color=="#ECECFF")
				  {
					  $color = "#FBFAFA";
				  }
				  else
				  {
					  $color="#ECECFF";
				  }
			
			 } ?>
            </table></td>
          </tr>
          <?php if($num==0) {?>
		  <tr>
            <td height="20" align="center" valign="middle" bgcolor="#FBF3E6" class="red_smalltext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_NORECFOUND");?></td>
          </tr>
          <?php } ?>
        </table></td>
      </tr>
    </table>
    </form>
    
    </td>
  </tr>
  <tr>
    <td align="center" valign="top">&nbsp;</td>
  </tr>
   <?php include '../footer.php';?>
</table>
<?php } else{?>
<table <?php if($_SESSION["lang"] == "AR"){?> style="margin-top:-15px;" <?php } ?> width="100%" border="0" align="center" cellpadding="0" cellspacing="0" onclick="countdown_init(<?=$count;?>);">
  <tr>
    <td height="39" align="left" valign="middle" style="padding-left:5px;"><?php include '../top_right.php';?></td>
  </tr>
  <tr>
    <td height="104" align="left" valign="top"><?php include 'header_right.php';?></td>
  </tr>
  <tr>
    <td align="left" valign="top">
    
    <form name="frm" method="post" id="frm">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="78%" align="right" valign="top">
          <table width="98%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="79%" align="left" valign="top">
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="left" valign="middle" style="background:url(../images/footer_repeat.png) repeat-x;"><table width="100%" border="0" cellspacing="0">
                      <tr class="logintext">
                        <td width="22%" align="left">&nbsp;</td>
                        <td width="8%" align="left">&nbsp;</td>
                        <td width="8%" align="left">&nbsp;</td>
                        <td width="8%" align="left">&nbsp;</td>
                        <td width="54%" height="30" align="right" class="headingtext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_HEADING");?> </td>
                        </tr>
                      </table></td>
                    </tr>
                  <tr>
                    <td height="35" align="left" valign="middle" >
                      <?php //if($_REQUEST["enddate"] != ''){?>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="36" align="center" valign="middle">&nbsp;</td>
							<td width="30" align="center" valign="top"><a href="centre_schedule_enddate_pdf.php?enddate=<?php echo $_REQUEST["enddate"];?>"><img src="../images/pdf.png" width="20" height="20" border="0" title="<?php echo ICON_EXPORT_PDF ?>"></a></td>
							<td width="36" align="center" valign="top"><a href="centre_schedule_enddate_csv.php?enddate=<?php echo $_REQUEST["enddate"];?>"><img src="../images/excel2007.PNG" width="20" height="20" border="0" title="<?php echo ICON_EXPORT_XLS ?>"></a></td>
							<td width="36" align="center" valign="top"><a href="centre_schedule_enddate_word.php?enddate=<?php echo $_REQUEST["enddate"];?>"><img src="../images/word2007.png" width="20" height="20" border="0" title="<?php echo ICON_EXPORT_WORD ?>"></a></td>
							<td>&nbsp;</td>
						  </tr>
						</table>
					  <?php //} ?>
					  
                      <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:solid 1px; border-color:#FFCC00;">
                        <tr>
                          <td width="495" align="right" valign="middle" bgcolor="#FBF3E6" class="red_smalltext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_RECORDDISPLAYACCORDINGTOENDDATE");?>.</td>
                          <td width="253" align="right" valign="middle" bgcolor="#FBF3E6">
                            <input type="submit" name="submit" id="submit" value="<?php echo constant("btn_search");?>" class="btn2" onclick="javascript:document.frm.action='centre_schedule_enddate.php',document.frm.submit();"/>
                            </td>
                          <td width="130" align="center" valign="middle" bgcolor="#FBF3E6">
                            <input name="enddate" type="text" class="datepick new_textbox100_ar" id="enddate" value="<?php echo $_REQUEST[enddate];?>" /></td>
                          <td width="147" height="25" align="left" valign="middle" bgcolor="#FBF3E6" class="pedtext"> : <?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_CHOOSEENDDATE");?>&nbsp;</td>
                          </tr>
                        </table></td>
                    </tr>
                  
                  <tr>
                    <td align="left" valign="top">
                      <table width="100%" border="1" bordercolor="#000000" cellspacing="0" cellpadding="0" style="border-collapse:collapse;">
                        <tr>
                          <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("ADMIN_REPORT_STUDENT_NOT_ENROLLED_STATUS");?></td>
                          <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("CD_CENTRE_SCHEDULE_RANGEDATE_NOOFSTUDENT");?></td>
                          <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("ADMIN_REPORT_TEACHER_OVERTIME_REPORT_GROUP");?></td>
                          <td height="25" align="center" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_COURSE");?>
                          </td>
                          <td align="center" valign="middle" class="pedtext" bgcolor="#DDDDDD"><?php echo constant("ADMIN_REPORT_TEACHER_BOARD_TEACHERNAME");?></td>
                          </tr>
                        
                        <?php
						$color = "#ECECFF";
						
						if($_REQUEST[enddate] !=''){
							 $cond="end_date <='$_REQUEST[enddate]' And centre_id='$_SESSION[centre_id]'";
						}else{
							$cond="centre_id='$_SESSION[centre_id]'";
						}
						//Get Number of Rows
						$num=$dbf->countRows('student_group',$cond);
						//echo $num;
						
						//Loop start
						foreach($dbf->fetchOrder('student_group',$cond,"id","") as $val){
						
						//Get no of students
						$val_no = $dbf->strRecordID("student_group_dtls","COUNT(id)","parent_id='$val[id]'");
						
						//Get group name
						$val_group = $dbf->strRecordID("common","*","id='$val[group_id]'");
						
						//Get course name
						$val_course = $dbf->strRecordID("course","*","id='$val[course_id]'");
						
						//Get teacher name
						$val_teacher = $dbf->strRecordID("teacher","*","id='$val[teacher_id]'");
						?>                        
                        <tr bgcolor="<?php echo $color;?>" onMouseover="this.bgColor='#FDE6D0'" onMouseout="this.bgColor='<?php echo $color;?>'">
                          <td width="106" align="center" valign="middle"  class="mycon"><?php echo $val[status];?></td>
                          <td width="121" align="center" valign="middle"  class="mycon"><?php echo $val_no["COUNT(id)"];?></td>
                          <td width="355" align="center" valign="middle"  class="mycon"><?php echo $dbf->FullGroupInfo($val["id"]);?></td>                          
                          <td width="189" height="25" align="center" valign="middle"  class="mycon"><?php echo $val_course[name];?></td>
                          <td width="182" align="center" valign="middle"  class="mycon"><?php echo $val_teacher[name];?></td>
                          </tr>
                        <?php
						  if($color=="#ECECFF"){
							  $color = "#FBFAFA";
						  }else{
							  $color="#ECECFF";
						  }					
					 }
					 ?>
                     </table></td>
                    </tr>
                  <?php if($num==0) {?>
                  <tr>
                    <td height="20" align="center" valign="middle" bgcolor="#FBF3E6" class="red_smalltext"><?php echo constant("CD_CENTRE_SCHEDULE_ENDDATE_NORECFOUND");?></td>
                    </tr>
                  <?php } ?>
                  </table></td>
              </tr>
          </table></td>
        <td width="2%" align="right" valign="top">&nbsp;</td>
        <td width="18%" align="right" valign="top"><?php include 'left_menu_right.php';?></td>
      </tr>
    </table>
    </form>
    
    </td>
  </tr>
  <tr>
    <td align="center" valign="top">&nbsp;</td>
  </tr>
   <?php include '../footer.php';?>
</table>
<?php }?>

</body>
</html>

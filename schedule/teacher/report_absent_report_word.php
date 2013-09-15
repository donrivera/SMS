<?php
ob_start();
session_start();
if(($_COOKIE['cook_username'])=='')
{
	if($_SESSION['id']=="" || $_SESSION['user_type']!="Teacher")
	{
		header("Location:../index.php");
		exit;
	}
}

include_once '../includes/class.Main.php';

//Object initialization
$dbf = new User();
include_once '../includes/language.php';
//Important below 2 lines
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment; Filename=report_absent_report.doc");

?>	
<!--Important-->
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">

<table width="100%" border="1" cellpadding="0" cellspacing="0"  bordercolor="#999999"class="tablesorter" id="sort_table" style="border-collapse:collapse;">
			    <thead>
                <tr class="logintext">
                  <th width="2%" height="25" align="center" valign="middle" bgcolor="#CCCCCC">&nbsp;</th>
                  <th width="12%" align="left" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_TEACHER_BOARD_STUDENTNAME;?></th>
                  <th width="12%" align="left" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_GROUP_TO_FINISH_LEVEL;?></th>
                  <th width="7%" height="30" align="left" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_ABSENT_REPORT_GROUP;?></th>
                  <th width="13%" align="left" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_ABSENT_REPORT_TEACHERNAME;?></th>
                  <th width="15%" align="left" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_ABSENT_REPORT_MOBILENO;?></th>
                  <th width="17%" align="left" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_ABSENT_REPORT_EMAILADDRESS;?></th>
                  <th width="11%" align="left" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_ABSENT_REPORT_LASTATTAND;?></th>
                  <th colspan="2" align="center" valign="middle" bgcolor="#CCCCCC" class="pedtext"><?php echo ADMIN_REPORT_ABSENT_REPORT_TOTALABSENT;?></th>
                </tr>
				</thead>
                <?php
					$i = 1;
					$color="#ECECFF";
					
					//Get Number of Rows
					//$num=$dbf->countRows('student');
					//loop start
					foreach($dbf->fetchOrder('student_group m,student_group_dtls d',"m.id=d.parent_id And m.teacher_id='$_SESSION[uid]'","","d.*") as $val) {
					
					//Get Course
					$course = $dbf->strRecordID("course","*","id='$val[course_id]'");
					
					//Get Total Absent
					$res_max = $dbf->strRecordID("ped_attendance","COUNT(id)","student_id='$val[student_id]' AND (shift1='A' OR shift2='A' OR shift3='A' OR shift4='A' OR shift5='A' OR shift6='A' OR shift7='A' OR shift8='A' OR shift9='A')");
					$countid = $res_max["COUNT(id)"];
					
					//Get Last Attendance
					$res_max = $dbf->strRecordID("ped_attendance","MAX(id)","student_id='$val[student_id]' AND (shift1='A' OR shift2='A' OR shift3='A' OR shift4='A' OR shift5='A' OR shift6='A' OR shift7='A' OR shift8='A' OR shift9='A')");
					$maxid = $res_max["MAX(id)"];
					
					$reslast = $dbf->strRecordID("ped_attendance","*","id<'$maxid' AND student_id='$val[student_id]' AND (shift1='X' OR shift2='X' OR shift3='X' OR shift4='X' OR shift5='X' OR shift6='X' OR shift7='X' OR shift8='X' OR shift9='X')");
					$resp = $dbf->strRecordID("ped_attendance","*","student_id='$val[id]' AND (shift1='X' OR shift2='X' OR shift3='X' OR shift4='X' OR shift5='X' OR shift6='X' OR shift7='X' OR shift8='X' OR shift9='X')");
					
					//Get Name Of Groups
					$res = $dbf->strRecordID("student","*","id='$val[student_id]'");
					$res2 = $dbf->strRecordID("common","*","id='$val[parent_id]'");
					
					//Get Name Of Teacher
					$res3 = $dbf->strRecordID("teacher","*","id='$_SESSION[uid]'");
					
					if($countid>0) {
					?>
                    
<tr bgcolor="<?php echo $color;?>" onMouseover="this.bgColor='#FDE6D0'" onMouseout="this.bgColor='<?php echo $color;?>'" style="cursor:pointer;">
                  <td align="center" valign="middle" class="contenttext">&nbsp;</td>
                  <td align="left" valign="middle" class="contenttext" style="padding-left:5px;"><?php echo $res[first_name];?></td>
                  <td align="left" valign="middle" class="contenttext" style="padding-left:5px;"><?php echo $course[name];?></td>
                  <td align="left" valign="middle" class="contenttext" style="padding-left:5px;"><?php echo $res2[name];?></td>
                  <td align="left" valign="middle" class="contenttext" style="padding-left:5px;"><?php echo $res3[name];?></td>
                  <td align="left" valign="middle" class="contenttext" style="padding-left:5px;"><?php echo $res[student_mobile];?></td>
                  <td align="left" valign="middle" class="contenttext" style="padding-left:5px;"><?php echo $res[email];?></td>
				  <?php
				  $last = '';
				  if($reslast["unit"] > 0){
				  		$last = "Unit(".$reslast["unit"].") ,". date('d/m/Y',strtotime($reslast[dated]));
				  }
				  ?>
                  <td align="left" valign="middle" class="contenttext" style="padding-left:5px;"><?php echo $last;?></td>
                  <td width="11%" align="center" valign="middle"><?php echo $countid;?></td>
                  <?php
						  $i = $i + 1;
						  if($color=="#ECECFF"){
							  $color = "#FBFAFA";
						  }else{
							  $color="#ECECFF";
						  }					  
					  }
				  }
				  ?>
  </tr>
            </table>
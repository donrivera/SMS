<?php
ob_start();
session_start();
if(($_COOKIE['cook_username'])=='')
{
	if($_SESSION['id']=="" || $_SESSION['user_type']!="Administrator")
	{
		header("Location:../index.php");
		exit;
	}
}

include_once '../includes/class.Main.php';

//Object initialization
$dbf = new User();
include '../includes/FusionCharts.php';
include_once '../includes/language.php';
//Important below 2 lines
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment; Filename=report_student_not_enrolled.doc");

?>

<!--Important-->
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">
	
<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top">&nbsp;</td>
                <td>&nbsp;</td>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
              <tr>
                <td align="left" valign="top">&nbsp;</td>
                <td align="center" valign="middle" bgcolor="#990066" class="headingtext"><?php echo constant("ADMIN_REPORT_STUDENT_GROUP_GRADE_STUDENTDETAILS");?> </td>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
              <tr>
                <td height="5" align="left" valign="top"></td>
                <td height="5" align="left" valign="middle" class="lable1"></td>
                <td height="5" align="left" valign="top"></td>
              </tr>
			  <?php
			 $res = $dbf->strRecordID("student","*","id='$_REQUEST[student]'");
			
			 ?>
              <tr>
                <td align="left" valign="top">&nbsp;</td>
                <td align="left" valign="middle" class="lable1"><?php echo constant("STUDENT_ADVISOR_S2_NAME");?> :<?php echo $res[first_name]; ?> </td>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
              <tr>
                <td align="left" valign="top">&nbsp;</td>
                <td align="left" valign="middle" class="lable1"><?php echo constant("ADMIN_REPORT_STUDENT_GROUP_GRADE_IDNO");?> : <?php echo $res[student_id]; ?> </td>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
              <tr>
                <td align="left" valign="top">&nbsp;</td>
                <td align="left" valign="middle" class="lable1"><?php echo constant("ADMIN_REPORT_STUDENT_GROUP_GRADE_EMAIL");?>: &nbsp;<?php echo $res[email]; ?> </td>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
           
              <tr>
                <td align="left" valign="top">&nbsp;</td>
                <td align="left" valign="middle">&nbsp;</td>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
			  
              <tr>
                <td width="350" align="left" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse;" bordercolor="#DFF2DB" class="tablesorter" id="tablesorter-demo">
                  <tr class="logintext">
                    <td width="6%" height="25" align="center" valign="middle" bgcolor="#99CC99" >&nbsp;</td>
                    <td width="67%" align="left" valign="middle" bgcolor="#99CC99" class="menutext" ><?php echo constant("ADMIN_REPORT_STUDENT_GROUP_GRADE_COURSENAME");?></td>
                    <td width="27%" align="center" valign="middle" bgcolor="#99CC99" class="menutext" ><?php echo constant("ADMIN_REPORT_STUDENT_GROUP_GRADE_GRADE");?></td>
                  </tr>
                  <?php					
					$i = 1;
					$num=$dbf->countRows('grade');
					foreach($dbf->fetchOrder('student_course',"student_id='$res[id]'","id DESC") as $val) {
					$res_course = $dbf->strRecordID("course","*","id='$val[course_id]'");
					?>
                  <tr>
                    <td height="25" align="center" valign="middle" bgcolor="#F8F9FB" class="contenttext">&nbsp;</td>
                    <td height="25" align="left" valign="middle" bgcolor="#F8F9FB" class="contenttext" style="padding-left:5px;"><?php echo $res_course[name];?></td>
                    <td align="center" valign="middle" bgcolor="#F8F9FB" class="contenttext" style="padding-left:5px;">&nbsp;</td>
                    <? 
					  $i = $i + 1;
					  }
					  ?>
                  </tr>
                  <?
					if($num==0)
					{
					?>
                  <tr>
                    <td height="25" colspan="3" align="center" valign="middle" class="nametext1"><?php echo constant("COMMON_NORECFOUND");?> </td>
                  </tr>
                  <?
					}
					?>
                  
                </table></td>
                <td width="188">&nbsp;</td>
                <td width="480" align="left" valign="top"> <?php						
				echo $strXML1="<chart palette='1' caption='' shownames='0' showvalues='0' decimals='0' numberPrefix=''>
					<categories>
						<category label=''/>
						<category label=''/>
						<category label=''/>
						<category label=''/>
						<category label=''/>
					</categories>
					<dataset seriesName='Very Good' color='6699CC' showValues='0'>
						<set value='15'/>
					</dataset>
					<dataset seriesName='Satisfactory' color='CC6666' showValues='0'>
						<set value='35'/>
					</dataset>
					<dataset seriesName='Good' color='33CC00' showValues='0'>
						<set value='40'/>
					</dataset>
					<dataset seriesName='Fair' color='9966CC' showValues='0'>
						<set value='50'/>
					</dataset>
					<dataset seriesName='Insufficient' color='99CCCC' showValues='0'>
						<set value='10'/>
					</dataset>
					</chart>";
				echo renderChartHTML("../FusionCharts/Charts/MSColumn2D.swf", "", $strXML1, "myNext", 600, 250);
				?></td>
              </tr>
            </table>
            
           
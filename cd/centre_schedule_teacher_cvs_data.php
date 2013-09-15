<?php
ob_start();
session_start();

include_once '../includes/class.Main.php';

//Object initialization
$dbf = new User();
include_once '../includes/language.php';
?>	
<link href="css/style.css" rel="stylesheet" type="text/css" />
<?php if($_SESSION[lang]=="EN"){?>
<table width="100%" border="1" bordercolor="#000000" cellspacing="0" cellpadding="0" style="border-collapse:collapse;">
            
              <tr>
                <td height="25" align="left" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("CD_CENTRE_SCHEDULE_TEACHER_COURSENAME");?></td>
                <td align="left" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("ADMIN_GROUP_MANAGE_GROUPNAME");?></td>
                <td align="center" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("CD_CENTRE_SCHEDULE_RANGEDATE_NOOFSTUDENT");?></td>
                <td align="center" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("ADMIN_REPORT_STUDENT_NOT_ENROLLED_STATUS");?></td>
              </tr>
              
            <?php
			$color = "#ECECFF";
			
			//Get Number of Rows
			$num=$dbf->countRows('student_group',"teacher_id='$_REQUEST[teacher]'","");
			 
            //Loop start
			foreach($dbf->fetchOrder('student_group',"teacher_id='$_REQUEST[teacher]'","id","") as $val){
			
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
                <td width="278" height="25" align="left" valign="middle" bgcolor="#FDF9F2" class="mycon"><?php echo $val_course[name];?></td>
                <td width="430" align="left" valign="middle" bgcolor="#FDF9F2" class="mycon">&nbsp;<?php echo $dbf->FullGroupInfo($val["id"]);?></td>
                <td width="127" align="center" valign="middle" bgcolor="#FDF9F2" class="mycon"><?php echo $val_no["COUNT(id)"];?></td>
                <td width="126" align="center" valign="middle" bgcolor="#FDF9F2" class="mycon"><?php echo $val[status];?></td>
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
            </table>
<?php } else{?>
<table width="100%" border="1" bordercolor="#000000" cellspacing="0" cellpadding="0" style="border-collapse:collapse;">
                      
                      <tr>
                        <td align="center" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("CD_CENTRE_SCHEDULE_RANGEDATE_NOOFSTUDENT");?></td>
                        <td align="center" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("ADMIN_REPORT_STUDENT_NOT_ENROLLED_STATUS");?></td>
                        <td align="right" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("ADMIN_GROUP_MANAGE_GROUPNAME");?>&nbsp;</td>
                        <td height="25" align="right" valign="middle" bgcolor="#DDDDDD" class="pedtext"><?php echo constant("CD_CENTRE_SCHEDULE_TEACHER_COURSENAME");?>&nbsp;</td>
                        </tr>
                      
                      <?php
						$color = "#ECECFF";
						
						//Get Number of Rows
						$num=$dbf->countRows('student_group',"teacher_id='$_REQUEST[teacher]'","");
						 
						//Loop start
						foreach($dbf->fetchOrder('student_group',"teacher_id='$_REQUEST[teacher]'","id","") as $val){
						
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
                        <td width="127" align="center" valign="middle" bgcolor="#FDF9F2" class="mycon"><?php echo $val_no["COUNT(id)"];?></td>
                        <td width="130" align="center" valign="middle" bgcolor="#FDF9F2" class="mycon"><?php echo $val[status];?></td>
                        <td width="457" align="right" valign="middle" bgcolor="#FDF9F2" class="mycon"><?php echo $dbf->FullGroupInfo($val["id"]);?>&nbsp;</td>
                        <td width="241" height="25" align="right" valign="middle" bgcolor="#FDF9F2" class="mycon"><?php echo $val_course[name];?>&nbsp;</td>
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
                      </table>
<?php }?>
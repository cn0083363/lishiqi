<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<title>JDDC	Internal Management	System</title>
</head>
<style type="text/css">
<!--
.style4 {
	font-size: 12px;
	color: #FFFFFF;
}
.style1 {color: #FFFFFF}
.style3 {color: #FF0000}
.style5 {font-size: 12px; color: #FFFFFF; }
.style7 {color: #FFFFFF; font-size: 11px; }
.style8 {font-size: 11px}
.style15{
	font-size:12px;
	color:#FFFFFF;
}
.div_workarea_narrow {

	height: 290px;
	width: 560px;
	overflow-y:hidden;
	overflow-x:hidden;
}
.div_screen_narrow {

	height: 300px;
	width: 560px;
}
.table_border_narrow
{
    width:  560px;
    BORDER-TOP: #0033CC 1px solid;
    BORDER-LEFT: #0033CC 1px solid;
    BORDER-RIGHT: #0033CC 1px solid;
    BORDER-BOTTOM: #0033CC 1px solid;
}
-->
</style>
<body topmargin="0" leftmargin="0">
<div align="center" id="screen" class="div_screen_narrow">
	<table width="640" border="0" cellpadding="0" cellspacing="0" class="table_border_narrow">
		<tr>
			<td width="638">
			<table border="0" width="100%" height="60" bgcolor="#003366"> 
                <tr> 
                  <td width="11" rowspan="2">　</td> 
                  <td width="65"><img src="img/hp_logo.gif" width="47" height="28"> <br><span class="style4">JDDC</span> </td> 
                  <td rowspan="2"> <table height="52" width="100%" border="0"> 
                     <tr> 
                        <td colspan="2" height="10">
                        <p align="right" class="titleLeft" > <font face="Cooper	Black">JDDC	Internal Management	System</font></p></td>  
                     </tr> 
                     <tr> 
						<td width=20%>&nbsp;</td> 
                        <td> <p class="titleCenter"> <font face="Times New Roman">技能情报更新<b></b></font></p></td> 
                     </tr> 
				  </table></td> 
               </tr> 
            </table> 
			<table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
            	<tr bgcolor="#85B7FA"> 
                	<td>&nbsp;</td> 
                    <td width="150" class="txt_normal">操作者：XXXXXX</td> 
                    <td width="60" class="txt_normal"></td> 
                </tr> 
         	</table> 
			<HR>
			<div class="div_workarea_narrow style15"> 
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr><td>
				        <table width="100%"  border="0" cellspacing="0" cellpadding="0" >
                          <tr>
                            <td bgcolor="#000066"><span class="style15">技能情报入力</span></td>
                          </tr>
						  <tr> 
							<td height="5"></td> 
						  </tr> 

                        </table>
						</td></tr><tr><td>
						<form action="" method="post">
						<table border="0" width="555" cellspacing="0" cellpadding="0" height="100%">
						 <tr><td>
						  <table border="0" width="539" cellspacing="1" cellpadding="1">
                    <tr align="center" class="trHeader">
                      <td width="6%" ><span class="txt_normal style1">选</span></td>
                      <td width="6%" align="center"><span class="txt_normal style1">番号</span></td>
                      <td width="60%" align="center" ><span class="txt_normal style1">技能</span></td>
                      <td width="28%" align="center"><span class="txt_normal style1">技能水平</span></td>
                    </tr>
						  </table>
						  </td></tr>
						  <tr><td>
						  <div style="overflow-y:scroll;overflow-x:hidden;height:120px;">
						  <table border="0" width="539" cellspacing="1" cellpadding="1">
													<tr class="trEven">
                            <td width="6%" align="center"><input name="checkbox" type="checkbox" value="checkbox" checked></td>
                            <td width="6%" align="center" ><span class="txt_normal">01</span></td>
                            <td width="60%"><span class="txt_normal">C++</span></td>
                            <td width="28%" align="center">							
															<select size="1" name="T2" class="string">
																<option>&nbsp;</option>
																<option selected>basic</option>
																<option>intermediate</option>
																<option>advanced</option>
														    <option>expert</option>
															</select>
														</td>
                          </tr>
													<tr class="trOdd">
                            <td width="6%" align="center"><input name="checkbox" type="checkbox" value="checkbox" checked></td>
                            <td width="6%" align="center" ><span class="txt_normal">02</span></td>
                            <td width="60%"><span class="txt_normal">Java</span></td>
                            <td width="28%" align="center">							
															<select size="1" name="T2" class="string">
																<option>&nbsp;</option>
																<option>basic</option>
																<option selected>intermediate</option>
																<option>advanced</option>
														    <option>expert</option>
															</select>
														</td>
                          </tr>
													<tr class="trEven">
                            <td width="6%" align="center"><input name="checkbox" type="checkbox" value="checkbox" checked></td>
                            <td width="6%" align="center" ><span class="txt_normal">03</span></td>
                            <td width="60%"><span class="txt_normal">PL/SQL</span></td>
                            <td width="28%" align="center">							
															<select size="1" name="T2" class="string">
																<option>&nbsp;</option>
																<option>basic</option>
																<option>intermediate</option>
																<option>advanced</option>
														    <option selected>expert</option>
															</select>
														</td>
                          </tr>   
                          <tr class="trOdd">
                            <td width="6%" align="center"><input name="checkbox" type="checkbox" value="checkbox"></td>
                            <td width="6%" align="center" ><span class="txt_normal">04</span></td>
                            <td width="60%"><span class="txt_normal">IBM WebSphere - Application Development</span></td>
                            <td width="28%" align="center">							
															<select size="1" name="T2" class="string">
																<option　selected>basic</option>
																<option>intermediate</option>
																<option>advanced</option>
														        <option>expert</option>
															</select>
														</td>
                          </tr>						 
                          <tr class="trEven">
                            <td width="6%" align="center"><input name="checkbox" type="checkbox" value="checkbox"></td>
                            <td width="6%" align="center" ><span class="txt_normal">05</span></td>
                            <td width="60%"><span class="txt_normal">JBoss Web Application Server</span></td>
                            <td width="28%" align="center">							
															<select size="1" name="T2" class="string">
																<option　selected>basic</option>
																<option>intermediate</option>
																<option>advanced</option>
														    <option>expert</option>
															</select>
														</td>
													</tr>                                                                       
	                    </table>
						</div>
						</td></tr><tr><td>
						<table width="554" border="0" cellpadding="0" cellspacing="0">
						<tr><td cols="6"><br></td></tr>
						<tr>
							<td width="156"></td>
							<td width="34"><input type="button" value="　更 新　" name="B3" class="string" onclick="window.close();"></td>
							<td width="136"></td>
							<td width="40"><input type="button" value="　关 闭　　" name="B4" class="string" onclick="window.close();"></td>
							<td width="147"></td>
							<td width="41"></td>
					    </tr>
				  </table>
				  </table>
				  </form>
				  </td>
				</tr>
			</table>
			</div>
			</td>
		</tr>
	</table>
	<table border="0" width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td height="1"></td>
		</tr>
		<tr>
			<td height="18" bgcolor="#003366"></td>
		</tr>
		<tr> 
			<td><div align="center" class="string"> © Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
		</tr>
	</table>
</div>

</body>

</html>

</html>
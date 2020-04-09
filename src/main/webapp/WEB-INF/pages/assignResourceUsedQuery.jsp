<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<title>JDDC Internal Management System</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<style type="text/css">
<!--
.style4	{
	font-size: 12px;
	color: #FFFFFF;
}
-->
</style>
</head>
<body>
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<div align="center" id="screen" class="div_screen">
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<TR>
		<TD>
		<table border="0" width="100%" cellspacing="0" cellpadding="0"
			class="table_border">
			<tr>
				<td>
				<table border="0" width="100%" height="60" bgcolor="#003366">
					<tr>
						<td width="11" rowspan="2"></td>
						<td width="65"><img src="../img/hp_logo.gif" width="47"
							height="28"> <br>
						<span class="style4">JDDC</span></td>
						<td rowspan="2">
						<table height="52" width="100%" border="0">
							<tr>
								<td colspan="2" height="10">
								<p align="right" class="titleLeft"><font face="Cooper	Black">JDDC
								Internal Management System</font></p>
								</td>
							</tr>
							<tr>
								<td width=40%>&nbsp;</td>
								<td>
								<p class="titleCenter"><font face="Times New Roman">
								<b>リソース利用状況検索</b></font></p>
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				<table border="0" cellspacing="0" cellpadding="0" width="100%"
					height="24" bgcolor="#FFFFFF">
					<tr bgcolor="#85B7FA">
						<td>&nbsp;</td>
						<td width="150" class="txt_normal">操作者：XXXXXX</td>
						<td width="60" class="txt_normal">
						<div align="right"><a href="Login.htm">ログアウト</a></div>
						</td>
					</tr>
				</table>
				<HR>
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td valign="top">
						<div align="center" class="div_naviarea" id="navi"><!-- navigator area start here -->
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="2" rowspan="12" bgcolor="#808080">&nbsp;</td>
								<td width="205">
								<table border="0" cellspacing="0" cellpadding="0" width="100%">
									 <tr> 
                                                			<td width="205" height="30"><span class="menuBranch">&#8226;员工信息管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="empRegister" target="_self">员工信息登录</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/employeQuery" target="_self">员工信息检索</a></span></td> 
			                                            </tr> 
			                                             <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="confirmInfoQuery.htm" target="_self">员工信息审批</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;员工期权管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPPurchase.htm" target="_self">员工期权申请</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPQuery.htm" target="_self">员工期权一览</a></span></td> 
			                                            </tr>  
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">员工期权审批</a></span></td> 
			                                            </tr>  
			                                             <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;稼動管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/ResourceConfirmInfoQuery" target="_self">リソース情報承認</a></span></td> 
			                                            </tr> 	
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/assignResourceQuery" target="_self">リソース情報検索</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/assignResourceUsedQuery" target="_self">リソース稼働情報検索</a></span></td> 
			                                            </tr> 		  
								</table>
								</td>
								<td width="1" rowspan="12" bgcolor="#808080"></td>
							</tr>
						</table>
						<!-- navigator area end here --></div>
						</td>
						<td width="750" align="center" valign="top">
						<div class="div_workarea"><!-- Work area start here -->
						<table width="100%" cellspacing="1">
							<tr>
								<td class="tdFuncTitle">検索条件入力</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
								<div class="div_error_message"><span
									class="txt_error_message">エラーメッセージ1<BR>
								エラーメッセージ2</span></div>
								</td>
							</tr>
						</table>
						<div>
						<table width="100%" border="0" cellpadding="1" cellspacing="1">
							<form action="${pageContext.request.contextPath }/assignResourceUsedResult" method="post" name="searchForm" target="_self">
							<tr>
								<td colspan="4"><span class="txt_normal"><b>社員基本情報</b></span></td>
							</tr>
							<tr>
								<td width="25%" class="tdLabel"><span class="txt_normal">EID</span></td>
								<td width="25%"><input type="text" name="T2" size="20"
									maxlength="8" class="string" value=""></td>
								<td width="25%" class="tdLabel"><span class="txt_normal">名前（ローマ字）</span></td>
								<td width="25%"><input type="text" name="T123" size="20"
									class="string" value=""></td>
							</tr>
							<tr>
								<td width="25%" class="tdLabel"><span class="txt_normal">サイト</span></td>
								<td width="25%"><select size="1" name="T2"
									class="string_selectbox_1">
									<option value=""></option>
									<c:forEach items="${sites}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select></td>
								<td width="25%" class="tdLabel"><span class="txt_normal">部署</span></td>
								<td width="25%"><select size="1" name="T2"
									class="string_selectbox_1">
									<option>&nbsp;</option>
									<option>JDCC</option>
									<option>MDI</option>
									<option>ENT</option>
									<option>CME</option>
								</select></td>
							</tr>
							<tr>
								<td width="25%" class="tdLabel"><span class="txt_normal">社員種類</span></td>
								<td width="25%"><select size="1" name="T2"
									class="string_selectbox_1">
									 <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select></td>
								</td>
								<td width="25%" class="tdLabel"><span class="txt_normal">会社<span></td>
								<td width="25%"><select size="1" name="T2"
									class="string_selectbox_1">
									<option>&nbsp;</option>
									<option>NEC</option>
									<option>Neusoft</option>
								</select></td>
							</tr>
							<tr>
								<td width="25%" class="tdLabel"><span class="txt_normal">在職ステータス</span></td>
								<td width="25%"><select size="1" name="T2"
									class="string_selectbox_1">
									<option value=""></option>
									<c:forEach items="${status}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select></td>
								<td width="25%" class="tdLabel"><span class="txt_normal">Billable区分<span></td>
								<td width="25%"><select size="1" name="T2"
									class="string_selectbox_1">
									<option>&nbsp;</option>
									<option>Billable</option>
									<option>NonBillable</option>
								</select></td>
							</tr>



							<tr>
								<td cols="4"><br>
								</td>
							</tr>
							<tr>
								<td colspan="4"><span class="txt_normal"><b>検索時間</b></span></td>
							</tr>
							<tr>
								<td width="25%" class="tdLabel"><span class="txt_normal">検索時間</span></td>
								<td colspan="3"><select size="1" name="T2">
									<option>2004</option>
									<option>2005</option>
									<option>2006</option>
									<option selected="selected">2007</option>
									<option>2008</option>
									<option>2009</option>
									<option>2010</option>
									<option>2011</option>
									<option>2012</option>
									<option>2013</option>
									<option>2014</option>
									<option>2015</option>
									<option>2016</option>
									<option>2017</option>
									<option>2018</option>
									<option>2019</option>
									<option>2020</option>
									<option>2021</option>
									<option>2022</option>
									<option>2023</option>
									<option>2024</option>
								</select>年 <select size="1" name="T2">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
									<option selected="selected">11</option>
									<option>12</option>
								</select>月 <span class="txt_normal">&nbsp;～&nbsp;</span><select size="1"
									name="T2">
									<option>2004</option>
									<option>2005</option>
									<option>2006</option>
									<option>2007</option>
									<option selected="selected">2008</option>
									<option>2009</option>
									<option>2010</option>
									<option>2011</option>
									<option>2012</option>
									<option>2013</option>
									<option>2014</option>
									<option>2015</option>
									<option>2016</option>
									<option>2017</option>
									<option>2018</option>
									<option>2019</option>
									<option>2020</option>
									<option>2021</option>
									<option>2022</option>
									<option>2023</option>
									<option>2024</option>
								</select>年 <select size="1" name="T2">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option selected="selected">5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
									<option>11</option>
									<option>12</option>
								</select>月</td>
							</tr>

							<tr>
								<td cols="4"><br>
								</td>
							</tr>
							<tr>
								<td colspan="4"><span class="txt_normal"><b>アサイン情報</b></span></td>
							</tr>
							<tr>
								<td width="25%" class="tdLabel"><span class="txt_normal">アサイン種類</span></td>
								<td width="25%" colspan="3"><input type="checkbox"
									checked="checked" />SOW <input type="checkbox"
									checked="checked" />OVERRUN <input type="checkbox"
									checked="checked" />INVESTMENT <input type="checkbox"
									checked="checked" />OJT</td>
							</tr>
							<tr>
								<td width="25%"></td>
								<td width="25%"><br>
								<input type="button" value="　検　索　" name="B1" class="string"
									onclick="openWindow('assignResourceUsedResult.htm')"></td>
								<td width="25%"><br>
								<input type="reset" value="　ク リ ア　" name="B22" class="string"></td>
								<td width="25%"></td>
							</tr>
							</form>
						</table>
						</div>
						<!-- Work area end here --></DIV>
						</td>
					</tr>
				</table>
				</td>
			</tr>
			<!-- Footer area start here -->
			<tr>
				<td height="1"></td>
			</tr>
			<tr>
				<td height="20" bgcolor="#003366"></td>
			<tr>
				<td>
				<div align="center" class="string">? Copyright 2007
				Hewlett-Packard TSG-JDDC</div>
				</td>
			</tr>
			<!-- Footer area end here -->
		</table>
		</TD>
	</TR>
</table>
</div>
</body>
</html>
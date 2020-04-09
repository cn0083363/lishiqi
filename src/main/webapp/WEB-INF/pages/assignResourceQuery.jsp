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
								<b>リソース情報検索</b></font></p>
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
									<table 	border="0" cellspacing="0" cellpadding="0" width="100%" > 
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
						<div class="div_workarea"> 
                                            <!-- Work area start here --> 
                                               <table width="100%"  cellspacing="1" > 
                      <tr> 
                        <td class="tdFuncTitle">リソース検索</td> 
                      </tr> 
                       
                      <tr> 
						<td ><div class="div_error_message"> <span class="txt_error_message">エラーメッセージ1</span> </div></td> 
                      </tr> 
                    </table> 
					<form action="${pageContext.request.contextPath }/assignResourceResult" method="post" name="searchForm" target="_self">
                      <table width="100%" border="0" cellpadding="1" cellspacing="1"> 					  
					    <tr><td colspan="4"><span class="txt_normal"><b>リソース基本情報</b></span></td></tr>
                        <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">リソースID</span></td> 
                          <td width="25%"><input type="text" name="T2" size="20" maxlength="8" class="string" value=""></td> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">名前（ローマ字）</span></td> 
                          <td width="25%"><input type="text" name="T123" size="20" class="string" value=""></td> 
                        </tr> 
                        <tr> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">サイト</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								<option value=""></option>
									<c:forEach items="${sites}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">部署</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   
								</select>
						　</td>
                        </tr>
                        <tr>
                          <td width="25%" class="tdLabel"><span class="txt_normal">社員種類</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
						  </td>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">会社<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   
								</select>
						　</td>
                        </tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">Billable区分</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   
								</select>
						　</td>
						  <td width="25%"></td> 
						  <td width="25%"></td>
                        </tr>                        
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>日本経歴及びVisa情報</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">パスポート有無</span></td> 
						  <td width="25%">
								<select size="1" name="R1" class="string_selectbox_1">
								    <option>&nbsp;</option>
									<option>有</option>
									<option>無</option>
								</select>
						  </td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">ビザ有無</span></td> 
						  <td width="25%">
								<select size="1" name="R2" class="string_selectbox_1">
								    <option>&nbsp;</option>
									<option>有</option>
									<option>無</option>
								</select>
                          </td>
                        </tr> 
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">日本語レベル</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option value=""></option>
									<c:forEach items="${japaneselevel}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">日本滞在年限</span></td> 
                          <td width="25%"><input type="text" name="T123" size="4"  maxlength="4" class="string_selectbox_3" value="">&nbsp;<span class="txt_normal">年</span></td> 
                        </tr>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>スキル情報</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">スキル</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option>&nbsp;</option>
									<option>J2EE</option>
									<option>.NET</option>
									<option>C#</option>
									<option>Unix C</option>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">スキルレベル</span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option>&nbsp;</option>
									<option>basic</option>
									<option>intermediate</option>
									<option>advanced</option>
							        <option>expert</option>
								</select>
						　</td>
                        </tr>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>JOB情報</b></span></td></tr>
						<tr>
                          <td width="25%" class="tdLabel" ><span class="txt_normal">GDCC JOB Title</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option>&nbsp;</option>
									<option>Section Manager</option>
									<option>Department Manager</option>
									<option>Project Leader</option>
									<option>Technically leader</option>
									<option>Solution Architect</option>
									<option>Software Analyst</option>
									<option>Senior Engineer</option>
									<option>Software Engineer</option>
								</select>
						　</td>
                          <td width="25%"class="tdLabel"><span class="txt_normal">Delivery Capability 認定</span></td>
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_3">
									<option value=""></option>
									<c:forEach items="${GDCC}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
						　</td>
						 </tr>
                        <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">JDDC 組織 Title</span></td> 
						  <td colspan="3">
								<select size="1" name="T2" class="string_selectbox_3">
									<option value=""></option>
									<c:forEach items="${job}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
						　</td>
                        </tr>
<tr>
						  <td width="100%" align="center" colspan="4"><br/></td>
                        </tr> 		
                        <tr>
						  <td width="100%" align="center" colspan="4">
						  <input type="submit" value="  　検　索  　" name="B1" class="string">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  <input type="reset" value="　  クリア  　" name="B22" class="string"></td>
                        </tr> 						 
                      </table>
					  </form>			
                 <!-- Work area end here --> </div>
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
				<div align="center" class="string">© Copyright 2007 Hewlett-Packard TSG-JDDC</div>
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
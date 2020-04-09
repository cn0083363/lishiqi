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
								<b>リソース利用状況一覧</b></font></p>
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
			                                            <!--  -->
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
						<table width="100%" cellspacing="1">
							<tr>
								<td class="tdFuncTitle">検索結果一覧</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
						</table>
						<TABLE cellSpacing=1 width="100%">
							<TBODY>
								<TR>
									<TD class=txt_normal>50件中1－10件を表示</TD>
									<TD class=txt_normal align=right>&nbsp;&nbsp;最初｜<A
										href="file:///C:/Documents%20and%20Settings/hefang/Desktop/03詳細設計書/99Demo/confirmInfoQuery.htm#">前</A>｜<A
										href="file:///C:/Documents%20and%20Settings/hefang/Desktop/03詳細設計書/99Demo/confirmInfoQuery.htm#">次</A>｜<A
										href="file:///C:/Documents%20and%20Settings/hefang/Desktop/03詳細設計書/99Demo/confirmInfoQuery.htm#">最後&nbsp;</A></TD>
								</TR>
							</TBODY>
						</TABLE>
						<table border="0" cellspacing="0" cellpadding="0" align="left">
							<tr>
								<td>
								<div class="div_workarea_searchdetail">
								<table border="0" cellspacing="0" cellpadding="0" align="left"
									width="900">

									<tr align="left">
										<td>
										<table border="0" cellspacing="1" cellpadding="1">
											<tr class="trHeader">
												<td width="250" align="center" class="txt_table_head">
												社員氏名</td>
												<td width="100" align="center" class="txt_table_head">
												所属会社</td>
												<td width="80" align="center" class="txt_table_head">
												サイト</td>
												<td width="300" align="center" class="txt_table_head">
												プロジェクト名</td>

												<td width="80" align="center" class="txt_table_head">
												役割</td>
												<td width="200" align="center" class="txt_table_head">
												アサイン開始日付</td>
												<td width="200" align="center" class="txt_table_head">
												アサイン終了日付</td>
												<td width="100" align="center" class="txt_table_head">
												アサイン率(%)</td>
												<td width="100" align="center" class="txt_table_head">
												アサイン種類</td>
												<td width="100" align="center" class="txt_table_head">
												RM</td>
												<td width="25" align="center" class="txt_table_head">仮</td>
											</tr>
											<tr class="trEven">
												<td align="left" class="txt_table_head" rowspan="2"><span
													class="txt_normal"><a href="assignResourceDetail.htm">永尾
												完治</a></span></td>
												<td align="left" class="txt_table_head" rowspan="2"><span
													class="txt_normal">HP</span></td>
												<td align="left" class="txt_table_head" rowspan="2"><span
													class="txt_normal">重慶</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal"><a href="assignProjectDetail.htm">滋賀人事
												</a></span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">ML</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/05/21</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/07/10</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">50</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">SOW</span></td>
												<td align="left" class="txt_table_head" rowspan="2"><span
													class="txt_normal">柳 茁</span></td>
												<td align="left" class="txt_table_head"><input
													type="checkbox" checked="checked" disabled="disabled" /></td>
											</tr>
											<tr class="trEven">
												<td align="left" class="txt_table_head"><span
													class="txt_normal"><a href="assignProjectDetail.htm">滋賀人事
												</a></span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">SCM</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/05/21</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/07/10</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">50</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">SOW</span></td>
												<td align="left" class="txt_table_head"><input
													type="checkbox" disabled="disabled" /></td>
											</tr>

											<tr class="trOdd">
												<td align="left" class="txt_table_head"><span
													class="txt_normal"><a href="assignResourceDetail.htm">黒沢
												明</a></span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">HP</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">重慶</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal"><a href="assignProjectDetail.htm">滋賀人事
												</a></span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">SSE</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/05/19</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/07/10</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">100</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">SOW</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">柳 茁</span></td>
												<td align="left" class="txt_table_head"><input
													type="checkbox" disabled="disabled" /></td>
											</tr>

											<tr class="trEven">
												<td align="left" class="txt_table_head"><span
													class="txt_normal"><a href="assignResourceDetail.htm">赤名
												リカ</a></span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">HP</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">上海</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal"><a href="assignProjectDetail.htm">滋賀人事
												</a></span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">SQA</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/05/10</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">2005/07/10</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">100</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">SOW</span></td>
												<td align="left" class="txt_table_head"><span
													class="txt_normal">呉 海英</span></td>
												<td align="left" class="txt_table_head"><input
													type="checkbox" checked="checked" disabled="disabled" /></td>
											</tr>


										</table>
										</td>
									</tr>
								</table>
								</div>
								<TABLE cellSpacing=1 width="100%">
									<TBODY>
										<TR>
											<TD class=txt_normal>50件中1－10件を表示</TD>
											<TD class=txt_normal align=right>&nbsp;&nbsp;最初｜<A
												href="file:///C:/Documents%20and%20Settings/hefang/Desktop/03詳細設計書/99Demo/confirmInfoQuery.htm#">前</A>｜<A
												href="file:///C:/Documents%20and%20Settings/hefang/Desktop/03詳細設計書/99Demo/confirmInfoQuery.htm#">次</A>｜<A
												href="file:///C:/Documents%20and%20Settings/hefang/Desktop/03詳細設計書/99Demo/confirmInfoQuery.htm#">最後&nbsp;</A></TD>
										</TR>
									</TBODY>
								</TABLE>
								</td>
							</tr>
							<tr>
								<td><br>
								<!-- 下のボタングループ 開始 -->
								<table border="0" cellspacing="0" cellpadding="0" width="100%"
									align="center" id="btn_group_bottom">
									<tr>
										<td colspan="8" height=5></td>
									</tr>
									<tr>
										<td colspan="4" align="center"><input type="button"
											id="B3" class="string"
											onClick="openWindow('assignResourceUsedQuery.htm')"
											value="　再検索　" /></td>
									</tr>
								</table>
								<!-- 下のボタングループ 終了 --></td>
							</tr>
						</table>
						<!-- Work area end here --></td>
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
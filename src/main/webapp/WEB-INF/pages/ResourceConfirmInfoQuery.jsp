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
  <body >
<SCRIPT language="javascript" src="js/common.js"></SCRIPT>
    <div align="center" id="screen" class="div_screen">
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <TR>
          <TD>
            <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border">
              <tr>
                <td>
                  <table border="0" width="100%" height="119" bgcolor="#003366">
                    <tr>
                      <td width="11" rowspan="2">
                        　</td>
                      <td width="65">
                        <img src="img/hp_logo.gif" width="47" height="28">
                        <br>
                        <span class="style4"> JDDC
                        </span></td>
                      <td rowspan="2">
                        <table height="52" width="100%" border="0">
                          <tr>
                            <td	colspan="2"	height="10">
                              <p align="right" class="titleLeft" >
                                <font face="Cooper	Black"> JDDC	Internal Management	System
                                </font>
                              </p></td>
                    </tr>
                    <tr>
                      <td	width=40%>
                        &nbsp;</td>
                <td>
                  <p class="titleCenter">
                    <font face="Times New Roman">
                      <b>承認待ち 一覧</b>
                    </font>
                  </p></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF">
        <tr bgcolor="#85B7FA">
          <td>
            &nbsp;</td>
          <td width="150" class="txt_normal">
            操作者：XXXXXX</td>
          <td width="60" class="txt_normal">
            <div align="right">
              <a href="Login.htm">ログアウト</a>
            </div></td>
        </tr>
      </table>
      <HR>
      <table border="0" cellspacing="0" cellpadding="0" width="100%">
        <tr>
          <td valign="top">
            <div align="center" class="div_naviarea" id="navi" >
              <!-- navigator area start here -->
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="2" rowspan="12" bgcolor="#808080" >
                    &nbsp;</td>
                  <td width="205" >
                    <table 	border="0" cellspacing="0" cellpadding="0" width="100%" >
                      <tr>
                        <td width="205" height="30">
                          <span class="menuBranch"> &#8226;社員管理
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="employeRegister.htm" target="_self">社員情報登録</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="employeQuery.htm" target="_self">社員情報検索</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="confirmInfoQuery.htm" target="_self">社員情報承認</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuBranch"> &#8226;Funnel管理
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">XXXX</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">XXXX</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuBranch"> &#8226;プロジェクト管理
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">XXXX</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">XXXX</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuBranch"> &#8226;稼働管理
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">プロジェクト検索</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">リソース検索</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">リソース情報承認</a>
                          </span></td>
                      </tr>
                     <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">アサイン情報確認</a>
                          </span></td>
                      </tr>
                     <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">リソース稼動情報一覧</a>
                          </span></td>
                      </tr>
                     <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">リソース利用状況一覧</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuBranch"> &#8226;システム管理
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">XXXX</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="30">
                          <span class="menuItem"> 　　
                            <a href="#" target="_self">XXXX</a>
                          </span></td>
                      </tr>
                      <tr>
                        <td>
                          &nbsp;</td>
                      </tr>
                    </table></td>
                  <td width="1" rowspan="12" bgcolor="#808080"></td>
                </tr>
              </table>
              <!-- navigator area end here -->
            </div></td>
          <td width="750" align="center" valign="top">

		<table width="100%"  cellspacing="1"> 
						<tr> 
							<td class="tdFuncTitle">承認お待ちリソース一覧</td> 
						</tr> 
		</table> 

		
							
		<table width="100%"  cellspacing="1" > 
						<tr> 
							<td class="txt_normal">50件中1－10件を表示</td>
							<td align="right" class="txt_normal">&nbsp;&nbsp;最初｜<a href="#">前</a>｜<a href="#">次</a>｜<a href="#">最後&nbsp;</a></td> 
						</tr> 
					</table>
		 <table border="0" cellspacing="0" cellpadding="0" align="left">
			<tr>
			 <td>
              <div class="div_workarea" >
			  <table border="0" cellspacing="0" cellpadding="0" align="left" width="1340">
                
				<tr align="left">
                  <td>
                    <table border="0" cellspacing="1" cellpadding="1">
                      <tr class="trHeader">
                        <td width="25" align="center" class="txt_table_head">
                          選</td>
                        <td width="160" align="center" class="txt_table_head">
                          DDC番号</td>
                                                    
                        <td width="160" align="center" class="txt_table_head">
                          社員ID</td>
                        <td width="160" align="center" class="txt_table_head">
                          氏名(中国語漢字)
                        </td>
                        <td width="160" align="center" class="txt_table_head">
                          氏名(日本語漢字)
                         </td>                         
                      
                         <td width="160" align="center" class="txt_table_head">
                          アサイン開始日</td>                        
 
                         <td width="160" align="center" class="txt_table_head">
                          アサイン終了日
                          </td>  
                         <td width="160" align="center" class="txt_table_head">
                          アサイン率</td>  
                         <td width="160" align="center" class="txt_table_head">
                          仮アサインフラグ</td>                                                                                  
                         <td width="160" align="center" class="txt_table_head">
                          役割コード
                          </td>                                                                                              
                      </tr>
                      
                      <c:forEach items="${page.list }" var="emp" varStatus="vs">
							 <tr class="${vs.count%2==1? 'trOdd':'trEven' }">
                             <td width="25" align="center" class="txt_normal">
                         	<input type="checkbox" name="checkbutton"/>
                         </td>
                        <td width="80" align="center" class="txt_normal">                                                  
                                DDC2007072601 
                          </td>
                          <td width="160" align="center" class="txt_normal">
                                <a href="empByeid?eid=${emp.eid }">${emp.eid }</a>
                          </td>
                        <td width="160" align="center" class="txt_normal">
                        ${emp.nameCn }
                        </td>
                        <td width="160" align="center" class="txt_normal">
                          ${emp.nameKanji }
                          </td>                                         
                         <td width="80" align="center" class="txt_normal">
                          2007/10/28</td>                        
 
                         <td width="160" align="center" class="txt_normal">
                          2007/12/02</td>
                         <td width="160" align="center" class="txt_normal">
                          60%</td>  
                         <td width="160" align="center" class="txt_normal">
                         1 </td>                                                                                  
                         <td width="80" align="center" class="txt_normal">
                         PG </td>   	
							
                            </tr>
							</c:forEach>
                                                    
                    </table>
				   </td>
                </tr>


                <tr align="left">
                  <td>
                    <form name="form1" method="post" action="" >
                        <table border="0" cellpadding="1" cellspacing="1" width="1175">
 

                        </table>
                    </form>
					</td>
                </tr>
				</table>
				</div></td></tr>
                <tr>
                  <td>
				  <br>

           <table  border="0" cellspacing="0" cellpadding="0" width="100%" align="center "id="btn_group_bottom">
             <tr height="20">
              <td colspan="6"><font class="txt_normal"><B>却下理由(却下の場合必要)</B></font></td>
            </tr>
            <tr>
              <td colspan="4">
              <textarea name="RejectReasonTextArea" id="RejectReasonTextArea" rows="4" cols="68"></textarea>
              </td>
            </tr>
	   <tr><td><br></td></tr>
	   </table>	
						<tr>
							<td	colspan="4">
              <!-- 下のボタングループ 開始 -->
              <form action="${pageContext.request.contextPath }/ResourceConfirm" method="post">
			<table  border="0" cellspacing="0" cellpadding="0" width="100%" align="center "id="btn_group_bottom">
                  <!-- <tr><td	colspan="8"	height=5 >&nbsp;</td></tr> -->
                  
    			  <tr><td	colspan="5"	height=5 ></td></tr>
                  <tr align="center">
                      <td width="25%"></td>
                      
                      <td width="25%"><input type="button" id ="B1" value="    承　認    " class="string" onClick="openWindow('')"/></td>
                      <td width="25%"><input type="submit" id ="B2"  value="    却　下    " class="string" /></td>
                      
                      <td width="25%"></td>
                  </tr>
                  
              </table>
</form>
              <!-- 下のボタングループ 終了 --></td>
        </tr>
      </table>
      <!-- Work area end here -->
    </DIV></td>
    </tr>
    </table></td>
    </tr>
    <!-- Footer area start here -->
    <tr>
      <td height="1"></td>
    </tr>
    <tr>
      <td height="20" bgcolor="#003366"></td>
      <tr>
        <td>
          <div align="center" class="string"> ? Copyright 2007 Hewlett-Packard TSG-JDDC
          </div></td>
      </tr>
      <!-- Footer area end here -->
      </table></TD>
    </TR>
    </table>
    </div>
  </body>
</html>
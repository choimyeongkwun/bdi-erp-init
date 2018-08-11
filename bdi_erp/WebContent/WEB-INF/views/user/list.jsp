
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<%
List<Map<String,String>> userList = 
	(List<Map<String,String>>) request.getAttribute("userList");
%>
<body>
<div class="container">

	<div style="margin:10px;">
		<form action="<%=rPath%>/user/list">
			<select name="key" >
         <option value="uiName">이름</option>
         <option value="uiNum" >번호</option>
         <option value="uiId" >아이디</option>
         <option value="uiEmail">이메일</option>
     </select>
     	 <input type="text" name="val">
         <button>검색</button>
			
		</form>
	</div>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>아이디</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
<%
for(Map<String,String> user:userList){
%>	
			<tr>
				<td><%=user.get("uiNum") %></td>
				<td><%=user.get("uiName") %></td>
				<td><%=user.get("uiId") %></td>
				<td><%=user.get("uiEmail") %></td>
			</tr>
<%
}
%>	
		</tbody>
	</table>
</div>
</body>
</html>

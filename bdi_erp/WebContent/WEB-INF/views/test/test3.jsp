<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<body>
<%
String name=(String)request.getAttribute("name");
%>
니이름:<%=name%>
</body>
</html>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<body>
<%
String name=(String)request.getAttribute("name");
Map<String,String> map = (Map<String,String>) request.getAttribute("map");
%>
니이름:<%=name%>
니 아이디 : <%=map.get("id") %>
니 나이 : <%=map.get("age") %>
</body>
</html>
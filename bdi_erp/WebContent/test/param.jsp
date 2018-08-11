<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>


<%
Map<String,String[]> map = request.getParameterMap();

out.println(map.get("id")[0]+"<br>");
out.println(map.get("name")[0]+"<br>");
String id = request.getParameter("id");
String name = request.getParameter("name");
%>

id : <%=id%><br>
name : <%=name%>
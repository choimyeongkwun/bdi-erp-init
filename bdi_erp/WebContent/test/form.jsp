<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<body>
<form action="<%=rPath%>/test/param.jsp">
	이름  : <input type="text" name="id"><br>
	아이디 : <input type="text" name="name"><br>
	<button>param.jsp로 전송</button>
</form>
</body>
</html>
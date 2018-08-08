<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<body>
<div class="container">
	<form action = "<%=rPath%>/user/join">
		이름 : <input type ="text" name="name"><br>
		아이디:<input type ="text" name="id"><br>
		비밀번호:<input type ="text" name="pwd"><br>
		비밀번호 체크 :<input type ="text" name="pwd1"><br>
		<button>회원가입</button>
	</form>
</div>
</body>
</html>
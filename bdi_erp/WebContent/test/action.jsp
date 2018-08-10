<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<body>
<button type="button" onclick="move('test1')">test 1로 이동</button>
<button type="button" onclick="move('test2')">test 2로 이동</button>
<button type="button" onclick="move('test3')">test 3로 이동</button>
<button type="button" onclick="move('test4')">test 4로 이동</button>
<script>

function move(p){
	location.href="/views/test/" + p + "?name="+p;
}
</script>
</body>
</html>
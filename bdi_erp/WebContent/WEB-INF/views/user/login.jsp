<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>

<link rel ="stylesheet" href ="<%=rPath%>/bs3/css/login.css">
<body>
<div class="login-form">
    <form action="<%=rPath%>/user/login" method="post">
        <h2 class="text-center">로그인</h2>   
        <div class="form-group">
        	<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" id="id" name="id" placeholder="아이디" required="required">				
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호" required="required">				
            </div>
        </div>        
        <div class="form-group">
            <button type="submit" id="login" class="btn btn-primary login-btn btn-block">로그인</button>
        </div>
        <div class="clearfix">
            <a href="#" class="pull-right" id="forgotPwd">비밀번호를 잊으셨나요?</a>
        </div>
    </form>
    <p class="text-center text-muted small">계정이 없으신가요? <a href="#" id="join">회원가입</a></p>
</div>
</body>
</html>
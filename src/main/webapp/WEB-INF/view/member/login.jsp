<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Login 페이지</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="<c:url value="/static/js/bootstrap"/>"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
   integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
   integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
   crossorigin="anonymous">
<script type="text/javascript">
	$().ready(function(){
		<c:if test="${sessionScope.status eq 'emptyId'}">
			$("#errorId").show();
		</c:if>
		<c:if test="${sessionScope.status eq 'emptyPassword'}">
			$("#errorPassword").show();
		</c:if>
		
		
		$("#loginBtn").click(function(){
			
			if ( $("#id").val() == "" ){
				//alert("아이디를 입력하세요!"); 밑에 튀어나오게 지정해줬음
				$("#errorId").slideDown(300);
				$("#id").focus();
				return false;
			} else {
				$("#errorId").slideUp(300);
			}
			
			if ( $("#password").val() == "" ){
				$("#errorPassword").slideDown(300);
				$("#password").focus();
				return false;
			} else {
				$("#errorPassword").slideUp(300);
			}
			
			$("#loginForm").attr({
				"action": "<c:url value="/login"/>",
				"method": "post"
			}).submit();
			
			
		});
		
		
		
	});


</script>
</head>
<body>

	<jsp:include page="/WEB-INF/view/template/nav.jsp" />
	
	
	<article class="container">
        <div class="page-header">
          <h1>로그인</h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form id="loginForm" role="form">
          	<c:if test="${sessionScope.status eq 'fail'}">
          		<div id = "invalidIdAndPassword">
          			<div>아이디 혹은 비밀번호가 잘못되었습니다.</div>
          			<div>한번 더 확인 후 시도해 주세요.</div>
          		</div>
          	</c:if>
          
            <div class="form-group">
              <label for="InputEmail">아이디</label>
              <input type="text" class="form-control" id="email" name="email" placeholder="Email">
            </div>
            
            <div class="form-group">
              <label for="InputPassword">비밀번호</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
            </div>
         
            
            <div class="form-group text-center">
              <button id="loginBtn" type="submit" value="Login" class="btn btn-info">로그인<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">회원가입<i class="fa fa-times spaceLeft"></i></button>
            </div>
          </form>
        </div>
	</article>
	
</body>
</html>
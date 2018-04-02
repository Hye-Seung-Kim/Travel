<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
</head>
<body>
   <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
      integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
      crossorigin="anonymous"></script>

	<jsp:include page="/WEB-INF/view/template/nav.jsp" />
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호확인" name="userPasswordcheck" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" class="userGender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" class="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
			</div>
		</div>
	</div>
	
	
</body>
</html>
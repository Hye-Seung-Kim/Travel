<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js" />"
		type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function(){
		$("#writeBtn").click(function(){
			var writeFrom = $("#writeForm");
			writeForm.attr({
				"method" : "post",
				"action" : "<c:url value="/write"/>"
			});
			writeForm.submit();
		});
	});

</script>

</head>
<body>
	
	<jsp:include page="/WEB-INF/view/template/nav.jsp" />
	<form:form modelAttribute="writeForm">
		<div>
			제목: <input type="text" id="title" name="title" placeholder="제목 명"
				        value="${travelVO.title}">
		</div>
		<div id="errorTitle" style="display:none;">제목을 입력하세요!</div>
		<div>
			카테고리: <input type="text" id="category" name="category" placeholder="카테고리">
		</div>
		<div>
			베스트 장소: <input type="text" id="location" name="location" placeholder="장소">
		</div>
		<div>
			교통: <input type="text" id="transportaion" name="transportaion" placeholder="교통">
		</div>
		<div>
			숙박: <input type="text" id="accomodations" name="accomodations" placeholder="숙박">
		</div>
		<div>
			준비물: <input type="text" id="luggage" name="luggage" placeholder="준비물">
		</div>
		<div>
			여행 경비: <input type="text" id="expense" name="expense" placeholder="여행 경비">
		</div>
		<div>
			여행 경로: <input type="text" id="route" name="route" placeholder="여행 경로">
		</div>
		<div>
			내용: <textarea rows="10" cols="30" id="body" name="body" placeholder="내용"></textarea>
		</div>
		<div>
			작성자: <input type="text" id="nickname" name="nickname" placeholder="작성자 명">
		</div>
		<div>
			사용자 아이디: <input type="text" id="userId" name="userId" placeholder="사용자 ID">
		</div>
		<div>
			작성일: <input type="date" id="writeDate" name="writeDate" placeholder="작성 일자">
		</div>
		<div>
			등록버튼: <input type="button" id="writeBtn" value="등록">
		</div>
	</form:form>

</body>
</html>
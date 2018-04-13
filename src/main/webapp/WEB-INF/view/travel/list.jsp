<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<div id="wrapper">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${travelList}" var="travel">
				<tr>
					<td>${travel.id}</td>
					<td>${travel.title}</td>
					<td>${travel.nickname}(${travel.userId})</td>
					<td>${travel.writeDate}</td>
					<td>${travel.viewCount}</td>
				</tr>
			</c:forEach>
			</tbody>
			<c:if test="${empty travelList}">
				<tr>
					<td colspan="5">등록된 게시글이 없습니다.</td>
				</tr>
			</c:if>
		</table>
		</div>
		
		<div>
			<a href="<c:url value="/write" />">글쓰기</a>
		</div>
		
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>
	
	
	
	
</body>
</html>
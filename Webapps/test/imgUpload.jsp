<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
</head>
<body>
<div id="content">
	<section class="con_wrap">
	<form action="${path1 }/FileUpload.do" method="post" enctype="multipart/form-data"">
		<table border=1>
			<tr>
				<td colspan=2 align="center"><h3>파일 업로드</h3></td>
			</tr>
			<tr>
				<td>올린 사람 :</td><td><input type="text" name="name"></td><br>
			</tr>
			<tr>
				<td>제목 :</td><td><input type="text" name="sname"></td><br>
			</tr>
			<tr>
				<td>파일명1 :</td><td><input type="file" name="fname"></td><br>
			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
	</section>
</div>
</body>
</html>
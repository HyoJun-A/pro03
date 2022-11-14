<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body>
<jsp:include page="/header.jsp" />
<div class="content container" id="content">
	<h2 class="title">로그인</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/CustomLoginCtrl.do" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="id" id="id" placeholder="아이디 입력" class="form-control" autofocus required />
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" id="pw" placeholder="비밀번호 입력" class="form-control" required /></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="button is-primary" value="로그인">
			<input type="reset" name="reset-btn" class="button is-primary" value="취소">
			<a href="<%=request.getContextPath() %>/custom/membership.jsp" class="button is-primary">회원가입</a>
		</div>
	</form>	
</div>
 <jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
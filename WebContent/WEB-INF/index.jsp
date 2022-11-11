<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<c:set var="path1" value="${request.getContextPath() }"/>
</head>
<body>
	<jsp:include page="${path1 }/header.jsp"/>
	<h2>${name}님의 테스트입니다.</h2>
	<jsp:include page="${path1 }/footer.jsp"/>
</body>
</html>
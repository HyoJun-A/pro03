<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
  <!-- 각 종 플러그인과 설정 파일 -->
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <!-- 구형 브라우저 html5태그 인식 -->
  <script src="${path0 }/js/html5shiv.js"></script>
  <!-- 구형 브라우저에서 css animation 인식 -->
  <script src="${path0 }/js/prefixfree.min.js"></script>
  <!-- 구형 브라우저에서 미디어쿼리 인식 -->
  <script src="${path0 }/js/respond.min.js"></script>
<style>
.column { margin-left: 170px; }
.table { min-width:960px; }
.title { width:960px;}
#frm1 { width:960px;}
#logo { display:block; width:92px; height:45px; background-image:url("${path0 }/data/logo.png");
background-size:100% auto; background-repeat:no-repeat; }
#nav { border-bottom:3px solid #ddd; }
.header {
    border-bottom: 1px solid #EEE;
}

.hd {
    width: 60%;
    margin: 0 auto;
}

.navbar {
    height: 80px;
}


.item img {
    clear: both;
    width: 200px;
    margin-top: 10px;
}

.navbar-link {
    width: 220px;
    margin-right: 8px;
    font-weight: 600;
    font-size: 17px;
}

.nav2{
    height: 50px;
}
</style>
<script src="https://code.jquery.com/jquery-latest.js"></script>

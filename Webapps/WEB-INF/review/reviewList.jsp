<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>이용 및 후기 목록</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <section class="container hero is-halfheight">
    <div class="container"><br><br>
      <h1 class="title">이용 및 후기 목록</h1>
		<table class="table">
		  <thead>
		    <tr>
		      <th><abbr title="No">글 번호</abbr></th>
		      <th><abbr title="Title">제목</abbr></th>
		      <th><abbr title="Result">작성일</abbr></th>
		      <th><abbr title="Author">작성자</abbr></th>
		    </tr>
		  </thead>
		   <tbody>
		   <c:forEach items="${list }" var="dto" varStatus="status">
		    <tr>
		      <td>${status.count }</td>
		      <td><a href="${path1 }/GetReivewCtrl.do?no=${dto.no }">${dto.title }</a></td>
		      <td>
		      	<fmt:parseDate value="${dto.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		      </td>
		      <td>${dto.id }</td>
		    </tr>
		    </c:forEach>
			<%--<c:if test="${list==null }">
		    <tr>
		    	<td colspan="3">해당 데이터 목록이 없습니다.</td>
		    </tr>
		    </c:if> --%>
		  </tbody>
		</table>
		<c:if test='${sid != null }'>
		<div class="buttons">
		  <a href="${path1 }/GetTourListCtrl.do" class="button is-success">후기등록 하기</a>
		</div>
		</c:if>
    </div>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>
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
    <title>이용 및 후기 수정</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">이용 및 후기 수정</h1>
     <form action="${path1 }/GetModifyReviewProCtrl.do?no=${dto.no }" method="post">
		<table class="table">
		   <tbody>
		    <tr>
		      <th>번호</th>
		      <td><p>${dto.no }</p></td>
		      <td><input type="hidden" name="no" id="no" value="${dto.no }"></td>
		    </tr>
		    <tr>
		      <th>제목</th>
		      <td><input type="text" name="title" id="title" value="${dto.title }" required></td>
		    </tr>
		    <tr>
		      <th>내용</th>
		      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required>${dto.content }</textarea></td>
		    </tr>
		    <tr> 
		      <th>작성일</th>
		      <td>
		      	<fmt:parseDate value="${dto.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		    </tr>
		  </tbody>
		</table>
		<div class="buttons">
			<input type="submit" class="button is-info" value="수정">
			<input type="reset" class="button is-info" value="취소">
		  	<a href="${path1 }/GetReivewListCtrl.do" class="button is-info">목록</a>
		</div>
	</form>
    </div>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>
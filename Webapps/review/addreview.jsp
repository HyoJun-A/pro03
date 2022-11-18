<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<%
	String tourno = request.getParameter("tourno");
	String cate = request.getParameter("cate");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>이용 및 후기 작성하기</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">이용 및 후기 작성하기</h1>
      	<form action="${path1 }/AddReviewCtrl.do" method="post">
			<table class="table">
			   <tbody>
			   <tr>
			      <th><label for="title">분류</label></th>
			      <td>
	   				<c:set var="cate" value="<%=cate %>" /> 
						<c:if test="${cate eq 'A' }">
						<span>관광</span>
						</c:if>
						<c:if test="${cate eq 'B' }">
						<span>체험</span>
						</c:if>
						<c:if test="${cate eq 'C' }">
						<span>행사</span>
						</c:if>
						<c:if test="${cate eq 'D' }">
						<span>축제</span>
						</c:if>
						<c:if test="${cate eq 'E' }">
						<span>숙박</span>
						</c:if>
						<c:if test="${cate eq 'F' }">
						<span>음식</span>
						</c:if>
						<c:if test="${cate eq 'G' }">
						<span>쇼핑</span>
						</c:if>
						<c:if test="${cate eq 'H' }">
						<span>기타</span>
					</c:if>
					<input type="hidden" name="cate" id="cate" value="<%=cate %>">
			      </td>
			    </tr>
			    <tr>
			      <th><label for="title">장소번호</label></th>
			      <td><input type="text" class="input" maxlength="120" name="tourno" id="tourno" value="<%= tourno %>" readonly /></td>
			    </tr>
			    <tr>
			      <th><label for="title">작성자 아이디</label></th>
			      <td><input type="text" class="input" maxlength="120" name="id" id="id" value="${sid }" readonly /></td>
			    </tr>
			    <tr>
			      <th><label for="title">제목</label></th>
			      <td><input type="text" class="input" maxlength="120" name="title" id="title" placeholder="제목 입력" required /></td>
			    </tr>
			    <tr>
			      <th><label for="content">내용</label></th>
			      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required></textarea></td>
			    </tr>
			  </tbody>
			</table>
			<div class="buttons">
			  <button type="submit" class="button is-success">등록</button>
			  <button type="reset" class="button is-warning">취소</button>
			  <a href="${path1 }/GetTourListCtrl.do" class="button is-info">목록</a>
			</div>
		</form>
    </div>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>
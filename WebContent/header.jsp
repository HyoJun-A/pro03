<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%
	String id = (String) request.getAttribute("id");
%>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="https://bulma.io">
      <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
    </a>

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item">
        Home
      </a>

      <a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
        Documentation
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          More
        </a>

        <div class="navbar-dropdown">
          <a class="navbar-item">
            About
          </a>
          <a class="navbar-item">
            Jobs
          </a>
          <a class="navbar-item">
            Contact
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
            Report an issue
          </a>
        </div>
      </div>
    </div>

    <div class="navbar-end">
      <% if( id != null ) {%>
      	<div class="navbar-item">
	        <div class="buttons">
				<p class="button is-primary"><strong><%= id %></strong></p>
	            <a class="button is-primary" href="<%=request.getContextPath() %>/LogOutCtrl.do"><strong>로그아웃</strong></a>
	            <a class="button is-light">마이페이지</a>
	            <% if(id == "admin" ){ %>
	            	<a class="button is-light">회원관리</a>
	            	<a class="button is-light">공지사항관리</a>
	            <% } %>
	        </div>
      	</div>
      <% } else {%>
   		<div class="navbar-item">
	        <div class="buttons">
	          <a class="button is-primary">
	            <strong>Sign up</strong>
	          </a>
	          <a href="<%=request.getContextPath() %>/custom/login.jsp" class="button is-light">
	            Login
	          </a>
	        </div>
        </div>
      <% } %>
    </div>
  </div>
</nav>
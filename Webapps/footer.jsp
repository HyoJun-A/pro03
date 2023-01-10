<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />
<footer class="is-flex-align-items-flex-end mt-auto">
    <div class="content has-text-centered">
      <img src="${path0 }/img/flogo.png" alt="flogo" class="flogo">
      <p>
        파주시 홈페이지에 게시된 전자우편주소는 무단으로 수집할 수 없으며, 위반시 정보통신망법에 의해 처벌됩니다.
      </p>
      <p>
        (우 10932) 경기도 파주시 시청로 50 | 대표전화 : 031) 940-4114<br>
        COPYRIGHT(C) 2021, PAJU CITY ALL RIGHTS RESERVED
      </p>
    </div>
  </footer>
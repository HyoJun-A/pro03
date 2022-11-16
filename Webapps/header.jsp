<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />  
<header class="header">
        <div class="hd">
            <nav class="navbar" role="navigation" aria-label="main navigation">
                <div class="navbar-brand">
                    <a class="item" href="<%=request.getContextPath() %>/">
                        <!-- <img src="https://tour.paju.go.kr/resources/user/tour/images/layout/logo@2x.png" alt="Logo" > -->
                        <img src="${path2 }/img/logo.png" alt="Logo" >
                    </a>
                </div>
                <div class="navbar-end">
                    <div class="navbar-item">
                        <c:if test="${empty sid }">
                            <div class="buttons">
                                <a class="button is-primary" href="${path2 }/user/login.jsp">
                                    <img src="https://tour.paju.go.kr/resources/user/_common/images/ico-login-white.png" alt="login"> 로그인
                                </a>
                                <a class="button is-info" href="${path2 }/user/agree.jsp">
                                    <img src="https://tour.paju.go.kr/resources/user/_common/images/ico-join-white.png" alt="join">회원가입
                                </a>
                            </div>
                        </c:if>
                        <c:if test="${not empty sid }">
                            <div class="buttons">
                                <c:if test='${sid.equals("admin")}'>
                                  <a href="${path2 }/AdminCtrl.do" class="button">
                                    <strong>홈페이지 관리</strong>
                                  </a>
                                </c:if>
                                  <a href="${path2 }/UserInfoCtrl.do" class="button is-primary">
                                    <strong>회원정보</strong>
                                  </a>
                                  <a href="${path2 }/UserLogoutCtrl.do" class="button is-info">
                                        	로그아웃
                                  </a>
                            </div>
                        </c:if>
                    </div>
                </div>
            </nav>
            <nav class="navbar nav2" role="navigation" aria-label="main navigation">
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">
                        	관광명소
                    </a>
                    <div class="navbar-dropdown">
                        <a class="navbar-item">
                            	역사유적
                        </a>
                        <a class="navbar-item">
                           	 문화예술
                        </a>
                        <a class="navbar-item">
                            	휴양
                        </a>
                        <a class="navbar-item">
                            	안보
                        </a>
                        <a class="navbar-item">
                           	 체험
                        </a>
                        <a class="navbar-item">
                            	레포츠
                        </a>
                        <a class="navbar-item">
                            	자연명소
                        </a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">
                        	전시공연공간
                    </a>

                    <div class="navbar-dropdown">
                        <a class="navbar-item">
              	                     박물관
                        </a>
                        <a class="navbar-item">
               	                     전시관
                        </a>
                        <a class="navbar-item">
                	            공연/행사장
                        </a>
                        <a class="navbar-item">
                 	           도서관
                        </a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">
                        	음식
                    </a>
                    <div class="navbar-dropdown">
                        <a class="navbar-item">
                           	 한식
                        </a>
                        <a class="navbar-item">
                          	  양식
                        </a>
                        <a class="navbar-item">
                         	   일식/중식
                        </a>
                        <a class="navbar-item">
                            	퓨전/기타
                        </a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">
                       	 수목원
                    </a>
                    <div class="navbar-dropdown">
                        <a class="navbar-item">
                            	안내
                        </a>
                        <a class="navbar-item">
                           	 예약
                        </a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">
                        	관광안내
                    </a>

                    <div class="navbar-dropdown">
                        <a class="navbar-item">
                           	 종합안내
                        </a>
                        <a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
                           	 공지사항
                        </a>
                        <a class="navbar-item">
                            Q&A
                        </a>
                        <a class="navbar-item">
                           	 새소식
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </header>
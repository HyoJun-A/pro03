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
                <div class="search">
                    <form name="frm2" class="frm2" id="frm2" action="${path2 }/GetSearchTour.do" method="post">
                        <input class="input is-rounded" name="sea" id="sea" type="text" placeholder="통합검색">
                        <a type="submit"><input type="image" src="${path2 }/img/sr.png" alt="Logo" class="simg"></a>
                	</form>
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
			</div>
		
			<div id="navbarBasicExample" class="navbar-menu">
				<div class="navbar-start" id="gnb">
					<!-- ajax로 메뉴 로딩하여 추가하기 -->
					<div class="navbar-item has-dropdown is-hoverable">
						<a href="${path2 }/GetTourCateListCtrl.do?cate=A" class="navbar-link">
							관광
						</a>
						<div class="navbar-dropdown cate" id="cate01">
		
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable">
						<a href="${path2 }/GetTourCateListCtrl.do?cate=B" class="navbar-link cate">
							체험
						</a>
						<div class="navbar-dropdown cate" id="cate02">
		
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable">
						<a href="${path2 }/GetTourCateListCtrl.do?cate=C" class="navbar-link cate">
							행사
						</a>
						<div class="navbar-dropdown cate" id="cate03">
		
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable">
						<a href="${path2 }/GetTourCateListCtrl.do?cate=D" class="navbar-link cate">
							축제
						</a>
						<div class="navbar-dropdown cate" id="cate04">
		
						</div>
					</div>
					<div href="${path2 }/GetTourCateListCtrl.do?cate=E" class="navbar-item has-dropdown is-hoverable">
						<a class="navbar-link cate">
							숙박
						</a>
						<div class="navbar-dropdown cate" id="cate05">
		
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable">
						<a href="${path2 }/GetTourCateListCtrl.do?cate=F" class="navbar-link cate">
							음식
						</a>
						<div class="navbar-dropdown cate" id="cate06">
		
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable">
						<a href="${path2 }/GetTourCateListCtrl.do?cate=G" class="navbar-link cate">
							쇼핑
						</a>
						<div class="navbar-dropdown cate" id="cate07">
		
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable single">
						<a class="navbar-link">
							관광안내
						</a>
						<div class="navbar-dropdown single">
							<a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
								공지사항
							</a>
							<a class="navbar-item" href="<%=request.getContextPath() %>/GetReviewListCtrl.do">
								이용 및 후기
							</a>
							<a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
								Q&A
							</a>
						</div>
					</div>
					<div class="navbar-item has-dropdown is-hoverable single">
						<a class="navbar-link">
							이야기파주
						</a>
		
						<div class="navbar-dropdown single">
							<a class="navbar-item">
								파주여행스토리
							</a>
							<a class="navbar-item">
								인물이야기
							</a>
							<a class="navbar-item">
								파주이야기
							</a>
						</div>
					</div>
				</div>
		
			</div>
			</div>
			</div>
		</nav>
        </div>
    </header>
    
    <script>
	$(document).ready(function(){
		$.ajax({
			url:"${path2 }/MemuLoadCtrl.do",
			type:"POST",
			enctype:"UTF-8",
			datatype:"json",
			processData:false,
			contentType:false, 
			cache:false,
			success:function(data){
				$(".navbar-dropdown.cate").empty();
				var trans = $.parseJSON(data);
				$.each(trans, function(key, value){
					if(key=="data"){
						for(var i=0;i<value.length;i++){
							if(value[i].cate=="A"){
								$("#cate01").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a><br>");
							} else if(value[i].cate=="B"){
								$("#cate02").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a><br>");
							} else if(value[i].cate=="C"){
								$("#cate03").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a><br>");
							} else if(value[i].cate=="D"){
								$("#cate04").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a><br>");
							} else if(value[i].cate=="E"){
								$("#cate05").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a><br>");
							} else if(value[i].cate=="F"){
								$("#cate06").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a><br>");
							} else if(value[i].cate=="G"){
								$("#cate07").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a><br>");
							}
						}
					}
				});
				
			}
		});
	});
	</script>
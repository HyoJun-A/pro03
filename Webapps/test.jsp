<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>메인 페이지</title>
    <jsp:include page="${path1 }/head.jsp" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.4/dist/css/bulma-carousel.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.3/dist/js/bulma-carousel.min.js"></script>
<link rel="stylesheet" href="./css/style2.css" />
<style>
.slider-text {
    position: absolute;
    right: 0;
    bottom: 0;
    
  }
#slider .card-content{
    max-width: 50%;
    background-color: rgba(#255, #255, #255, 0.5);
    
  }
#slider{
    overflow: hidden;
    max-width: 1344px;
    margin-left: 271px;
  } 
@media screen and (max-width: 1023px) {
    #slider .card-content{
      display: none;
    }
  }
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  right: 0;
  top: 0;
}
.item-slide img {
  max-width: 1200px;

  
}
.caption-container {
  color: white;
}
.card-content {
	margin-right: 800px;
	margin-bottom: 290px;
}
.card-content p {
	background-color: rgba( 0, 0, 0, 0.7);;
	color: white;
	font-weight: 700;
	width: 675px;
	height: 130px;
}
</style>
	
</head>
<body>
<div class="content">
  	<jsp:include page="${path1 }/header.jsp" />
	<section class="test">
        <div id="slider">
            <div class="card">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m1.jpg" alt="비쥬얼1" />
                    </figure>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m2.jpg" alt="" />
                    </figure>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m3.jpg" alt="" />
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m4.jpg" alt="" />
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m6.jpg" alt="" />
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m7.jpg" alt="" />
                    </p>
                </div>
            </div>
        </div>
    </section>
    <div class="middle-area">
    <div class="container">
      <div class="notice-wrap">
        <section class="section section-notice">
          <h3 class="title"><span>새소식</span></h3>
          <ul class="notice-list">
            
              <li>
                <a href="/tour/user/board/BD_board.view.do?bbsCd=2001&amp;seq=20221111143901942&amp;q_ctgCd=1003">임진각평화곤돌라와 함께하는 캠프그리브스 유료 시범투어 안내</a>
                <span class="date">2022-11-11</span>
              </li>
            
              <li>
                <a href="/tour/user/board/BD_board.view.do?bbsCd=2001&amp;seq=20221025074508508&amp;q_ctgCd=1003">'제1회 파주평화페스티벌' 개최 안내</a>
                <span class="date">2022-10-25</span>
              </li>
            
          </ul>
          <a href="/tour/user/board/BD_board.list.do?bbsCd=2001&amp;q_ctgCd=1003" class="btn btn-more">더보기</a>
        </section>
  
        <section class="section section-guide">
          <div class="main-tel">
            <h3 class="title">파주 관광안내</h3>
            <div class="tel-info">
              <a href="tel:1330" class="tel">
                <i class="ico ico-phone-yellow"></i>1330
              </a>
              <span class="text">(국번없이)</span>
            </div>
          </div>
          <ul class="tel-list">
            <li>
              <a href="/user/tour/place/BD_tourPlaceInfoView.do?q_gubunCode=1004&amp;menuCode=1&amp;cntntsSn=2" class="title">임진각 관광안내</a>
              <a href="tel:031-753-4744" class="tel">
                <i class="ico ico-phone-black"></i>031)953-4744
              </a>
            </li>
            <li class="pt-1 pb-1">
              <a href="/user/tour/place/BD_tourPlaceInfoView.do?q_gubunCode=1004&amp;menuCode=1&amp;cntntsSn=374" class="title">DMZ 평화관광</a>
              <div class="tel-info-br">
              <a href="tel:031-954-0303" class="tel">
                <i class="ico ico-phone-black"></i>031)954-0303
              </a>
              <a href="tel:031-950-1974" class="tel">
                <i class="ico ico-phone-black"></i>031)950-1974
              </a>
              <a href="/user/tour/place/BD_tourPlaceInfoView.do?q_gubunCode=1004&amp;menuCode=1&amp;cntntsSn=374" class="text-secondary text-bold f13">※ 공지사항 바로가기</a>
              </div>
            </li>
          </ul>
        </section>
      </div>
  
      <section class="section section-keyword">
        <h3 class="title"><span>Hot ! 키워드</span></h3>
        <ul class="keyword-list">
          <li><a href="/user/tour/place/BD_tourPlaceInfoList.do?q_gubunCode=1004&amp;menuCode=1"><span>안보테마 여행</span></a></li>
          <li><a href="/user/tour/place/BD_tourPlaceInfoList.do?menuCode=4"><span>자연명소</span></a></li>
          <li><a href="/user/tour/place/BD_tourPlaceInfoView.do?q_gubunCode=1003&amp;cntntsSn=52&amp;menuCode=78"><span>임진각 평화누리</span></a></li>
          <li><a href="/tour/festival/festival02/festival02_2/festival02_2_01/festival02_2_01_01.jsp"><span>장단콩 축제</span></a></li>
          <li><a href="/tour/festival/festival02/festival02_1/festival_02_1_tab1_1/festival_02_1_tab1_1_01.jsp"><span>인삼축제</span></a></li>
          <li><a href="/user/tour/place/BD_tourPlaceInfoView.do?menuCode=111&amp;cntntsSn=2125"><span>율곡수목원</span></a></li>
          <li><a href="/user/tour/place/BD_tourPlaceInfoList.do?menuCode=42"><span>캠핑장</span></a></li>
          <li><a href="/tour/tourInfo/tourInfo03.jsp"><span>군장병할인</span></a></li>
          <li><a href="/user/tour/place/BD_tourPlaceInfoList.do?q_gubunCode=1001&amp;menuCode=55"><span>국가지정 문화재</span></a></li>
        </ul>
      </section>
  
      <section class="section section-citytour">
        <h3 class="title">가온누리 파주시티투어</h3>
        <ul class="citytour-list">
          <li>
            <a href="http://www.pjcitytour.kr/?p=8_31" target="_blank" title="시티투어코스 당일코스 주황(화) 새창">
              <span class="period"><span>당일</span></span>
              <span class="day day-tue"><span>화</span></span>
              <span class="theme">역사누리</span>
            </a>
          </li>
          <li>
            <a href="http://www.pjcitytour.kr/?p=8_32" target="_blank" title="시티투어코스 당일코스 노랑(수) 새창">
              <span class="period"><span>당일</span></span>
              <span class="day day-wed"><span>수</span></span>
              <span class="theme">통일누리</span>
            </a>
          </li>
          <li>
            <a href="http://www.pjcitytour.kr/?p=8_33" target="_blank" title="시티투어코스 당일코스 초록(목) 새창">
              <span class="period"><span>당일</span></span>
              <span class="day day-thu"><span>목</span></span>
              <span class="theme">평화누리</span>
            </a>
          </li>
          <li>
            <a href="http://www.pjcitytour.kr/?p=8_34" target="_blank" title="시티투어코스 당일코스 파랑(금) 새창">
              <span class="period"><span>당일</span></span>
              <span class="day day-fri"><span>금</span></span>
              <span class="theme">전통누리</span>
            </a>
          </li>
          <li>
            <a href="http://www.pjcitytour.kr/?p=8_35" target="_blank" title="시티투어코스 당일코스 남색(토) 새창">
              <span class="period"><span>당일</span></span>
              <span class="day day-sat"><span>토</span></span>
              <span class="theme">가족누리</span>
            </a>
          </li>
          <li>
            <a href="http://www.pjcitytour.kr/?p=8_36" target="_blank" title="시티투어코스 당일코스 보라(일) 새창">
              <span class="period"><span>당일</span></span>
              <span class="day day-sun"><span>일</span></span>
              <span class="theme">오감누리</span>
            </a>
          </li>
          <li>
            <a href="http://www.pjcitytour.kr/?p=8_37" target="_blank" title="시티투어코스 1박2일 레인보우2(토,일) 새창">
              <span class="period"><span>1박2일</span></span>
              <span class="day day-weekend"><span>주말</span></span>
              <span class="theme">전통평화투어</span>
            </a>
          </li>
        </ul>
        <a href="http://www.pjcitytour.kr" class="btn btn-reserve" target="_blank" title="새창">
          <i class="ico ico-reserve"></i>
          <span>온라인 예약</span>
        </a>
      </section>
    </div>
  </div>
</div>  
    <script>
	    bulmaCarousel.attach('#slider', {
	        slidesToScroll: 1,
	        slidesToShow: 1,
	        infinite: true,
	        autoplay: true,
	    });
	    var slideIndex = 1;
		showSlides(slideIndex);
		
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("item-slide");
		  var captionText = document.getElementById("caption");
		  if (n > slides.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";
		  }
		}
    </script>
	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>
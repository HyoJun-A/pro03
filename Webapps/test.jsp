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
    max-width: 80%;
    margin-left: 10%;
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
  	<jsp:include page="${path1 }/header.jsp" />
	<section class="test">
        <div id="slider">
            <div class="card">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m1.jpg" alt="비쥬얼1" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class="is-size-5 box">
						임진각 관광지<br>
						임진각 관광지 - 화해와 상생, 평화와 통일의 상징으로 전환시키기 위해 조성된 복합 문화공간
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m2.jpg" alt="" />
                    </figure>
                </div>
                <div class="card-content slider-text ">
                    <p class="is-size-5 box">
                    	황포돛배<br>
						황포돛배 - 임진강의 숨겨진 비경과 일반인이 쉽게 접할 수 없는 곳을 관람할 수 있는 뱃기 관광
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m3.jpg" alt="" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                    	파주출판단지<br>
                    	파주출판도시-책과 사람, 문화와 자연이 어우러진공간
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m4.jpg" alt="" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                   	         오두산통일전망대<br>
					         오두산통일전망대 - 비무장지대 폭이 가장 짧은 곳! 통일 교육의 산도장
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m6.jpg" alt="" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                    	파주 이이 유적<br>
					         파주 이이 유적 - 조선 중기의 대학자이며 경세가인 율곡 이이(栗谷 李珥, 1536～1584) 선생의 유적지     
                    </p>
                </div>
            </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="/pro03/img/m7.jpg" alt="" />
                    </p>
                </div>
                <div class="card-content slider-text ">
                    <p class=" is-size-5 box">
                    	마장호수 출렁다리<br>
                    	물빛풍경이 아름다운 마장호수 위 220m 자연친화적 현수교
                    </p>
                </div>
            </div>
        </div>
    </section>
    
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
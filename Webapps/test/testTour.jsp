%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광지 추가</title>
<jsp:include page="/head.jsp" />
</head>
<body>
<jsp:include page="/header.jsp" />
<section class="section">
    <div class="container">
      <h1 class="title">관광지 추가</h1>
     <form action="${path1 }/" method="post" name="frm1" id="frm1">
		<table class="table">
		   <tbody>
		   <tr>
		      <th>메뉴</th>
		      <td><input type="hidden" name="tourno" id="tourno" value="0" required>
		      	<div class="select">
				  <select name="selectNo" id="selectNo" onchange="updateNo()">
				    <option value="0" hidden>메인메뉴</option>
				    <option value="1">관광명소</option>
				    <option value="2">전시공연공간</option>
				    <option value="3">음식</option>
				  </select>
				</div>
		      </td>
		    </tr>
		    <tr>
		      <th>카테고리</th>
		      <td><input type="hidden" name="cate" id="cate" value="0" required>
		      	<div class="select">
				  <select name="selectCate" id="selectCate" onchange="updateCate()">
				    <option value="0" hidden>관광명소</option>
				    <option value="1">역사유적</option>
				    <option value="2">문화예술</option>
				    <option value="3">휴양</option>
				    <option value="4">안보</option>
				    <option value="5">체험</option>
				    <option value="6">레포츠</option>
				    <option value="7">자연명소</option>
				  </select>
				</div>
		      </td>
		    </tr>
		    <tr>
		      <th>장소</th>
		      <td><input type="text" name="place" id="place" class="input" placeholder="장소번호 입력해 주세요" required></td>
		    </tr>
		    <tr>
		      <th>간단한 설명</th>
		      <td><textarea rows="8" cols="100" name="comment1" id="comment1" class="textarea" required></textarea></td>
		    </tr>
		    <tr> 
		      <th>자세한 설명</th>
		      <td><textarea rows="8" cols="100" name="comment2" id="comment2" class="textarea" required></textarea></td>
		    </tr>
		    <tr>
		      <th>메인사진</th>
		      <td>
		      <input class="input" type="text" name="pic1" id="pic1" placeholder="Disabled input" value="" disabled>
		      <a class="button is-info" onclick="upLoad1()">사진등록</a>
		      </td>
		    </tr>
		    <tr>
		      <th>서브사진</th>
		      <td>
		      <input class="input" type="text" name="pic2" id="pic2" placeholder="Disabled input" value="" disabled>
		      <a class="button is-info" onclick="upLoad()">사진등록</a>
		      </td>
		    </tr>
		  </tbody>
		</table>
		<div class="buttons">
			<input type="submit" class="button is-info" value="수정">
			<input type="reset" class="button is-info" value="취소">
		  	<a href="${path1 }/GetNoticeListCtrl.do" class="button is-info">목록</a>
		</div>
	</form>
    </div>
  </section>
<script>
	function upLoad1(){
		var pic = {
				tourno : $("#tourno").val()
		}
		$.ajax({
			url:"${path1 }/FileUpload.do",
			type: "post",
			dataType: "json",
			data: pic,
			success:function(data){
				var pic = data.picName;
				$("#pic1").val(pic);
			}
		});
	}
	function upLoad2(){
		var pic = {
				tourno : $("#tourno").val()
		}		$.ajax({
			url:"${path1 }/FileUpload.do",
			type: "post",
			dataType: "json",
			success:function(data){
				var pic = data.picName;
				$("#pic2").val(pic);
			}
		});
	}
</script>
<script>
	//select-box에서 옵션을 선택할경우 hidden으로 숨겨둔 input의 value값을 변경
	function updateNo(){
		var selectNo = document.frm1.selectNo.value;
		document.frm1.tourno.value = selectNo;
	}
	function updateCate(){
		var selectCate = document.frm1.selectCate.value;
		document.frm1.cate.value = selectCate;
	}
	
	function upLoad() {
		var win = window.open("imgUpload.jsp", "idCheck", "width=500, height=400");
    }
</script>
<jsp:include page="/footer.jsp" />
</body>
</html>
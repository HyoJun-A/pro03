<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		      <th>분류</th>
		      <td><input type="hidden" name="no" id="no" value="0" required>
		      	<div class="select">
				  <select name="selectNo" id="selectNo" onchange="updateNo()">
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
		      <td><input type="text" name="place" id="place" placeholder="장소를 입력해 주세요" required></td>
		    </tr>
		    <tr>
		      <th>간단한 설명</th>
		      <td><textarea rows="8" cols="100" name="comment1" id="comment1" class="textarea" required>${dto.content }</textarea></td>
		    </tr>
		    <tr> 
		      <th>자세한 설명</th>
		      <td><textarea rows="8" cols="100" name="comment2" id="comment2" class="textarea" required>${dto.content }</textarea></td>
		    </tr>
		    <tr>
		      <th>읽은 횟수</th>
		      <td><p>${dto.visited }</p></td>
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
	function updateNo(){
		var selectNo = document.frm1.selectNo.value;
		document.frm1.no.value = selectNo;
	}
</script>
<jsp:include page="/footer.jsp" />
</body>
</html>
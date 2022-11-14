<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*, java.util.*"%>
<%@ page import="java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.js"></script> 
<c:set var="path1" value="${request.getContextPath() }"/>

<style>
.title { padding-top:36px; padding-bottom:20px; }
#id { width:780px; margin-right:30px;}
#idtxt { padding: 0.6rm;}
</style>
</head>
<body>
<jsp:include page="${path1 }/header.jsp"/>
<div class="content container" id="content">
	<h2 class="title">회원가입</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/InsertCustomCtrl.do" method="post" onsubmit="return joinCheck(this)">
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<div class="form-row">
							<input type="text" name="id" id="id" placeholder="아이디 입력" class="input is-primary" autofocus required />
							<input type="button" class="button" value="아이디 중복 확인" onclick="idCheck()">
							<input type="hidden" name="idck" id="idck" value="no">
						</div>
						<div>
							<p id="idtxt" class="idtxt" >아이디가 입력되지 않았습니다.</p>
						</div>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" id="pw" placeholder="비밀번호 입력" class="input is-primary" required /></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pw" id="pw" placeholder="비밀번호 입력" class="input is-primary" required /></td>
				</tr>
				<tr>
					<th>고객이름</th>
					<td><input type="text" name="name" id="name" placeholder="이름 입력" class="input is-primary" required /></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address1" id="address1" placeholder="기본 주소 입력" class="input is-primary" required /><br>
					<input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="input is-primary" required /><br>
					<input type="text" name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" class="input is-primary">
					<button id="post_btn" onclick="findAddr()" class="button">우편번호 검색</button>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel" id="tel" placeholder="전화번호 입력 000-0000-0000" class="input is-primary" required></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="button" value="회원가입">
			<input type="reset" name="reset-btn" class="button" value="취소">
			<a href="<%=request.getContextPath() %>/custom/login.jsp" class="button">로그인</a>
		</div>
	</form>	
	<script>
	$(document).ready(function(){
		$("#id").keyup(function(){
			$("#idck").val("no");
			if($("#id").val() == ""){
				$("#idtxt").html("<strong style='padding : 0.7rm;'>아이디가 입력되지 않았습니다.</strong>");
			} else {
				$("#idtxt").html("<strong style='padding : 0.7rm;'>아이디 입력중</strong>");
			}
		});
		
	});
	</script>
	<script>
	function idCheck(){
		if($("#id").val()==null){
			alert("아이디를 입력해주세요");
		}
		var para = {
			id : $("#id").val()		
		}

		$.ajax({
			url : "../IdCheckCtrl.do",
			type : "post",
			dataType : "json",
			data : para,
			success : function(result){
				var idchk = result.result;
				if(idchk == false){
					$("#idck").val("no");
					$("#idtxt").html("<strong style='padding : 0.7rm;'>사용불가능 아이디</strong>");
					$("#id").focus();
				}else if(idchk == true){
					$("#idck").val("yes");
					$("#idtxt").html("<strong style='padding : 0.7rm;'>사용가능한 아이디</strong>");
				}
			}
		});
	}
	function joinCheck(f){
		if(f.cusPw.value!=f.cusPw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			f.cusPw.focus();
			return false;
		}
		if(f.idck.value!="yes"){
			alert("아이디 중복 체크를 하지 않으셨습니다.");
			return false;
		}
	}
	</script>
	<script>
	function findAddr() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				var roadAddr = data.roadAddress;
				var jibunAddr = data.jibunAddress;
				document.getElementById("postcode").value = data.zonecode;
				if(roadAddr !== '') {
					document.getElementById("address1").value = roadAddr;				
				} else if(jibunAddr !== ''){
					document.getElementById("address1").value = jibunAddr;
				}
				document.getElementById("address2").focus();
			}
		}).open();
	}
	</script>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
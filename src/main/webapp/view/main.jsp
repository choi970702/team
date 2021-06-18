<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.box
	{
		width: 80%;
		height: 200px;
		border: 1px solid black;
		margin: auto;
		text-align: center;
		line-height: 200px;
		color: white;
		font-weight: bold;
		display: none;
	}
	#btn
	{
		width: 200px;
		margin: auto;
	}

</style>
<script type="text/javascript">
	function setOne() 
	{
		document.getElementById("img1").style.display="block";
		document.getElementById("img2").style.display="none";
		document.getElementById("img3").style.display="none";
		document.getElementById("img4").style.display="none";
		document.getElementById("img5").style.display="none";
	}
	function setTwo() 
	{
		document.getElementById("img1").style.display="none";
		document.getElementById("img2").style.display="block";
		document.getElementById("img3").style.display="none";
		document.getElementById("img4").style.display="none";
		document.getElementById("img5").style.display="none";
	}
	function setThree() 
	{
		document.getElementById("img1").style.display="none";
		document.getElementById("img2").style.display="none";
		document.getElementById("img3").style.display="block";
		document.getElementById("img4").style.display="none";
		document.getElementById("img5").style.display="none";
	}
	function setFour() 
	{
		document.getElementById("img1").style.display="none";
		document.getElementById("img2").style.display="none";
		document.getElementById("img3").style.display="none";
		document.getElementById("img4").style.display="block";
		document.getElementById("img5").style.display="none";
	}
	function setFive() 
	{
		document.getElementById("img1").style.display="none";
		document.getElementById("img2").style.display="none";
		document.getElementById("img3").style.display="none";
		document.getElementById("img4").style.display="none";
		document.getElementById("img5").style.display="block";
	}
</script>
</head>
<body>
	<img alt="" src="">
	<div>
		<div style="text-align: right;">
			<%--로고 --%>
			<span style="text-align: left;">
				<img alt="" src="../img/light.gif" style="width:50px; text-align: left;">
			</span>
			<%--login/pw --%>
			<a href="">로그인</a>
			<a href="">마이페이지</a>
		</div>
		<div>
			<%--menu --%>
			<ul style="text-align: center;">
				<button value="" onclick="">시작하기</button>
				<button value="" onclick="">가이드</button>
				<button value="" onclick="">문의 / 공지</button>
			
			</ul>
		</div>
		<div>
			<%--중앙 가이드, 시작하기 --%>
			<img alt="" src="">
		</div>
		<div>
			<img name="img1" alt="" src=""> <img name="img2" alt="" src="">
			<img name="img3" alt="" src=""> <img name="img4" alt="" src="">
			<img name="img5" alt="" src="">

			<%--가이드이미지 --%>
			<div id="img1" class="box">
				<img alt=".." src="img/dark.gif" onclick="setOne()">1
			</div>
			<div id="img2" class="box">
				<img alt=".." src="../img/light.gif" onclick="setTwo()">2
			</div>
			<div id="img3" class="box">
				<img alt="" src="../img/pic1.jpg" onclick="setThree()">3
			</div>
			<div id="img4" class="box">
				<img alt="" src="../img/pic2.jpg" onclick="setFour()">4
			</div>
			<div id="img5" class="box">
				<img alt="" src="../img/pic3.jpg" onclick="setFive()">5
			</div>
			<div id="box3" class="box" style="background-color: blue;">BOX3</div>
			
			
			<%-- 이전 --%>
			<c:choose>
				<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
					<span style="color: gray; padding: 5px; border: 1px solid gray">이전으로</span>
				</c:when>
				<c:otherwise>
					<span style="color: tomato; padding: 5px; border: 1px solid tomato">
						<a
						href="">이전으로</a>
					</span>
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;
			<%-- 번호 --%>
			<c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }" step="1"
				var="k">
				<c:choose>
					<c:when test="${k==pvo.nowPage}">
						<span style="background-color: tomato; padding: 5px;">${k}</span>
					</c:when>
					<c:otherwise>
						<span style="color: tomato; padding: 5px;"> 
							<a href="">${k}</a>
						</span>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			&nbsp;&nbsp;
			<%-- 다음 --%>
			<c:choose>
				<c:when test="${pvo.endBlock >= pvo.totalPage }">
					<span style="color: gray; padding: 5px; border: 1px solid gray">다음으로</span>
				</c:when>
				<c:otherwise>
					<span style="color: tomato; padding: 5px; border: 1px solid tomato">
						<a href="">다음으로</a>
					</span>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	
	
	
</body>
</html>






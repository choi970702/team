<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div>
			<%--로고 --%>
			<img alt="" src="">
			<%--menu --%>
			<ul>
				<button value="" onclick="">시작하기</button>
				<button value="" onclick="">가이드</button>
				<button value="" onclick="">문의 / 공지</button>
			<%--login/pw --%>
				<a href="">로그인</a>
				<a href="">마이페이지</a>
			</ul>
		</div>
		<div>
			<%--중앙 가이드, 시작하기 --%>
			<img alt="" src="">
		</div>
		<div>
			<img name="img1" alt="" src=""> 
			<img name="img2" alt="" src="">
			<img name="img3" alt="" src=""> 
			<img name="img4" alt="" src="">
			<img name="img5" alt="" src="">

			<%--가이드이미지 --%>
			<div id="img1" class="box">
				<img alt="" src="../img/dark.gif">
			</div>
			<div id="img2" class="box">
				<img alt="" src="../img/light.gif">
			</div>
			<div id="img3" class="box">
				<img alt="" src="../img/pic1.jpg">
			</div>
			<div id="img4" class="box">
				<img alt="" src="../img/pic2.jpg">
			</div>
			<div id="img5" class="box">
				<img alt="" src="../img/pic3.jpg">
			</div>
			<div id="box3" class="box" style="background-color: blue;">BOX3</div>
			<%--버튼 --%>
			<div id="btn">
				<button onclick="setOne()">1</button>
				<button onclick="setTwo()">2</button>
				<button onclick="setThree()">3</button>
				<button onclick="setFour()">4</button>
				<button onclick="setFive()">5</button>
				<!-- <button onclick="setGreen()">GREEN</button>
				<button onclick="setBlue()">BLUE</button> -->
			</div>
		</div>
	</div>
	
	
	
</body>
</html>






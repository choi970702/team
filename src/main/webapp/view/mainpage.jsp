<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Document</title>
<style type="text/css">
button {
	width: 15%;
	height: 50px;
	margin: 0px;
}

.btn {
	background-color: wheat;
	text-align: center;
	border: 1px solid wheat;
	position: absolute;
	top: 60%;
}

.b2 {
	background-color: wheat;
	border: 1px solid wheat;
	float: right;
	margin: 200px 10px 10px 10px;
}

.b {
	background-color: wheat;
	border: 1px solid wheat;
	float: left;
	margin: 200px 10px 10px 10px;
}

img {
	width: 100%;
	height: 500px;
}

.box {
	width: 80%;
	height: 500px;
	border: 1px solid black;
	margin: 50px auto;
	text-align: center;
	line-height: 200px;
	font-weight: bold;
	display: none;
	position: relative;
}

#d_id {
	position: relative;
}

#foot {
	background-color: wheat;
	width: 100%;
	height: 100px;
	bottom: 0px;
	font-size: 10px;
	margin-top: 50px;
	padding: 10px;
}
</style>
<script type="text/javascript">
	document.getElementById("img1").style.display = "block";
	document.getElementById("img2").style.display = "none";
	document.getElementById("img3").style.display = "none";
	document.getElementById("img4").style.display = "none";
	document.getElementById("img5").style.display = "none";
	var t = 1;
	var b = 2;
	var a = 5;
	function be() {
		t--;
		b--;
		a--;
		if (t < 1) {
			t = 5;
		}
		if (b < 1) {
			b = 5;
		}
		if (a < 1) {
			a = 5;
		}
		document.getElementById("img" + t).style.display = "block";
		document.getElementById("img" + b).style.display = "none";
	}
	function af() {
		t++;
		b++;
		a++;
		if (t > 5) {
			t = 1;
		}
		if (b > 5) {
			b = 1;
		}
		if (a > 5) {
			a = 1;
		}
		document.getElementById("img" + t).style.display = "block";
		document.getElementById("img" + a).style.display = "none";
	}
</script>
</head>
<body>
	<div>
		<%--중앙 가이드, 시작하기 --%>
		<div id="d_id">
			<img alt="" src="">
		</div>
		<div>
			<button class="btn" style="margin-left: 2%;" onclick="navClick('login.jsp')">시작하기</button>
			<button class="btn" style="margin-left: 20%;" onclick="navClick('guide.jsp')">가이드</button>
		</div>
		<div>

			<%--가이드이미지 --%>
			<div>
				<button class="b" style="width: 5%;" name="before"
					onclick="be(this.form)"><<</button>
				<button class="b2" style="width: 5%;" name="after"
					onclick="af(this.form)">>></button>
				<div id="img1" class="box">
					<img alt=".." src="../img/dark.gif" onclick="navClick('guide.jsp')">
				</div>
				<div id="img2" class="box">
					<img alt=".." src="../img/light.gif"
						onclick="navClick('guide.jsp')">
				</div>
				<div id="img3" class="box">
					<img alt="" src="../img/pic1.jpg" onclick="navClick('guide.jsp')">
				</div>
				<div id="img4" class="box">
					<img alt="" src="../img/pic2.jpg" onclick="navClick('guide.jsp')">
				</div>
				<div id="img5" class="box">
					<img alt="" src="../img/pic3.jpg" onclick="navClick('guide.jsp')">
				</div>
			</div>
		</div>
		<div>
			<footer id="foot">footer정보</footer>
		</div>
	</div>
	<script>
		function navClick(loadUrl) {
			$("#content").load(loadUrl);
		}
	</script>
</body>
</html>
</html>
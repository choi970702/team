<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
    <style type="text/css">
    .box 
	{
	width: 400px;
	height: 200px;
	border: 1px solid black;
	margin: auto;
	text-align: center;
	line-height: 200px;
	color: white;
	font-weight: bold;
	display: none;
	position : relative;
	}

	button 
	{
	width: 20%;
	height: 50px;
	margin: 0px;
	}
	.b2
	{
		position: absolute;
		top: 400px;
		right: 150px;
	}
	.b
	{
		position: absolute;
		top: 400px;
		left: 150px;
	}
	img
	{	
		width: auto;
		height: 200px;
	}
	</style>
    <script type="text/javascript">
    document.getElementById("img1").style.display="block";
	document.getElementById("img2").style.display="none";
	document.getElementById("img3").style.display="none";
	document.getElementById("img4").style.display="none";
	document.getElementById("img5").style.display="none";
    var t = 1;
    var b = 2;
    var a = 5;
    function be() 
    {
    	document.getElementById("img"+t).style.display="block";
    	document.getElementById("img"+i).style.display="none";
    	t--;
    	i--;
		if(t < 1)
		{
			t = 5;
		}
		if (i < 1) 
		{
			t = 5;
		}
	}
    function af() 
    {
    	document.getElementById("img"+t).style.display="block";
    	document.getElementById("img"+a).style.display="none";
    	t++;
    	a++;
    	if (t > 5) 
    	{
			t = 1;
		}
		if (a > 5) 
		{
			a = 1;
		}
	}
	
	</script>
  </head>
  <body>
   		<div style="width: 100px; margin: auto;">
			<%--중앙 가이드, 시작하기 --%>
			<img alt="" src="../img/dark.gif" onclick="navClick('guide.jsp')">
			
		</div>
		<div>
		
			<%--가이드이미지 --%>
			<div>
				<button class="b" style="width: 5%; margin-top:20px background-color: green;" name="before" onclick="be(this.form)"> << </button>
				<div id="img1" class="box">
					<img alt=".." src="../img/dark.gif" onclick="navClick('guide.jsp')">1
				</div>
				<div id="img2" class="box">
					<img alt=".." src="../img/light.gif" onclick="navClick('guide.jsp')">2
				</div>
				<div id="img3" class="box">
					<img alt="" src="../img/pic1.jpg" onclick="navClick('guide.jsp')">3
				</div>
				<div id="img4" class="box">
					<img alt="" src="../img/pic2.jpg" onclick="navClick('guide.jsp')">4
				</div>
				<div id="img5" class="box">
					<img alt="" src="../img/pic3.jpg" onclick="navClick('guide.jsp')">5
				</div>
				<button class="b2" style="width: 5%;" name="after" onclick="af(this.form)"> >> </button>
			</div>
		</div>

		<script>
      function navClick(loadUrl) 
      {
        $("#content").load(loadUrl);
      }
    </script>
  </body>
</html></html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
    <style type="text/css">
    	div#log
    	{
    		width: 600px;
    		text-align: center;
    		margin: auto;
    		border-collapse: collapse;
    		padding: 20px;
    		font-size: 15pt;
    	}
    	input
    	{
    		padding: 5px;
			margin-top: 30px;
    	}
    	input.in
    	{
			width: 300px;
		}
    </style>
    <script type="text/javascript">
    </script>
  </head>
  <body>
    <div id="log">
    	<fieldset style="height: 300px;">
    		<legend>Login</legend>
    		<form>
    			 ID <input class="in" type="text" name="id" required><br>
    			 PW <input class="in" type="password" name="pw" required><br>
    			 <input type="button" value="Login" onclick="navClick('main.jsp')"><br>
    			 <input type="button" value="카카오 간편회원 가입" onclick="navClick('join.jsp')">
    		</form>
    	</fieldset>
    </div>
    <script>
      function navClick(loadUrl) 
      {
        $("#content").load(loadUrl);
      }
    </script>
  </body>
</html>
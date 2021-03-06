<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.1.1/fullpage.min.css"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.1.1/fullpage.min.js"></script>
    <title>Document</title>
    <style>
      body {
        padding: 0;
        margin: 0;
        margin-top: 10%;
        box-sizing: border-box;
      }
      #header {
        background-color: white;
        position: fixed;
        border: 1px solid black;
        top: 0;
        left: 0;
        height: 10%;
        width: 100%;
        display: flex;
        align-items: center;
        z-index: 6;
      }

      #logo {
        padding-left: 20px;
        text-align: center;
        font-size: 48px;
        width: 10%;
      }
      #nav {
        width: 70%;
        text-align: center;
      }
      #nav > div:hover {
        background-color: bisque;
        opacity: 0.5;
      }
      #nav > div {
        background-color: wheat;
        height: 30px;
        line-height: 30px;
        cursor: pointer;
        width: 25%;
        text-align: center;
        display: inline-block;
      }
      #rightTopBar {
        width: 20%;
        text-align: center;
      }
      #rightTopBar > a {
        padding: 10px;
        text-decoration: none;
        color: black;
      }
      #rightTopBar > a:hover,
      #rightTopBar > a:active {
        text-decoration: none;
        color: black;
      }
      #rightTopBar > a:hover {
        border-bottom: 2px solid salmon;
      }
      #rightTopBar > a:first-child {
        margin-right: 20px;
      }
      #header::after {
        content: "";
        clear: both;
      }
      #content {
        width: 100%;
      }
    </style>
  </head>
  <body>
    <div id="header">
      <h1 id="logo">Logo</h1>
      <div id="nav">
        <div onclick="navClick('mainpage.jsp')">????????????</div>
        <div onclick="navClick('guide.jsp')">?????????</div>
        <div onclick="navClick('qna.jsp')">??????/??????</div>
      </div>
      <div id="rightTopBar">
        <a
          onclick="navClick('login.jsp')"
          href="javascript:void(0);"
          return
          false;
          >?????????</a
        >
        <a
          onclick="navClick('mypage.html')"
          href="javascript:void(0);"
          return
          false;
          >???????????????</a
        >
      </div>
    </div>
    <div id="content"></div>
    <script>
      function navClick(loadUrl) {
        $("#content").load(loadUrl);
      }
    </script>
  </body>
</html>
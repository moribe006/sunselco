<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "javax.servlet.*, javax.servlet.http.*,java.io.*,java.util.*,model.HeroStatusBean, javax.servlet.RequestDispatcher,
 javax.servlet.ServletException,
 javax.servlet.annotation.WebServlet,
 javax.servlet.http.HttpServlet,
 javax.servlet.http.HttpServletRequest,
 javax.servlet.http.HttpServletResponse,
 javax.servlet.http.HttpSession" %>
<%response.setHeader("Pragma","no-cache"); %>
<%response.setHeader("Cache-Control","no-cache"); %>
<%response.setDateHeader("Expires",0); %>
<%
//クッキーの削除
	try{Cookie cookies[] = request.getCookies();
  for ( Cookie cookie : cookies) {
          if ("JSESSIONID".equals(cookie.getName())) {
                  cookie.setMaxAge(0);
                  cookie.setValue("");
                  cookie.setPath("/");
                  response.addCookie(cookie);
   }}}catch(Exception e){
   }
try {
	HttpSession session2 = request.getSession();
	HeroStatusBean hero = (HeroStatusBean)session2.getAttribute("hero");
	if(hero!=null){
	session.invalidate();
	String url = "hero_set.jsp";
    response.sendRedirect(url);

	}}catch(Exception e) {
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>名前入力</title>
<link rel = "stylesheet" type = "text/css" href = "css/heroset.css"/>

	<!--音を出すメソッド（ジャヴァすく）  -->
	<script type="text/javascript">
		function ring() {
			document.getElementById("button_sound").play();
		}
	</script>

</head>
<body>

<!-- BGM -->
<audio autoplay>
<source src="bgm/name.mp3" >
</audio>


	<!--idへ音を設定(src)  -->
    <audio id="button_sound" preload="auto" src="bgm/pi.wav" type="audio/wav">
    </audio>


<div class = "main" >
<form action = "/FOOD_BATTLE/HeroSet"  method = "get">
勇者の名前を決めてください。<br>

<input type = "text"  name= "name" id="name" >

<input class = "nameset"  type = "submit" value= "決定" onclick="ring()">

</form>

</div>
</body>
</html>
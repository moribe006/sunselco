<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean" %>
<%  HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>SUN SELCO FOOD BATTLE</title>
<link rel = "stylesheet" type = "text/css" href = "/FOOD_BATTLE/css/toilet.css"/>
</head>


<body>

<!--音を出すメソッド（ジャヴァすく）  -->
	<script type="text/javascript">
		function ring() {
			document.getElementById("button_sound").play();
		}
	</script>


<!--idへ音を設定(src)  -->
    <audio id="button_sound" preload="auto" src=bgm/pi.wav" type="audio/wav">
    </audio>

	<div class = "toilet">
		<img src = "/FOOD_BATTLE/img/toilet.gif" width = "600" height = "500" alt = "トイレ">

	</div>

	<div class = "explain">
	<p><%=hero.getName() %>は今までにないほど気張って体調が万全になった。</p>

	<audio src="bgm/toilet.mp3" autoplay>
		</audio>
	<form class=button action = map.jsp method="get">
	<input type="submit"  value="もどる"  onclick="ring()">
	</form>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>SUN SELCO FOOD BATTLE</title>
<link rel = "stylesheet" type = "text/css" href = "css/title.css"/>
</head>
<body>

<!--音を出すメソッド（ジャヴァすく）  -->
	<script type="text/javascript">
		function ring() {
			document.getElementById("button_sound").play();
		}
	</script>


<!--idへ音を設定(src)  -->
    <audio id="button_sound" preload="auto" src="bgm/pi.wav" type="audio/wav">
    </audio>

<audio src="bgm/syoten_kessen.mp3" autoplay preload="auto">
</audio>


	<div class = "title">
		<img src= "img/ff.png"  alt ="">

		<a href = "hero_set.jsp"  ><span class="blinking">▶</span>たべる</a>
<!-- 		<form action = "hero_set.jsp" >
		<input type = "submit" value= "▶たべる" > -->
		<!-- </form> -->
	</div>
</body>
</html>
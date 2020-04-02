<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!--idへ音を設定(src)  -->
    <audio id="button_sound" preload="auto" src="bgm/decision2.mp3" type="audio/mp3">
    </audio>


<div class = "main" >
<form action = "/FOOD_BATTLE/HeroSet"  method = "get">
勇者の名前を決めてください。<br>

<input type = "text"  name= "name" id="name" ><br>

<input  type = "submit" value= "決定" onclick="ring()">
</form>

</div>
</body>
</html>
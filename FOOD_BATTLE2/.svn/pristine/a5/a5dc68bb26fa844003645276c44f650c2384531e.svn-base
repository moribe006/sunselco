<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean,model.Enemy" %>
<%  HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero"); %>
<% 	Enemy enemy =(Enemy)session.getAttribute("enemy");	%>
<!DOCTYPE html>
<html style="width: 80px;hight:100px">
<head>
<script src="attack.js"></script>
<script src="eat.js"></script>
<script src="itemList.js"></script>
<script src="run.js"></script>

<meta charset="UTF-8">
<title>BattleCommand(窓)</title>
<link rel = "stylesheet" type = "text/css" href = "css/battlecommand.css">
</head><!-- 誰かＣＳＳのリンク先とか教えてください -->
<body style="width: 400px;height:100px">


	<table style= border:0>
	<tr>
	<!-- style="border:1;width:160px;height:160px" -->
	<td dir="ltr" class="border2">

  <!--元の奴  -->
	<!-- <form action="/FOOD_BATTLE/Battle"  method="get" style="width: 120px ">
	<button type=submit name="name" value="attack" style="width: 100px">戦　う</button>
	</form> -->

	<input type="button" value="戦う"  onclick="attack()">

  <!--元の奴  -->
	<!-- <form action="/FOOD_BATTLE/Battle" name=name id="eat" method="get" style="width: 120px">
	<button type=submit name="name" value="eat"style="width: 100px">食べる</button>
	</form> -->

	<input type="button" value="食べる"  onclick="eat()">

<!-- アイテム画面の作成（ｊｓｐ）リンク先を作成
item.getName(java)    ↓itemName()を代入テスト　所持アイテムリストを取得forで回す　
 -->

  <!--元の奴  -->
	<!-- <form action="BattleItem.jsp"  style="width: 120px">
	<button type=submit name="name" value="item"style="width: 100px">アイテム</button>
	</form> -->

    <input type="button" value="アイテム"  onclick="itemList()">

  <!--元の奴  -->
	<!-- <form action="/FOOD_BATTLE/Battle"  method="get" style="width: 120px">
	<button type=submit name="name" value="run" style="width: 100px">逃げる</button>
	</form> -->

	<input type="button" value="逃げる"  onclick="run()">

	</td>

	<!--  dir="ltr" class="border2"style="border:1;width:160px;height:170px" -->
	 <td class="border2" style="width:530px;height:170px;position:center">
	<!-- <iframe src="BattleCommand.jsp"class="border2" style="width:150px;height:160px;position:center">
	</iframe></td> -->
	<table class=border style="border:0;width:400x;height:120px">
	<tr class=border>
	<td style="width: 350px; height: 120px;" style="border:0">

	<p id="coment"></p>

	test出力です。テキストはここへtesttestesttesttesttesttesttesttesttesttesttestttesttest<br>


	<!--  <td dir="ltr"style="border:1;width:450px;height:200px">-->
	<!-- <iframe src="BattleText.jsp"class="border2" style="width:530px;height:170px;position:center"> -->
	<!-- class="border2" style="width:530px;height:170px;position:center" -->
	<!-- </iframe> -->
	</td>
	</tr>
	</table>

</body>
</html>

<!--下てすっとよう
------------------------ -->

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean" %>
<%  HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BattleCommand(窓)</title>
<link rel = "stylesheet" type = "text/css" href = "css/toilet.css">
</head><!-- 誰かＣＳＳのリンク先とか教えてください -->
<body>
<form action="/FOOD_BATTLE/Battle" name=attack id=name method="get">
<input type=submit value=戦う>
</form>
<form action="/FOOD_BATTLE/Battle" name=eat id=name method="get">
<input type=submit value=食べる>
</form>
<!--アイテム画面の作成（ｊｓｐ）リンク先を作成  -->
<!-- item.getName(java)    ↓itemName()を代入テスト　所持アイテムリストを取得forで回す　-->
<form action="BattleItem.jsp">
<input type=submit value=アイテム>
</form>

<form action="/FOOD_BATTLE/Battle" name=run value="run" id=name method="get">
<input type=submit value=逃げる>
</form>
</body>
</html> --%>
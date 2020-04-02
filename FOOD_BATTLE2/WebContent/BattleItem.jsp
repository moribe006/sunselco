<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean" %>
<%@ page import = "model.ItemBean" %>
<%  HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" type = "text/css" href = "css/battlecommand.css"/>
<title>アイテム使用画面</title>
</head>
<body>

<%if(hero.getPersonal_belogingsList()==null||hero.getPersonal_belogingsList().size()==0){ %>
所持品(アイテム)は何もない
<form action="BattleCommand.jsp">
<input type="submit"value=戻る>
</form>
<% %>
<%}else{ %>
<table>
<%for(ItemBean item:hero.getPersonal_belogingsList()){ %>
<!-- どうすれば・・・ -->
<tr><td>
<form action="/FOOD_BATTLE/Battle"  method="get">
<button type=submit name="name" value=<%=item.getName()%>>食べる</button><br>
</form>
</td></tr>
</table>
<%}}%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.HeroStatusBean,model.ItemBean"%>
<%HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");%>
<% %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>アイテム一覧</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<link rel = "stylesheet" type = "text/css" href = "css/List.css"/>
</head>
<body>
アイテム一覧
<table>
<tr><th>所持アイテム名</th><th>HP回復量</th><th>MP回復量</th><th>所持数</th></tr>
<% for(ItemBean item :hero.getPersonal_belogingsList()){ %>
<%if(item.getHave()>0){%>
<tr>
<td>
<%=item.getName() %>
</td>
<td><%=item.getItemHp()%></td><td><%=item.getItemMp()%></td><td><%=item.getHave() %></td>
<td><form action="/FOOD_BATTLE/Heal" method="get">
<button class=button  type=submit name=name value=<%=item.getName() %>>使用</button>
</form>
</td>
</tr>
<% }} %>
</table>
使用したいアイテムを選んでください。
<form class=button action = map.jsp method="get">
<button type=submit class=back >戻る</button>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.HeroStatusBean,model.WeaponBean,java.util.List"%>
<% HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");%>
<%-- <%
WeaponBean weapon = (WeaponBean)session.getAttribute("weapon");
List<WeaponBean> Personal_equipment = (List<WeaponBean>)request.getAttribute("Personal_equipment");
%> --%><!--↑たぶんこのＬｉｓｔ使わなくて大丈夫です 。データベースからのデータが入ってるやつですので・・・ -->
	<!-- ↑WeaponBeanクラスのインポートが必要かもしれないです。 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>武器一覧</title>
<link rel = "stylesheet" type = "text/css" href = "css/List.css"/>
</head>
<body>
武器一覧	<!--WeaponBean型の 変数で行けます	↓hero.getPersonal_equipment()で主人公の所持装備品（ＬＩＳＴ）返ってきます-->
現在の装備：<%=hero.getEquipmentName() %>
<table>
<tr><th>武器名</th><th>攻撃力</th><th>食欲力</th><th>所持</th></tr>
<% for(WeaponBean wlist : hero.getPersonal_equipmentList()){ %>
<% if(wlist.getPersonal()){%>
<tr><td><%=wlist.getName() %></td><td><%=wlist.getPower() %></td><td><%=wlist.getHungry() %></td><td><%=wlist.isPersonal() %></td>
<td>
<form action="/FOOD_BATTLE/Weapon" method="get">
<button class=button type=submit name=name value=<%=wlist.getName() %>>装備</button>
</form>
</td></tr>
<% }} %>
<tr><td>装備なし</td><td>0</td><td>0</td><td>  </td>
<td>
<form action="/FOOD_BATTLE/Weapon" method="get">
<button class=button type=submit name=name value=nasi>装備を外す</button>
</form>
</td><tr>
</table>
装備を選択してください
<form class=button action = map.jsp method="get">
<button type=submit class=button style="width: 178px; ">戻る</button>
</form>
</body>
</html>
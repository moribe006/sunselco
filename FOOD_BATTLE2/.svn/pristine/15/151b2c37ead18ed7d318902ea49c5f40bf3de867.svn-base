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
<script src="itemList.js"></script>
<link rel = "stylesheet" type = "text/css" href = "css/List.css"/>
</head>
<body>
アイテム一覧
所持アイテム名 所持数<br>

<!-- アイテム収納する配列 -->
<% String[][] getitem = new String[3][3];
   String[][] gethpmp = new String[3][3];
   int i = 0;
   int k = 0;%>

<!-- 所持しているアイテムの情報をforで回して、配列に格納 -->
 <% for(ItemBean item :hero.getPersonal_belogingsList()){ %>
   <%getitem[0][i] = item.getName();
	 getitem[1][i] = String.valueOf(item.getHave());
	 gethpmp[0][k] = String.valueOf(item.getItemHp());
	 gethpmp[1][k] = String.valueOf(item.getItemMp());
	 k++;
	 i++;%>
<% } %>

<!-- javascriptで使用するためにidを定義 -->
<p id =kname><%= getitem[0][0] %></p><p id= knumber><%= getitem[1][0] %></p> <p id= khp><%= gethpmp[0][0]%></p> <p id= kmp><%= gethpmp[1][0]%></p>
<p id =iname><%=getitem[0][1] %></p> <p id =inumber><%= getitem[1][1] %></p> <p id =ihp><%= gethpmp[0][1]%></p> <p id =imp><%= gethpmp[1][1]%></p>
<p id =qname><%= getitem[0][2] %></p> <p id =qnumber><%= getitem[1][2] %></p> <p id =qhp><%= gethpmp[0][2]%></p> <p id =qmp><%= gethpmp[1][2]%></p>


使用したいアイテムを選んでください。



</body>
</html>
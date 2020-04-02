<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean, model.Enemy" %>
<%  HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero"); %>
<%  Enemy enemy = (Enemy)session.getAttribute("enemy");%>
<!DOCTYPE html>
<html>
<head>
<script src = "eat.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String hName = hero.getName(); %>
<% int hHungry = hero.getHungry(); %>
<% String eName = enemy.getName(); %>
<% int eHp = enemy.getHp(); %>
敵の名前：<p id = eNameid><%= eName %></p>
敵のHP：<p id = eHpid><%= eHp %></p>
<p id = comment1></p>
<p id = comment2></p>
<p id = comment3></p>
<p id = comment4></p>
</body>
</html>
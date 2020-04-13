<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean,model.Enemy,model.ManEnemyBean,model.FoodEnemyBean,model.ItemBean" %>
<%  HeroStatusBean sessionhero = (HeroStatusBean)session.getAttribute("hero"); %>
<%  HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");%>
<% Enemy getEnemy = (Enemy)session.getAttribute("enemy");%>

<%String a="おばちゃん"; %>


<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>SUN SELCO FOOD BATTLE</title>
<script src="bossattack.js"></script>
<script src="bossnotattack.js"></script>
<script src="bosseat.js"></script>
<script src="bossnoteat.js"></script>
<script src="bossitemList.js"></script>
<script src="bossrun.js"></script>
<link rel = "stylesheet" type = "text/css" href = "css/battlemain.css"/>
</head>
<body>
	<!-- ここに敵の情報とヒーローの情報？ヘッダー？出力 -->
	<%if(getEnemy.getName().equals("おばちゃん")){ %>
	<audio src="bgm/abarenbouOP.mp3" autoplay>
		</audio>
	<%}else if(getEnemy.getName().equals("おばちゃん")){ %>
	<audio src="bgm/abarenbouOP.mp3" autoplay>
			</audio>
	<%} %>

	<%Enemy enemyDetermine=getEnemy; %>


<div class="picture">

     <!-- 敵の名前とHP -->
     <table class="e">
     <tr>
     <td class = "enamesel">名前:</td>
     <td id="eName"><%=getEnemy.getName()%></td>
     </tr>
     <tr>
     <td class = "ehpsel">ＨＰ:</td>
     <td id="eHpid"><%=getEnemy.getHp()%></td>
     </tr>
     </table>
     <p id="eAttack" hidden="hidden"><%=getEnemy.getPower() %></p>
     <p id="DropItem" hidden><%=getEnemy.getDropItem() %></p>
     <p id="eKcal" hidden="hidden"><%=getEnemy.getKcal() %></p>

	<!-- ↓imgで敵の画像を出力 　敵の判別したものをimg変数で回さねばならぬ・・・-->
	<%if(enemyDetermine.getName().equals("美人")){ %>
	<img  src = "img/美人.jfif"  alt = "美人">

    <%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<img  src = "img/yubaba.jpg"  alt = "おばちゃん">

	<%}else if(enemyDetermine.getName().equals("39カレー")){ %>
	<img  src = "img/Curry.png" alt = "39">

	<%}else if(enemyDetermine.getName().equals("ぺぺ")){ %>
	<img  src = "img/ペペ.gif" alt = "ibees">

	<%}else if(enemyDetermine.getName().equals("ドン")){ %>
	<img  src = "img/don.jpg" alt = "ドン">

	<%}else if(enemyDetermine.getName().equals("帝王")){ %>
	<img  src = "img/ラーメン1.gif" alt = "ラーメン">

	<%}else if(enemyDetermine.getName().equals("鹿店主")){ %>
	<img  src = "img/鹿.gif" alt = "鹿店主">

	<%}else if(enemyDetermine.getName().equals("鯛の大将")){ %>
	<img  id="e_img" src = "img/noboru.gif" alt = "鯛の大将">
	<audio src="bgm/boss.mp3" autoplay>
			</audio>


	<%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<%}else if(enemyDetermine.getName().equals("おばちゃん")){ %>
	<%} %>

 </div>


<!-- ヒーローの名前とHP -->
<div class="y">
 <img  id="y_img" src = "img/hero.png"  alt = "勇者">
<table class="h">
<tr>
<td class = "hnamesel">名前:</td>
<td id="hName"><%= sessionhero.getName()%></td>
</tr>
<tr>
<td class = "hhpsel">ＨＰ:</td>
<td id="hHpid" class ="hHpid"><%= sessionhero.getHp()%></td>
<td class = "hmpsel">ＭＰ:</td>
<td id="hMpid"><%= sessionhero.getMp()%></td>
</tr>
</table>
<p id="hAttack" hidden="hidden"><%= sessionhero.getPower() %></p>
<p id="hHungry" hidden="hidden"><%= sessionhero.getHungry() %></p>

</div>

<!------------------------ コマンドとテキスト表示 ----------------------------->

<div class = "outline">
	<div class = "comand">
		<ul>
			<li><% if(getEnemy instanceof ManEnemyBean){ %><input id="attackBt" type="button" value="戦う"  onclick="return attack()">
			<%}else{%><input id="notattackBt" type="button" value="戦う"  onclick="return notattack()"><% } %></li>
			<li><% if(getEnemy instanceof FoodEnemyBean){ %><input id="eatBt" type="button" value="食べる"  onclick="return eat()">
			<%}else{%><input id="noteatBt" type="button" value="食べる"  onclick="return noteat()"><% } %></li>
    		<li><input id="itemBt" type="button" value="アイテム"  onclick="return itemList()"></li>
			<li><input id="runBt" type="button" value="逃げる"  onclick="return run()"></li>
		</ul>
	</div>
	<div class = "text">
	<p id="comment">どうする？</p>

	</div>
</div>


<!-------------------------アイテムリストで使用する---------------------------->

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
	 //配列に番号をつけるために++を使ってループごとに値を増やす
	 i++;
	 k++;%>
<% } %>

<!-- javascriptで使用するためにidを定義 kname=傷薬 iname=胃薬 qname=謎の液体-->
<p id =kname hidden><%= getitem[0][0] %></p><p id= knumber hidden><%= getitem[1][0] %></p> <p id= khp hidden><%= gethpmp[0][0]%></p> <p id= kmp hidden><%= gethpmp[1][0]%></p>
<p id =iname hidden><%=getitem[0][1] %></p> <p id =inumber hidden><%= getitem[1][1] %></p> <p id =ihp hidden><%= gethpmp[0][1]%></p> <p id =imp hidden><%= gethpmp[1][1]%></p>
<p id =qname hidden><%= getitem[0][2] %></p> <p id =qnumber hidden><%= getitem[1][2] %></p> <p id =qhp hidden><%= gethpmp[0][2]%></p> <p id =qmp hidden><%= gethpmp[1][2]%></p>





</body>
</html>
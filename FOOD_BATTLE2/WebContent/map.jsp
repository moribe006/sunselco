<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean,java.util.List ,model.Enemy,model.FoodEnemyBean,model.ManEnemyBean" %>
<%HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");%>
<%List<FoodEnemyBean> foodEnemyList =(List<FoodEnemyBean>)session.getAttribute("foodEnemyList");%>
<%List<ManEnemyBean> manEnemyList = (List<ManEnemyBean>)session.getAttribute("manEnemyList");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>マップ</title>
<link rel = "stylesheet" type = "text/css" href = "css/map.css"/>
</head>
<body>
<table class=border3>
<tr><td style="width: 236px; ">
<!-- 主人公データ -->
<table class=border4 style="width: 224px; ">
<tr><td>名前：<%=hero.getName() %></td></tr>
<tr><td>ＨＰ：<%=hero.getHp() %>/<%=hero.getMaxhp() %></td></tr>
<tr><td>ＭＰ：<%=hero.getMp() %>/100</td></tr>
<tr><td>装備：<%=hero.getEquipmentName() %></td></tr>
<tr><td>攻撃力/食欲：<%=hero.getPower() %>/<%=hero.getHungry() %></td></tr>
</table>
</td> <!-- 画像出力 -->
<td style="width: 888px; "><img src="/FOOD_BATTLE/img/yusya.jpg" class=img alt="主人公">
</td>
<td>
</td>
</tr>
</table>

<table class=border1>
<tr>
<td>
<table style=margin-left:auto;margin-right:auto;>
<tr>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(ManEnemyBean m1:manEnemyList){ %>
			 <%for(FoodEnemyBean f1:foodEnemyList){ %>
				<%if((f1.getName().equals("地獄キーマカレー")&&f1.getHp()>0)||(m1.getName().equals("帝王")&&m1.getHp()>0)){%>
				<button class=buttonwait type=submit name="name"  style="width: 220px">ビック鯛はのぼる</button>
				<%break loop;}}}%>

		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
			<%if((f.getName().equals("地獄キーマカレー")&&f.getHp()==0)&&(m.getName().equals("帝王")&&m.getHp()==0)){ %>
				<!-- ラスボス -->
				<%for(FoodEnemyBean f2:foodEnemyList){ %>
				<%if(f2.getName().equals("生姜焼き定食")&&f2.getHp()>0){ %>
				<form action="texthtml/bigtaihanoboru.html" style="width: 220px; ">
				<button class=button2 type=submit name="name"  style="width: 220px">ビック鯛はのぼる(FOOD)</button>
				</form>
				<%break loop;}}}}}%>

				<%for(FoodEnemyBean f2:foodEnemyList){%>
				<%if(f2.getName().equals("生姜焼き定食")&&f2.getHp()==0){%>
				<form  action="texthtml/bigtaihanoboru2.html" style="width: 220px">
				<button class=button2 type=submit name="name"  style="width: 220px">ビック鯛はのぼる(MAN)</button>
				</form>
				<%break loop;}}}%>
</td>
<td></td>
</tr>
</table>


<tr><td>
<table style=margin-left:auto;margin-right:auto;>
<tr>
<tr>
<td>
<table class=border2>
<tr>
<td ></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%if(m.getName().equals("帝王")&&m.getHp()==0){ %>
		<button class=buttonend type=submit name="name">閉店</button>
		<%break loop;}} %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%if((m.getName().equals("ドン")&&m.getHp()==0)&&(f.getName().equals("スープパスタ")&&f.getHp()==0)){ %>
		<form action="texthtml/ra-menteikoku.html" >
		<button class=button2 type=submit name="name">ラーメン帝国</button>
		</form>
		<%break loop;}}} %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if((m.getName().equals("ドン")&&m.getHp()>=0)||(f.getName().equals("スープパスタ")&&f.getHp()>=0)){%>
			<button class=buttonwait type=submit name="name" >ラーメン帝国</button>
			<%break loop; }}}	}%>
			<!--中ボス -->
</td></tr>
<tr><td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%if((m.getName().equals("鹿店主")&&m.getHp()==0)&&(f.getName().equals("スープパスタ")&&f.getHp()>0)){ %>
			<form action="texthtml/cafebamp.html" >
			<button class=button2 type=submit name="name">Cafe BAMP</button>
			</form>
			<%break loop;}}}%>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("スープパスタ")&&f.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}}%>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("鹿店主")&&m.getHp()>0){%>
			<button class=buttonwait type=submit name="name" >Cafe BAMP</button>
			<%break loop;}}}%>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%if((f.getName().equals("海鮮丼")&&f.getHp()==0)&&(m.getName().equals("ドン")&&m.getHp()>0)){ %>
			<form action="texthtml/ittyoumenodon.html" >
			<button class=button2 type=submit name="name">一丁目のドン</button>
			</form>
			<%break loop;}}} %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("ドン")&&m.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}} %>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("海鮮丼")&&f.getHp()>0){%>
			<button class=buttonwait type=submit name="name">一丁目のドン</button>
			<%break loop;}}}%>
</td></tr>
<tr><td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%for(ManEnemyBean m2:manEnemyList){ %>
		<%if((m.getName().equals("おばちゃん")&&m.getHp()==0)&&(m2.getName().equals("鹿店主")&&m2.getHp()>0)){ %>
			<form action="texthtml/sikasyokudou.html" >
			<button class=button2 type=submit name="name">鹿食堂</button>
			</form>
			<%break loop;}}} %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("鹿店主")&&m.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}} %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("おばちゃん")&&m.getHp()>0){%>
			<button class=buttonwait type=submit name="name" >鹿食堂</button>
			<%break loop;}}}%>
</td>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%if((m.getName().equals("おばちゃん")&&m.getHp()==0)&&(f.getName().equals("海鮮丼")&&f.getHp()>0)){ %>
			<form action="texthtml/tyoutyou.html" >
			<button class=button2 type=submit name="name">寵兆</button>
			</form>
			<%break loop;}}} %>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("海鮮丼")&&f.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}} %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("おばちゃん")&&m.getHp()>0){%>
			<button class=buttonwait type=submit name="name" >寵兆</button>
			<%break loop;}}}%>
</td>
</tr>
<tr>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%if(m.getName().equals("おばちゃん")&&m.getHp()>0){ %>
			<form action="texthtml/tonsyan.html" >
			<button class=button2 type=submit name="name">とんしゃん</button>
			</form>
			<%break loop;}}%>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("おばちゃん")&&m.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}}}%>
</td>
</tr>
</table>

</td>
<td>　　　　　　</td>

<td>
<table class=border2>
<tr>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("地獄キーマカレー")&&f.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
   	   		<%break loop;}} %>
   	   		<%for(ManEnemyBean m:manEnemyList){ %>
	 		<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if((f.getName().equals("豚マニ丼")&&f.getHp()==0)&&(m.getName().equals("美人")&&m.getHp()==0)){ %>
			<%for(FoodEnemyBean f2:foodEnemyList){ %>
			<%if(f2.getName().equals("地獄キーマカレー")&&f2.getHp()>0){ %>
			<form action="texthtml/namasutedou.html" >
			<button class=button2 type=submit name="name">ナマステ堂</button>
			</form>
			<%break loop;}}}}}%>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if((f.getName().equals("豚マニ丼")&&f.getHp()>0)||(m.getName().equals("美人")&&m.getHp()>0)){%>
			<button class=buttonwait type=submit name="name" >ナマステ堂</button>
			<%break loop;}}}  }%>
			<!--中ボス  -->
</td>
</tr>
<tr>
<td>
<%loop:for(int i=0;i<1;i++){ %>
	<%for(FoodEnemyBean f:foodEnemyList){ %>
	<%for(ManEnemyBean m:manEnemyList){ %>
		<%if((m.getName().equals("ぺぺ")&&m.getHp()==0)&&(f.getName().equals("豚マニ丼")&&f.getHp()>0)){ %>
			<form action="texthtml/butamani.html" >
			<button class=button2 type=submit name="name">豚マニ</button>
			</form>
			<%break loop;}}} %>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("豚マニ丼")&&f.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}} %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("ぺぺ")&&m.getHp()>0){%>
			<button class=buttonwait type=submit name="name" >豚マニ</button>
			<%break loop;}}}%>
</td>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%if((f.getName().equals("やきそば")&&f.getHp()==0)&&(m.getName().equals("美人")&&m.getHp()>0)){ %>
			<form action="texthtml/charry.html" >
			<button class=button2 type=submit name="name">チャーリ</button>
			</form>
			<%break loop;}}} %>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("美人")&&m.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}} %>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("やきそば")&&f.getHp()>0){%>
			<button class=buttonwait type=submit name="name" >チャーリ</button>
			<%break loop;}}}%>
</td>
</tr>
<tr>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(ManEnemyBean m:manEnemyList){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%if((f.getName().equals("39カレー")&&f.getHp()==0)&&(m.getName().equals("ぺぺ")&&m.getHp()>0)){ %>
			<form action="texthtml/ibees.html" >
			<button class=button2 type=submit name="name">iBEES</button>
			</form>
			<%break loop;}}}%>
			<%for(ManEnemyBean m:manEnemyList){ %>
			<%if(m.getName().equals("ぺぺ")&&m.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}}%>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("39カレー")&&f.getHp()>0){%>
			<button class=buttonwait type=submit name="name" >iBEES</button>
			<%break loop;}}}%>
</td>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%for(FoodEnemyBean f2:foodEnemyList){ %>
		<%if((f.getName().equals("39カレー")&&f.getHp()==0)&&(f2.getName().equals("やきそば")&&f2.getHp()>0)){ %>
			<form action="texthtml/ryuuen.html" >
			<button class=button2 type=submit name="name">龍苑</button>
			</form>
			<%break loop;}}} %>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("やきそば")&&f.getHp()==0){ %>
			<button class=buttonend type=submit name="name">閉店</button>
			<%break loop;}}%>
			<%for(FoodEnemyBean f:foodEnemyList){ %>
			<%if(f.getName().equals("39カレー")&&f.getHp()>0){%>
			<button class=buttonwait type=submit name="name" >龍苑</button>
			<%break loop;}}}%>
</td>
<tr>
<td></td>
<td>
<%loop:for(int i=0;i<1;i++){ %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%if(f.getName().equals("39カレー")&&f.getHp()>0){ %>
		<form action="texthtml/39curry.html" >
		<button class=button2 type=submit name="name">39カレー</button>
		</form>
		<%break loop;}} %>
		<%for(FoodEnemyBean f:foodEnemyList){ %>
		<%if(f.getName().equals("39カレー")&&f.getHp()==0){ %>
		<button class=buttonend type=submit name="name">閉店</button>
		<%break loop;}}}%>
</td>
</tr>
</table>
</table>
</table>



<table class=border1 >
<tr><td>
<!--text一覧  -->
行動を選択してください<br>
<button class=button3 type=submit disabled >営業中</button>
<button class=buttonwait type=submit disabled >OPEN前</button>
<button class=buttonend type=submit disabled >閉店</button><br>
<br>
<br>
<!--テキスト下部  -->
※トイレでは回復を行います。(HPをMAX：MPを0へ)<br>
※MPは100になると死亡してしまいます。(こまめにトイレに駆け込んでください。)<br>
※所持アイテム一覧ではアイテムの使用ができます。<br>
※所持装備一覧では装備が選択できます。<br>


<table>
<tr>
<td></td>
<td>
<table>
<tr><td>

<!-- コマンド一覧 -->
<form action="Toilet"  method="get">
<button class=button1 type=submit name="name" style="width: 120px">トイレ(回復)</button>
</form>
</td>
<td>
<form action="itemList.jsp" >
<button class=button1 type=submit name="name" value="item"style="width: 150px">所持アイテム一覧</button>
</form>
</td>
<td>
<form action="weaponList.jsp" >
<button class=button1 type=submit name="name" value="Equipment"style="width: 150px">所持装備一覧</button>
</form>
</td>
</tr>
</table>
</td>
</tr>
</table>


</td></tr>
</table>

</body>
</html>
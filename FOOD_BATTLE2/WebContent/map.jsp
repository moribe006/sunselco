<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.HeroStatusBean,java.util.List ,model.Enemy,model.FoodEnemyBean,model.ManEnemyBean" %>
<%HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");%>
<%List<FoodEnemyBean> foodEnemyList =(List<FoodEnemyBean>)session.getAttribute("foodEnemyList");%>
<%List<ManEnemyBean> manEnemyList = (List<ManEnemyBean>)session.getAttribute("manEnemyList");%>
<!--キャッシュ破棄  -->
<%@ page import = "javax.servlet.*, javax.servlet.http.*,java.io.*,java.util.*" %>
<%response.setHeader("Pragma","no-cache"); %>
<%response.setHeader("Cache-Control","no-cache"); %>
<%response.setDateHeader("Expires",0); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<title>マップ</title>
<link rel = "stylesheet" type = "text/css" href = "css/map.css"/>
</head>
<body>

<audio src="bgm/map.mp3" autoplay></audio>

<div class =status>
<img src="/FOOD_BATTLE/img/hero.png" class=img alt="主人公" >
<div class =statusalea>
	<ul>
		<li>名前：<%=hero.getName() %></li>
		<li class=hp>ＨＰ：<%=hero.getHp() %>/<%=hero.getMaxhp() %></li>
		<li>ＭＰ：<%=hero.getMp() %>/100</li>
		<li class=weapon>装備：<%=hero.getEquipmentName() %></li>
		<li>攻撃力/食欲：<%=hero.getPower() %>/<%=hero.getHungry() %></li>

	</ul>
</div>

</div>

<!--------------------------------------------------------------------------------------------------------->


<div class = bossmap>
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
</div>

<!-- ------------------------------------------------------------------------------------------------- -->

<div class=map>
<div class = leftmap>
<div class = teikoku>
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
</div>

<div class=cafe>
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
</div>

<div class=don>
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
</div>

<div class=sika>
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
</div>


<div class=tyou>
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
</div>

<div class=ton>
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
</div>
</div>


<!-- ------------------------------------------------------------------------------------------------- -->


<div class = rightmap>

<div class = namasute>
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
</div>


<div class = buta>
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
</div>

<div class = tyari>
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
</div>


<div class = ibees>
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
</div>

<div class = ryu>
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
</div>

<div class = carry>
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
</div>
</div>
</div>


<!--------------------------------------------------------------------------------------------------------->


<div class = textalea>
<!--text一覧  -->
行動を選択してください<br>
<button class=button3 type=submit disabled >営業中</button>
<button class= wait type=submit disabled >OPEN前</button>
<button class=end type=submit disabled >閉店</button><br>
<br>
<br>

<div class= slectalea>
<!--テキスト下部  -->
※トイレでは回復を行います。(HPをMAX：MPを0へ)<br>
※ＨＰは0、ＭＰは100になると死亡してしまいます。(こまめにトイレに駆け込んでください。)<br>


<div class = listbutton>
<!-- コマンド一覧 -->
<form action="Toilet"  method="get">
<button class=lowbutton type=submit name="name" >トイレ(回復)</button>
</form>
<form action="itemList.jsp" >
<button class=lowbutton type=submit name="name" value="item">アイテム一覧</button>
</form>
<form action="weaponList.jsp" >
<button class=lowbutton type=submit name="name" value="Equipment">装備一覧</button>
</form>
</div>
</div>

</div>





</body>
</html>
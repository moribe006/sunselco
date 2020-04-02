function run(){
		var eHp = document.getElementById("eHpid").textContent;
        var hHp = document.getElementById("hHpid").textContent;
        var hMp = document.getElementById("hMpid").textContent;

		var knumber = document.getElementById("knumber").textContent;
		var inumber = document.getElementById("inumber").textContent;
		var qnumber = document.getElementById("qnumber").textContent;
        var rr = [hHp,hMp,knumber,inumber,qnumber];

        //ボタンを取得して変数に代入
        var attackBt = document.getElementById("attackBt");
		var notattackBt = document.getElementById("notattackBt");
		var itemBt = document.getElementById("itemBt");
		var runBt = document.getElementById("runBt");
		var eatBt = document.getElementById("eatBt");
		var noteatBt = document.getElementById("noteatBt");

		//人型の場合はeAttackの攻撃力を取得、フード型の場合はeKcalの値を取得
		var eAttack = document.getElementById("eAttack").textContent;
		var eKcal = document.getElementById("eKcal").textContent;


		//逃げる成功文字と、マップに戻るをinnerHtmlで表示
		document.getElementById('comment').innerHTML = '食い逃げに成功した'+
		'<form action="/FOOD_BATTLE/Run" method="get"><button type="submit"  name="hp" value= '+ rr +' >"マップ戻る"</button></form>';
		setTimeout(() => {
			document.getElementById("y_img").style.visibility = "hidden";
		}, 200);

		//人型かフード型の判定を攻撃力を持っているかいないかで判別
		if(Number(eAttack) > 0){
			attackBt.disabled = true;
			noteatBt.disabled = true;
			itemBt.disabled = true;
		}else if(Number(eKcal) > 0){
			notattackBt.disabled = true;
			eatBt.disabled = true;
			itemBt.disabled = true
		}



}
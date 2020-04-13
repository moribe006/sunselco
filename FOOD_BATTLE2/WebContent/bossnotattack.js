function notattack(){

		var eName = document.getElementById("eName").textContent;
		var hName = document.getElementById("hName").textContent;
		var eHp = document.getElementById("eHpid").textContent;
		var hHp = document.getElementById("hHpid").textContent;
		var hMp = document.getElementById("hMpid").textContent;
		var hAttack =  document.getElementById("hAttack").textContent;
		var eAttack = document.getElementById("eAttack").textContent;
		var hHungry =  document.getElementById("hHungry").textContent;
		var eKcal = document.getElementById("eKcal").textContent;
		var notattackBt = document.getElementById("notattackBt");
		var eatBt = document.getElementById("eatBt");
		var itemBt = document.getElementById("itemBt");
		var runBt = document.getElementById("runBt");
		var music1 = new Audio("bgm/miss.mp3");
		var music2 = new Audio("bgm/punch-stop1.mp3");

		var randomH = Math.floor((Math.random()*5)+8)/10;
		var randomE = Math.floor((Math.random()*5)+8)/10;

//			操作中ボタンを無効
			notattackBt.disabled = true;
			eatBt.disabled = true;
			itemBt.disabled = true;
			runBt.disabled = true;

			document.getElementById('comment').innerHTML = hName + 'の攻撃';
			music1.play();
			setTimeout(() => {
				document.getElementById('comment').innerHTML = eName + 'には効果がないようだ';
//				HP計算および書き換え
	//			var eHpAfter = (Number(eHp) - Number(hAttack));
	//			document.getElementById('eHpid').innerHTML = eHpAfter;
//				enemyのHPが0の場合、マップボタン表示
	//			if(eHpAfter <= 0){
	//				document.getElementById('eHpid').innerHTML = 0;
	//				document.getElementById('comment').innerHTML = eName + 'を倒した' + '<a href="">マップ戻る</a>';
	//				return}
				setTimeout(() => {
					document.getElementById('comment').innerHTML = eName + 'の攻撃';
					music2.play();
						setTimeout(() => {
						document.getElementById("y_img").style.visibility = "hidden";
							setTimeout(() => {
							document.getElementById("y_img").style.visibility = "visible";
								setTimeout(() => {
								document.getElementById("y_img").style.visibility = "hidden";
									setTimeout(() => {
									document.getElementById("y_img").style.visibility = "visible";
										setTimeout(() => {
										document.getElementById("y_img").style.visibility = "hidden";
											setTimeout(() => {
											document.getElementById("y_img").style.visibility = "visible";
											}, 100);
										}, 100);
									}, 100);
								}, 100);
							}, 100);
						}, 200);
					setTimeout(() => {
						document.getElementById('comment').innerHTML = hName + 'に' + Math.floor(eKcal * randomE) + 'のダメージ';
//						HP計算および書き換え
						var hHpAfter = (Number(hHp) - Math.floor(eKcal * randomE));
						document.getElementById('hHpid').innerHTML = hHpAfter;
//						heroのHPが0の場合、gameoverへ
						if(hHpAfter <= 0){
							document.getElementById('hHpid').innerHTML = 0;
							document.getElementById('comment').innerHTML = hName + 'は力尽きた' +
							'<form action="/FOOD_BATTLE/GameOver" method="get"><button type="submit">タイトルへ</button></form>';
							document.getElementById("y_img").style.visibility = "hidden";
							return}
						setTimeout(() => {
							document.getElementById('comment').innerHTML = 'どうする？';

//							操作後ボタンを有効
							notattackBt.disabled = false;
							eatBt.disabled = false;
							itemBt.disabled = false;
							runBt.disabled = false;

						}, 1000);
					}, 1000);
				}, 1000);
			}, 1000);


}
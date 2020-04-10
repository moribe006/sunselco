function eat(){
	var eName = document.getElementById("eName").textContent;
	var hName = document.getElementById("hName").textContent;
	var eHp = document.getElementById("eHpid").textContent;
	var hHp = document.getElementById("hHpid").textContent;
	var hHungry =  document.getElementById("hHungry").textContent;
	var eKcal = document.getElementById("eKcal").textContent;
	var hMp = document.getElementById("hMpid").textContent;
	var DropItem = document.getElementById("DropItem").textContent;
	var eatBt = document.getElementById("eatBt");
	var notattackBt = document.getElementById("notattackBt");
	var itemBt = document.getElementById("itemBt");
	var runBt = document.getElementById("runBt");

	var knumber = document.getElementById("knumber").textContent;
	var inumber = document.getElementById("inumber").textContent;
	var qnumber = document.getElementById("qnumber").textContent;

	var randomH = Math.floor((Math.random()*5)+8)/10;
	var randomE = Math.floor((Math.random()*5)+8)/10;

	var music1 = new Audio("bgm/cancel1.mp3");
	var music2 = new Audio("bgm/punch-stop1.mp3");
	var music3 = new Audio("bgm/battleEnd2.mp3");

//		操作中ボタンを無効
		eatBt.disabled = true;
		notattackBt.disabled = true;
		itemBt.disabled = true;
		runBt.disabled = true;


		document.getElementById('comment').innerHTML = hName + 'の食事';
		music1.play();
		setTimeout(() => {
			document.getElementById("e_img").style.visibility = "hidden";
				setTimeout(() => {
				document.getElementById("e_img").style.visibility = "visible";
					setTimeout(() => {
					document.getElementById("e_img").style.visibility = "hidden";
						setTimeout(() => {
						document.getElementById("e_img").style.visibility = "visible";
							setTimeout(() => {
							document.getElementById("e_img").style.visibility = "hidden";
								setTimeout(() => {
								document.getElementById("e_img").style.visibility = "visible";
								}, 100);
							}, 100);
						}, 100);
					}, 100);
				}, 100);
			}, 200);
		setTimeout(() => {
			document.getElementById('comment').innerHTML = eName + 'を' + Math.floor(hHungry * randomH) + 'ｇ、減らした';
//			HP計算および書き換え
			var eHpAfter = (Number(eHp) - Math.floor(hHungry * randomH));
			document.getElementById('eHpid').innerHTML = eHpAfter;
//			enemyのHPが0の場合、マップボタン表示
			if(eHpAfter <= 0){
				document.getElementById('eHpid').innerHTML = 0;
				document.getElementById('comment').innerHTML = eName + 'を倒した！！' +
				'<form action="/FOOD_BATTLE/BossDownEnemy" method="get"><button type="submit"  name="name" value= '+eName+','+hHp+','+hMp+','+DropItem+' >凱旋パレード</button></form>';
				document.getElementById("e_img").style.visibility = "hidden";
				return}
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
					document.getElementById('comment').innerHTML = hName + 'に' + (eKcal * randomE) + 'のダメージ';
//					MP計算および書き換え
					var hMpAfter = (Number(hMp) + Number(eKcal * randomE));
					document.getElementById('hMpid').innerHTML = hMpAfter;
//					heroのMPが100の場合、gameoverへ
					if(hMpAfter >= 100){
						document.getElementById('hMpid').innerHTML = 100;
						document.getElementById('comment').innerHTML = hName + 'は力尽きた' +
						'<form action="/FOOD_BATTLE/GameOver" method="get"><button type="submit">タイトルへ</button></form>';
						document.getElementById("y_img").style.visibility = "hidden";
						return}
					setTimeout(() => {
						document.getElementById('comment').innerHTML = 'どうする？';

//						操作後ボタンを有効
						eatBt.disabled = false;
						notattackBt.disabled = false;
						itemBt.disabled = false;
						runBt.disabled = false;

					}, 1000);
				}, 1000);
			}, 1000);
		}, 1000);
}
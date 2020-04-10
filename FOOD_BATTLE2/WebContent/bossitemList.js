
function itemList(){
	//kname=傷薬 iname=胃薬 qname=謎の液体
	//アイテムの名前をjspから取得して定義
	var kname = document.getElementById("kname").textContent;
	var iname = document.getElementById("iname").textContent;
	var qname = document.getElementById("qname").textContent;

	//アイテムのhp回復量をjspから取得して定義
	var khp = document.getElementById("khp").textContent;
	var ihp = document.getElementById("ihp").textContent;
	var qhp = document.getElementById("qhp").textContent;

	//アイテムのmp回復力をjspから取得して定義
	var kmp = document.getElementById("kmp").textContent;
	var imp = document.getElementById("imp").textContent;
	var qmp = document.getElementById("qmp").textContent;

	//アイテムの個数をjspから取得して定義
	var knumber = document.getElementById("knumber").textContent;
	var inumber = document.getElementById("inumber").textContent;
	var qnumber = document.getElementById("qnumber").textContent;


/*------------------------------------------ここからアイテム個数を判定----------------------------------------------*/

	//アイテムボタンを押したらcommentのdivにアイテムリストを表示
	if(Number(knumber)=== 0 && Number(inumber) === 0 && Number(qnumber) === 0){
		document.getElementById('comment').innerHTML ='何も持っていない';

	}else if(Number(knumber) > 0 && Number(inumber) > 0 && Number(qnumber) > 0){
		document.getElementById('comment').innerHTML =
		`<table><tr><th>名前</th><th>HP回復量</th><th>MP回復量</th><th>個数</th></tr>
		<tr><th><input id="item" type="button" value=${kname} onclick="return kizuuse()"></th><th>${khp}</th><th>${kmp}<th>${knumber}</th></tr>
		<tr><th><input id="item" type="button" value=${iname} onclick="return iguuse()"></th><th>${ihp}</th><th>${imp}<th>${inumber}</th></tr>
		<tr><th><input id="item" type="button" value=${qname} onclick="return pepeuse()"></th><th>${qhp}</th><th>${qmp}<th>${qnumber}</th></tr>
		</table><p class=itemuse>※使用するアイテムを選んで下さい</p>`;

	}else if(Number(knumber) > 0 && Number(inumber) === 0 && Number(qnumber) === 0){
		document.getElementById('comment').innerHTML =
			`<table><tr><th>名前</th><th>HP回復量</th><th>MP回復量</th><th>個数</th></tr>
			<tr><th><input id="item" type="button" value=${kname} onclick="return kizuuse()"></th><th>${khp}</th><th>${kmp}<th>${knumber}</th></tr>
			</table><p class=itemuse>※使用するアイテムを選んで下さい</p>`;

	}else if(Number(knumber) > 0 && Number(inumber) > 0 && Number(qnumber) === 0){
		document.getElementById('comment').innerHTML =
			`<table><tr><th>名前</th><th>HP回復量</th><th>MP回復量</th><th>個数</th></tr>
			<tr><th><input id="item" type="button" value=${kname} onclick="return kizuuse()"></th><th>${khp}</th><th>${kmp}<th>${knumber}</th></tr>
			<tr><th><input id="item" type="button" value=${iname} onclick="return iguuse()"></th><th>${ihp}</th><th>${imp}<th>${inumber}</th></tr>
			</table><p class=itemuse>※使用するアイテムを選んで下さい</p>`;

	}else if(Number(knumber) > 0 && Number(inumber) === 0 && Number(qnumber) > 0){
		document.getElementById('comment').innerHTML =
			`<table><tr><th>名前</th><th>HP回復量</th><th>MP回復量</th><th>個数</th></tr>
			<tr><th><input id="item" type="button" value=${kname} onclick="return kizuuse()"></th><th>${khp}</th><th>${kmp}<th>${knumber}</th></tr>
			<tr><th><input id="item" type="button" value=${qname} onclick="return pepeuse()"></th><th>${qhp}</th><th>${qmp}<th>${qnumber}</th></tr>
			</table><p class=itemuse>※使用するアイテムを選んで下さい</p>`;

	}else if(Number(knumber) === 0 && Number(inumber) === 0 && Number(qnumber) > 0){
		document.getElementById('comment').innerHTML =
			`<table><tr><th>名前</th><th>HP回復量</th><th>MP回復量</th><th>個数</th></tr>
			<tr><th><input id="item" type="button" value=${qname} onclick="return pepeuse()"></th><th>${qhp}</th><th>${qmp}<th>${qnumber}</th></tr>
			</table><p class=itemuse>※使用するアイテムを選んで下さい</p>`;

	}else if(Number(knumber) === 0 && Number(inumber) > 0 && Number(qnumber) === 0){
			document.getElementById('comment').innerHTML =
				`<table><tr><th>名前</th><th>HP回復量</th><th>MP回復量</th><th>個数</th></tr>
				<tr><th><input id="item" type="button" value=${iname} onclick="return iguuse()"></th><th>${ihp}</th><th>${imp}<th>${inumber}</th></tr>
				</table><p class=itemuse>※使用するアイテムを選んで下さい</p>`;

	}else if(Number(knumber) === 0 && Number(inumber) > 0 && Number(qnumber) > 0){
		document.getElementById('comment').innerHTML =
			`<table><tr><th>名前</th><th>HP回復量</th><th>MP回復量</th><th>個数</th></tr>
			<tr><th><input id="item" type="button" value=${iname} onclick="return iguuse()"></th><th>${ihp}</th><th>${imp}<th>${inumber}</th></tr>
			<tr><th><input id="item" type="button" value=${qname} onclick="return pepeuse()"></th><th>${qhp}</th><th>${qmp}<th>${qnumber}</th></tr>
			</table><p class=itemuse>※使用するアイテムを選んで下さい</p>`;
	}
}

/*------------------------------------------ここまでアイテム個数を判定----------------------------------------------*/



//傷薬を使用したときの処理を実行するメソッド
function kizuuse(){


	//傷薬の値を取得
	var kname = document.getElementById("kname").textContent;
	var khp = document.getElementById("khp").textContent;
	var kmp = document.getElementById("kmp").textContent;
	var knumber = document.getElementById("knumber").textContent;

	//勇者の名前、hp,mpをjspから取得して定義
	var hname = document.getElementById("hName").textContent;
	var hhp = document.getElementById("hHpid").textContent;
	var hmp = document.getElementById("hMpid").textContent;
	var music2 = new Audio("bgm/heal.mp3");


	//アイテムを使用したときの表示と処理
	if(Number(hhp) === 100){
		document.getElementById('comment').innerHTML = 'これ以上ＨＰは回復しないため、使えない！'
	}else if(Number(hhp) < 100){

		//勇者のHPが100以上にしない為の計算に使用する
		var hpjuge = 100 - Number(hhp);

		//勇者の回復可能量がアイテム回復量より大きい場合はアイテムの数値を取得
		if(hpjuge >= Number(khp)){
			document.getElementById('comment').innerHTML = `${hname}は${kname}を使った！！ＨＰが ${khp}、ＭＰが ${kmp} 回復した！！`;
			//勇者のHP,MPを書き換え
			var hhpAfter = (Number(hhp) + Number(khp));
			document.getElementById('hHpid').innerHTML = hhpAfter;
			music2.play();

		//勇者の回復可能量がアイテム回復量より少ない場合は計算の数値を取得
		}else if(hpjuge <= Number(khp)){
			document.getElementById('comment').innerHTML = `${hname}は${kname}を使った！！ＨＰが ${hpjuge}、ＭＰが ${kmp} 回復した！！`;
			//勇者のHP,MPを書き換え
			var hhpAfter = (Number(hhp) + Number(hpjuge));
			document.getElementById('hHpid').innerHTML = hhpAfter;
			music2.play();
		}

		//使用したアイテムを減らす処理
		var usenumber = (Number(knumber) - 1);
		document.getElementById('knumber').innerHTML = usenumber;

		var eName = document.getElementById("eName").textContent;
		var hName = document.getElementById("hName").textContent;
		var eHp = document.getElementById("eHpid").textContent;
		var hHp = document.getElementById("hHpid").textContent;
		var hAttack =  document.getElementById("hAttack").textContent;
		var eAttack = document.getElementById("eAttack").textContent;
		var eKcal = document.getElementById("eKcal").textContent;
		var DropItem = document.getElementById("DropItem").textContent;
		var hMp = document.getElementById("hMpid").textContent;

		var attackBt = document.getElementById("attackBt");
		var noteatBt = document.getElementById("noteatBt");
		var itemBt = document.getElementById("itemBt");
		var runBt = document.getElementById("runBt");
		var eatBt = document.getElementById("eatBt");
		var notattackBt = document.getElementById("notattackBt");
		var itemBt = document.getElementById("itemBt");
		var runBt = document.getElementById("runBt");
		var music1 = new Audio("bgm/punch-stop1.mp3");

		var randomH = Math.floor((Math.random()*5)+8)/10;
		var randomE = Math.floor((Math.random()*5)+8)/10;

		if(Number(eAttack) > 0){
			attackBt.disabled = true;
			noteatBt.disabled = true;
			itemBt.disabled = true;
			runBt.disabled = true;
			setTimeout(() => {
				document.getElementById('comment').innerHTML = eName + 'の攻撃';
				music1.play();
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
					document.getElementById('comment').innerHTML = hName + 'に' + (eAttack * randomE)+ 'のダメージ';
//					HP計算および書き換え
					var hHpAfter = (Number(hHp) - Number(eAttack * randomE));
					document.getElementById('hHpid').innerHTML = hHpAfter;
//					heroのHPが0の場合、gameoverへ
					if(hHpAfter <= 0){
						document.getElementById('hHpid').innerHTML = 0;
						document.getElementById("y_img").style.visibility = "hidden";
						document.getElementById('comment').innerHTML = hName + 'は力尽きた' +
						'<form action="/FOOD_BATTLE/GameOver" method="get"><button type="submit">タイトルへ</button></form>';

						return}
					setTimeout(() => {
						document.getElementById('comment').innerHTML = 'どうする？';

//						操作後ボタンを有効
						attackBt.disabled = false;
						noteatBt.disabled = false;
						itemBt.disabled = false;
						runBt.disabled = false;

					}, 1000);
				}, 1000);
			}, 1500);
		}else if(Number(eKcal) > 0){
			eatBt.disabled = true;
			notattackBt.disabled = true;
			itemBt.disabled = true;
			runBt.disabled = true;
			setTimeout(() => {
				document.getElementById('comment').innerHTML = eName + 'の攻撃';
				music1.play();
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
					document.getElementById('comment').innerHTML = hName + 'に' + (eKcal * randomE)+ 'のダメージ';
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
		}
	}
}

//胃薬を使用したときの処理を実行するメソッド
function iguuse(){
	//傷薬の値を取得
	var iname = document.getElementById("iname").textContent;
	var ihp = document.getElementById("ihp").textContent;
	var imp = document.getElementById("imp").textContent;
	var inumber = document.getElementById("inumber").textContent;

	//勇者の名前、hp,mpをjspから取得して定義
	var hname = document.getElementById("hName").textContent;
	var hhp = document.getElementById("hHpid").textContent;
	var hmp = document.getElementById("hMpid").textContent;
	var music2 = new Audio("bgm/heal.mp3");

	//アイテムを使用したときの表示と処理
	if(Number(hmp) === 0){
		document.getElementById('comment').innerHTML = 'これ以上ＭＰは回復しないため、使えない！'
	}else if(Number(hmp) > 0){

		//勇者のMPが0以下にしない為の計算に使用する
		var mpjuge = Number(hmp);

		//勇者の回復可能量がアイテム回復量より大きい場合はアイテムの数値を取得
		if(mpjuge >= Number(imp)){
			document.getElementById('comment').innerHTML = `${hname}は${iname}を使った！！ＨＰが ${ihp} 、ＭＰが ${imp} 回復した！！`;
			//勇者のHP,MPを書き換え
			var hmpAfter = (Number(hmp) - Number(imp));
			document.getElementById('hMpid').innerHTML = hmpAfter;
			music2.play();

			//勇者の回復可能量がアイテム回復量より少ない場合は計算の数値を取得
		}else if(mpjuge <= Number(imp)){
			document.getElementById('comment').innerHTML = `${hname}は${iname}を使った！！ＨＰが ${ihp} 、ＭＰが ${mpjuge} 回復した！！`;
			//勇者のHP,MPを書き換え
			var hmpAfter = (Number(hmp) - Number(mpjuge));
			document.getElementById('hMpid').innerHTML = hmpAfter;
			music2.play();
		}

		//使用したアイテムを減らす処理
		var usenumber = (Number(inumber) - 1);
		document.getElementById('inumber').innerHTML = usenumber;
		var eName = document.getElementById("eName").textContent;
		var hName = document.getElementById("hName").textContent;
		var eHp = document.getElementById("eHpid").textContent;
		var hHp = document.getElementById("hHpid").textContent;
		var hAttack =  document.getElementById("hAttack").textContent;
		var eAttack = document.getElementById("eAttack").textContent;
		var eKcal = document.getElementById("eKcal").textContent;
		var DropItem = document.getElementById("DropItem").textContent;
		var hMp = document.getElementById("hMpid").textContent;

		var attackBt = document.getElementById("attackBt");
		var noteatBt = document.getElementById("noteatBt");
		var itemBt = document.getElementById("itemBt");
		var runBt = document.getElementById("runBt");
		var eatBt = document.getElementById("eatBt");
		var notattackBt = document.getElementById("notattackBt");
		var itemBt = document.getElementById("itemBt");
		var runBt = document.getElementById("runBt");
		var music1 = new Audio("bgm/punch-stop1.mp3");

		var randomH = Math.floor((Math.random()*5)+8)/10;
		var randomE = Math.floor((Math.random()*5)+8)/10;

		if(Number(eAttack) > 0){
			attackBt.disabled = true;
			noteatBt.disabled = true;
			itemBt.disabled = true;
			runBt.disabled = true;
			setTimeout(() => {
				document.getElementById('comment').innerHTML = eName + 'の攻撃';
				music1.play();
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
					document.getElementById('comment').innerHTML = hName + 'に' + (eAttack * randomE)+ 'のダメージ';
//					HP計算および書き換え
					var hHpAfter = (Number(hHp) - Number(eAttack * randomE));
					document.getElementById('hHpid').innerHTML = hHpAfter;
//					heroのHPが0の場合、gameoverへ
					if(hHpAfter <= 0){
						document.getElementById('hHpid').innerHTML = 0;
						document.getElementById("y_img").style.visibility = "hidden";
						document.getElementById('comment').innerHTML = hName + 'は力尽きた' +
						'<form action="/FOOD_BATTLE/GameOver" method="get"><button type="submit">タイトルへ</button></form>';

						return}
					setTimeout(() => {
						document.getElementById('comment').innerHTML = 'どうする？';

//						操作後ボタンを有効
						attackBt.disabled = false;
						noteatBt.disabled = false;
						itemBt.disabled = false;
						runBt.disabled = false;

					}, 1000);
				}, 1000);
			}, 1500);
		}else if(Number(eKcal) > 0){
			eatBt.disabled = true;
			notattackBt.disabled = true;
			itemBt.disabled = true;
			runBt.disabled = true;
			setTimeout(() => {
				document.getElementById('comment').innerHTML = eName + 'の攻撃';
				music1.play();
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
					document.getElementById('comment').innerHTML = hName + 'に' + (eKcal * randomE)+ 'のダメージ';
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
		}
	}
}


//ペペを使用したときの処理を実行するメソッド
function pepeuse(){
	//傷薬の値を取得
	var qname = document.getElementById("qname").textContent;
	var qhp = document.getElementById("qhp").textContent;
	var qmp = document.getElementById("qmp").textContent;
	var qnumber = document.getElementById("qnumber").textContent;


	//勇者の名前、hp,mpをjspから取得して定義
	var hname = document.getElementById("hName").textContent;
	var hhp = document.getElementById("hHpid").textContent;
	var hmp = document.getElementById("hMpid").textContent;
	var music2 = new Audio("bgm/heal.mp3");


	//アイテムを使用したときの表示と処理
	if(Number(hhp) ===100 && Number(hmp) === 0){
		document.getElementById('comment').innerHTML = 'これ以上ＨＰ、ＭＰは回復しないため、使えない！'

	}else if(Number(hhp) < 100 || Number(hmp) > 0){
		document.getElementById('comment').innerHTML = `${hname}は${qname}を使った！！ＨＰとＭＰがＭＡＸまで回復した`;
		//勇者のHPとMPを100に書き換え
		document.getElementById('hHpid').innerHTML = 100;
		document.getElementById('hMpid').innerHTML = 0;
		music2.play();

		//使用したアイテムを減らす処理
	var usenumber = (Number(qnumber) - 1);
	document.getElementById('qnumber').innerHTML = usenumber;

	var eName = document.getElementById("eName").textContent;
	var hName = document.getElementById("hName").textContent;
	var eHp = document.getElementById("eHpid").textContent;
	var hHp = document.getElementById("hHpid").textContent;
	var hAttack =  document.getElementById("hAttack").textContent;
	var eAttack = document.getElementById("eAttack").textContent;
	var eKcal = document.getElementById("eKcal").textContent;
	var DropItem = document.getElementById("DropItem").textContent;
	var hMp = document.getElementById("hMpid").textContent;

	var attackBt = document.getElementById("attackBt");
	var noteatBt = document.getElementById("noteatBt");
	var itemBt = document.getElementById("itemBt");
	var runBt = document.getElementById("runBt");
	var eatBt = document.getElementById("eatBt");
	var notattackBt = document.getElementById("notattackBt");
	var itemBt = document.getElementById("itemBt");
	var runBt = document.getElementById("runBt");
	var music1 = new Audio("bgm/punch-stop1.mp3");

	var randomH = Math.floor((Math.random()*5)+8)/10;
	var randomE = Math.floor((Math.random()*5)+8)/10;

	if(Number(eAttack) > 0){
		attackBt.disabled = true;
		noteatBt.disabled = true;
		itemBt.disabled = true;
		runBt.disabled = true;
		setTimeout(() => {
			document.getElementById('comment').innerHTML = eName + 'の攻撃';
			music1.play();
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
				document.getElementById('comment').innerHTML = hName + 'に' + (eAttack * randomE)+ 'のダメージ';
//				HP計算および書き換え
				var hHpAfter = (Number(hHp) - Number(eAttack * randomE));
				document.getElementById('hHpid').innerHTML = hHpAfter;
//				heroのHPが0の場合、gameoverへ
				if(hHpAfter <= 0){
					document.getElementById('hHpid').innerHTML = 0;
					document.getElementById("y_img").style.visibility = "hidden";
					document.getElementById('comment').innerHTML = hName + 'は力尽きた' +
					'<form action="/FOOD_BATTLE/GameOver" method="get"><button type="submit">タイトルへ</button></form>';

					return}
				setTimeout(() => {
					document.getElementById('comment').innerHTML = 'どうする？';

//					操作後ボタンを有効
					attackBt.disabled = false;
					noteatBt.disabled = false;
					itemBt.disabled = false;
					runBt.disabled = false;

				}, 1000);
			}, 1000);
		}, 1500);
	}else if(Number(eKcal) > 0){
		eatBt.disabled = true;
		notattackBt.disabled = true;
		itemBt.disabled = true;
		runBt.disabled = true;
		setTimeout(() => {
			document.getElementById('comment').innerHTML = eName + 'の攻撃';
			music1.play();
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
				document.getElementById('comment').innerHTML = hName + 'に' + (eKcal * randomE)+ 'のダメージ';
//				MP計算および書き換え
				var hMpAfter = (Number(hMp) + Number(eKcal * randomE));
				document.getElementById('hMpid').innerHTML = hMpAfter;
//				heroのMPが100の場合、gameoverへ
				if(hMpAfter >= 100){
					document.getElementById('hMpid').innerHTML = 100;
					document.getElementById('comment').innerHTML = hName + 'は力尽きた' +
					'<form action="/FOOD_BATTLE/GameOver" method="get"><button type="submit">タイトルへ</button></form>';
					document.getElementById("y_img").style.visibility = "hidden";
					return}
				setTimeout(() => {
					document.getElementById('comment').innerHTML = 'どうする？';

//					操作後ボタンを有効
					eatBt.disabled = false;
					notattackBt.disabled = false;
					itemBt.disabled = false;
					runBt.disabled = false;

				}, 1000);
			}, 1000);
		}, 1000);
	}
}
}
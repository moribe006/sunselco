package model;



public class Ecommand {

	public void attack(HeroStatusBean hero, Enemy enemy){
		if(enemy instanceof ManEnemyBean) {
		int damage = hero.getHp() - enemy.getPower();
		hero.setHp(damage);
		//System.out.println(enemy.getName() + "の攻撃！！！"
		//+ hero.getName() + "に" + enemy.getPower() + "のダメージを与えた！！");
		}

		else if(enemy instanceof FoodEnemyBean) {
		int damage = hero.getMp() + enemy.getKcal();
		hero.setMp(damage);
		//System.out.println(enemy.getName() + "の攻撃！！！"
		//+ hero.getName() + "に" + enemy.getKcal() + "の満腹中枢を刺激した！！");
		}
	}
	}


package model;
import java.io.Serializable;
	//heroとしてセッションに保存されるBeanです
public class HeroStatusBean extends Hero_Equipment implements Serializable{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	//Heroの属性宣言
	private String name;
	private int hp;
	private int power;
	private int hungry;
	private int mp;
	private int maxhp = 100;
	private int minmp = 0;
	//Heroの基本コンストラクタ
	public HeroStatusBean(String name , int hp , int power , int hungry, int mp){
		this.name = name;
		this.hp = hp;
		this.hungry=hungry;
		this.power = power;
		this.mp = mp;
	}

	public HeroStatusBean(HeroStatusBean hero) {
		this.name=hero.getName();
		this.hp=hero.getHp();
		this.power=hero.getPower();
		this.hungry=hero.getHungry();
		this.mp=hero.getMp();
		this.maxhp=hero.getMaxhp();
		this.minmp=hero.getMinmp();

	}



	//Heroコンストラクタ（予備？）
	public HeroStatusBean(){}
	public HeroStatusBean(String name) {
		this.name = name;
	}
	public HeroStatusBean(int hp , int power , int mp){
		this.hp = hp;
		this.power = power;
		this.mp = mp;
	}
	//Heroのゲッタセッタ
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		if(maxhp<hp) {
			this.hp=maxhp;
		}else{
			this.hp = hp;
	}}
	public int getPower() {
		return power+getEquipmentPower();
	}
	public int getMp() {
		return mp;
	}
	public void setMp(int mp) {
		if(mp<0) {
			this.mp=0;
		}else{
			this.mp = mp;
		}}
	public int getMaxhp() {
		return maxhp;
	}
	public int getMinmp() {
		return minmp;
	}
	public int getHungry() {
	return hungry+getEquipmentHungry();
}
	public void setHungry(int hungry) {
	this.hungry = hungry;
}
}
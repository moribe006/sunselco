package model;

import java.io.Serializable;

public class ItemBean implements Serializable{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private int hp;
	private int mp;
	private int have;//HeroStatusBeanで使用(アイテム所持数)

	public ItemBean(){}
	public ItemBean(String name , int hp , int mp){
		this.name = name;
		this.hp = hp;
		this.mp = mp;
	}
	public String getName() {
		return name;
	}
	public int getItemHp() {
		return hp;
	}

	public int getItemMp() {
		return mp;
	}
	//アイテム所持枠の追加
	public int getHave() {
		return have;
	}
	public void setHave(int have) {
		this.have = have;
	}
}
package model;

import java.io.Serializable;

public class WeaponBean implements Serializable{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private int power;
	private int hungry;
	private boolean personal=false;

	public WeaponBean(){}
	public WeaponBean(String name , int power , int hungry){
		this.name = name;
		this.power = power;
		this.hungry = hungry;
	}
	public String getName() {
		return name;
	}
	public int getPower() {
		return power;
	}
	public int getHungry() {
		return hungry;
	}
	public String isPersonal() {
		String syoji;
		if(personal) {
			syoji="保持(装備できます)";
		}else {
			syoji="未保持";
		}
		return syoji;
	}
	public void setPersonal(boolean personal) {
		this.personal = personal;
	}
	public boolean getPersonal() {
		return personal;
	}
	}

/*----------------------------------------------------------------------------------------*/
 /*ここから下が、装備、アイテムの保持をリスト化しています。*/



/*	public List<WeaponBean> haveEquip;
	public List<ItemBean> haveItem;

	public List<WeaponBean> gethaveEquip() {
		return haveEquip;
	}

	public void sethaveEquip(List<WeaponBean> haveEquip) {
		this.haveEquip = haveEquip;
	}
	public List<ItemBean> gethaveItem() {
		return haveItem;
	}
	public void setHojiItem(List<ItemBean> haveItem) {
		this.haveItem = haveItem;
	}
}
*/
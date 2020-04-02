package model;

import java.util.ArrayList;
import java.util.List;
	//heroの装備、所持品の管理クラス
public class Hero_Equipment extends Hero_Personal_belongings{
		public WeaponBean Equipment=null;

			//装備を付けるメソッド

			public void setEquipment(WeaponBean weapon) {
				if(Equipment==null) {
					this.Equipment=weapon;
				}else if(Equipment!=null){
					this.Equipment=weapon;
				}}
			//現在の装備を返すメソッド
		//	public WeaponBean getEquipment(){return this.Equipment;}
			//装備のNameを返すメソッド
			public String getEquipmentName() {
				if(Equipment==null) {
					String nasi="なし";
					return nasi;
				}
				return Equipment.getName();
			}
			//装備のPowerを返すメソッド
			public int getEquipmentPower() {
				if(Equipment==null) {
					return 0;
				}
				return Equipment.getPower();}
			//装備のHungryを返すメソッド
			public int getEquipmentHungry() {
				if(Equipment==null) {
					return 0;
				}
				return Equipment.getHungry();
			}

			//所持装備品(Listのインスタンス化)の定義
			public List<WeaponBean>Personal_equipmentList = new ArrayList();
			//所持装備品のＬｉｓｔを返すメソッド
			public List<WeaponBean> getPersonal_equipmentList() {
				return Personal_equipmentList;
			}
			//初期設定
			public void setPersonal_equipmentList(List<WeaponBean>weaponList){
				Personal_equipmentList=weaponList;
			}
			//初期設定代入false
			public void setPersonal_equipmentList(){
				for(WeaponBean weapon:Personal_equipmentList) {
					weapon.setPersonal(false);
				}
			}



			//装備品を入手（引数（getName()で装備名を入れる））し
			//heroのPersonal_equipment（List）に入れるメソッド
			public void setPersonal_equipmentList(String ObtainName) {
				for(WeaponBean weapon:Personal_equipmentList) {
					if(ObtainName.equals(weapon.getName())) {
						weapon.setPersonal(true);
						//装備の値をtrueへ
					}else {
						//System.out.println("その装備は持っています");
					}}}}
//装備品の取得
//public void setPersonal_equipment(WeaponBean weapon){
//Personal_equipment.add(weapon);
//return Personal_equipment.addAll(weapon);
//}

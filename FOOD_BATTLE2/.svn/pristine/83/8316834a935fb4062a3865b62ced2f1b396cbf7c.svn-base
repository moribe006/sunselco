package model;

import java.util.ArrayList;
import java.util.List;

public class Hero_Personal_belongings{

	//所持品(Listのインスタンス化)の定義
	public List<ItemBean> Personal_belongings= new ArrayList();

	//所持品のリストを返すメソッド
	public List<ItemBean> getPersonal_belogingsList() {return Personal_belongings;}
	//初期設定
	public void setPersonal_belogingsList(List<ItemBean>itemList){
		Personal_belongings=itemList;
	}
	//初期値代入0
	public void setPersonal_belogingsList(){
		for(ItemBean item:Personal_belongings) {
			item.setHave(0);
		}}


	//所持品の入手(引数(getName()でアイテム名を入れる)し
	//heroのPersonal_belongings(List)に入れるメソッド
	//複数入手の場合は引数を増やすべし(String ObtainName,int Quantity)
	public void setPersonal_belongings(String ObtainName) {
		for(ItemBean item:Personal_belongings) {
			if(ObtainName.equals(item.getName())) {
				int i = item.getHave()+1;
				item.setHave(i);
	}}}
	//上記のオーバーロード(ItemBean型)これは使えない気がする・・・
	public void setPersonal_belongings(ItemBean item){
		for(ItemBean personal:Personal_belongings) {
			if(personal.equals(item.getName())) {
				int i = item.getHave()+1;
				item.setHave(i);
	}}}
	 public void item(HeroStatusBean hero,String itemName){
//			List<ItemBean>itemList=(List<ItemBean>)session.getAttribute("itemList");
//			セッション使用不可：所持数のListを回す
			 for(ItemBean item :hero.getPersonal_belogingsList()) {
				if(itemName.equals(item.getName())) {
					if(item.getHave()<= 0) {
//					System.out.println("アイテムを持ってません");
					}else if(item.getHave()>=1) {
				 	int hp = hero.getHp() + item.getItemHp();
				 	int mp = hero.getMp() - item.getItemMp();
				 	hero.setHp(hp);
				 	hero.setMp(mp);
//				 	System.out.println("HPが" + item.getPower() + "回復した。");
//				 	System.out.println("MPが" + item.getHungry() + "回復した。");
				 	int useitem = item.getHave()-1;
				 	item.setHave(useitem );

}}}}}




	//testメソッドpublic void setPersonal_belongings(ItemBean item){
//	public void setPersonal_belongings(Object n) {
//	for(ItemBean n:Personal_belongings) {
//		if(n.equals(item.getName())) {
//			int i = item.getHave()+1;
//			item.setHave(i);
//}}}


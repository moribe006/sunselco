package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Enemy;
import model.FoodEnemyBean;
import model.HeroStatusBean;
import model.ItemBean;
import model.ManEnemyBean;
import model.WeaponBean;

@WebServlet("/DownEnemy")
public class DownEnemy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//飛んできたvalueの中身を受け取り文字列を分けて各種値を作る
		String get =request.getParameter("name");
		String get2[]=get.split(",");			 //スピリットで,で分ける
		String text = get2[0];					 //中身は敵の名前
		String hHp	= get2[1];					 //heroのHP
		String hMp	= get2[2];					 //heroのMP
		String drop = get2[3];					 //敵のドロップ品の名前
		int kizu    = Integer.parseInt(get2[4]);//傷薬の残りの数
		int igu		= Integer.parseInt(get2[5]);//胃薬の残りの数
		int nazo	= Integer.parseInt(get2[6]);//ぺぺの残りの数

		//敵の判別を行い、敵のHPに0を代入する。
		HttpSession session1 = request.getSession();
		List<ManEnemyBean> manEnemyList = (List<ManEnemyBean>)session1.getAttribute("manEnemyList");
		loop:for(ManEnemyBean e: manEnemyList) {
			if(text.equals(e.getName())) {
				//敵
				Enemy enemy= e;
				enemy.setHp(0);
				HttpSession request1 =request.getSession();
				request1.setAttribute("manEnemyList",manEnemyList );
				break loop;
			}
				HttpSession session2 = request.getSession();
				List<FoodEnemyBean> foodEnemyList = (List<FoodEnemyBean>)session2.getAttribute("foodEnemyList");
				for(FoodEnemyBean f: foodEnemyList) {
				if(text.equals(f.getName())) {
				Enemy enemy=f;
				enemy.setHp(0);
				HttpSession request2 = request.getSession();
				request2.setAttribute("foodEnemyList",foodEnemyList );
				break loop;
			}}}
				//ヒーローセット(HP,MP)
				HttpSession session = request.getSession();
				HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");
				int heroHp=Integer.parseInt(hHp);
				hero.setHp(heroHp);
				int heroMp=Integer.parseInt(hMp);
				hero.setMp(heroMp);
				//武器リストを回す
				HttpSession session5 = request.getSession();
				List<WeaponBean> weaponList=(List<WeaponBean>)session5.getAttribute("weaponList");
				for(WeaponBean weapon:weaponList) {
				if(drop.equals(weapon.getName())) {
					WeaponBean dropweapon = weapon;
					hero.setPersonal_equipmentList(dropweapon.getName());
				}}
				//アイテムリストを回す
				HttpSession session7 = request.getSession();
				List<ItemBean>itemList=(List<ItemBean>)session7.getAttribute("itemList");
				//javaすく（アイテム個数処理）残りの数をセットする
				 for(ItemBean a:hero.getPersonal_belogingsList()) {
					 if(a.getName().equals("傷薬")) {
						 if(kizu!=a.getHave()) {
						 a.setHave(kizu);
						 }}
					 if(a.getName().equals("胃薬")) {
						 if(igu!=a.getHave()) {
						 a.setHave(igu);
						 }}
					 if(a.getName().equals("謎の液体")) {
						 if(nazo!=a.getHave()) {
						 a.setHave(nazo);
						 }}}

				//ドロップしたアイテムを判別し取得する
				for(ItemBean item:itemList) {
				if(drop.equals(item.getName())){
				hero.setPersonal_belongings(drop);
				}}





				//ヒーローに飛ばす
				HttpSession session6 = request.getSession();
				session6.setAttribute("hero", hero);
			//飛ばす
			RequestDispatcher dispatcher3=request.getRequestDispatcher("map.jsp");
			dispatcher3.forward(request, response);
			}}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

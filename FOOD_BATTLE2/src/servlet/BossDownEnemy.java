package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/BossDownEnemy")
public class BossDownEnemy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		String get =request.getParameter("name");
//		String get2[]=get.split(",");
//		String text = get2[0];
//		String hHp	= get2[1];
//		String hMp	= get2[2];
//		String drop = get2[3];
//
//		HttpSession session1 = request.getSession();
//		List<ManEnemyBean> manEnemyList = (List<ManEnemyBean>)session1.getAttribute("manEnemyList");
//		loop:for(ManEnemyBean e: manEnemyList) {
//			if(text.equals(e.getName())) {
//				//敵
//				Enemy enemy= e;
//				enemy.setHp(0);
//				HttpSession request1 =request.getSession();
//				request1.setAttribute("manEnemyList",manEnemyList );
//				break loop;
//			}
//				HttpSession session2 = request.getSession();
//				List<FoodEnemyBean> foodEnemyList = (List<FoodEnemyBean>)session2.getAttribute("foodEnemyList");
//				for(FoodEnemyBean f: foodEnemyList) {
//				if(text.equals(f.getName())) {
//				Enemy enemy=f;
//				enemy.setHp(0);
//				HttpSession request2 = request.getSession();
//				request2.setAttribute("foodEnemyList",foodEnemyList );
//				break loop;
//			}}}
//				//ヒーローセット(HP,MP)
//				HttpSession session = request.getSession();
//				HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");
//				int heroHp=Integer.parseInt(hHp);
//				hero.setHp(heroHp);
//				int heroMp=Integer.parseInt(hMp);
//				hero.setMp(heroMp);
//				//武器リストを回す
//				HttpSession session5 = request.getSession();
//				List<WeaponBean> weaponList=(List<WeaponBean>)session5.getAttribute("weaponList");
//				for(WeaponBean weapon:weaponList) {
//				if(drop.equals(weapon.getName())) {
//					WeaponBean dropweapon = weapon;
//					hero.setEquipment(dropweapon);
//				}}
//				//アイテムリストを回す
//				HttpSession session7 = request.getSession();
//				List<ItemBean>itemList=(List<ItemBean>)session7.getAttribute("itemList");
//				for(ItemBean item:itemList) {
//				if(drop.equals(item.getName())){
//				hero.setPersonal_belongings(drop);
//				}}
//				//ヒーローに飛ばす
//				HttpSession session6 = request.getSession();
//				session6.setAttribute("hero", hero);
//
//
			//Heroセッションスコープの破棄
			HttpSession session = request.getSession();
			session.invalidate();
			//飛ばす
			RequestDispatcher dispatcher3=request.getRequestDispatcher("endroll.html");
			dispatcher3.forward(request, response);
			}}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

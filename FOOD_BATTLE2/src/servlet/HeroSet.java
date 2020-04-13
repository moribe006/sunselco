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

import dao.ItemDao;
import dao.WeaponDao;
import model.HeroStatusBean;
import model.ItemBean;
import model.WeaponBean;

/**
 * Servlet implementation class HeroSet
 */
@WebServlet("/HeroSet")
public class HeroSet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");

		 // キャッシュを無効にする
		response.setHeader("Pragma","no-cache");
		response.setHeader("Cache-Control","no-cache");
		response.setDateHeader("Expires",0);
//		    response.setContentType("text/html; charset=Shift_JIS");
//		    PrintWriter out = response.getWriter();
//		    out.println("<html>");
//		    out.println("<head><title>CacheServlet</title></head>");
//		    out.println("<body>");
//		    out.println("このページはキャッシュされません。");
//		    out.println("</body></html>");
//		    out.close();



		//セッション破棄
		try {
		HttpSession session1 = request.getSession();
		HeroStatusBean hero1=(HeroStatusBean)session1.getAttribute("hero");
		if(hero1.getName()==name||hero1!=null||hero1.getName()==null||hero1.getName()=="") {
		HttpSession session = request.getSession();
		session.invalidate();
		}}catch(Exception e) {
		}

//		if(name =="") {
//			name=null;
//		}
		//アイテムリストをセッションに保存
		ItemDao itemDao = new ItemDao();
		List<ItemBean> itemList = itemDao.findAll();
		HttpSession session3 = request.getSession();
		session3.setAttribute("itemList", itemList);
		//装備リストをセッションに保存
		WeaponDao weaponDao = new WeaponDao();
		List<WeaponBean> weaponList = weaponDao.findAll();
		HttpSession session4 = request.getSession();
		session4.setAttribute("weaponList", weaponList);
		//heroのインスタンス化（セッションに保存）
		HeroStatusBean hero = new HeroStatusBean(name,100,40,40,0);
		//heroにアイテムリストをセット
		if( hero.getPersonal_belogingsList().size()==0) {
			hero.setPersonal_belogingsList(itemList);
			hero.setPersonal_belogingsList();
		}
		//heroに装備リストをセット
		if( hero.getPersonal_equipmentList().size()==0) {
			hero.setPersonal_equipmentList(weaponList);
			hero.setPersonal_equipmentList();
			//初期装備ではしを持たせる（装備はさせない）
			String syoki="はし";
			hero.setPersonal_equipmentList(syoki);
			//初期装備ではしを装備させる
			for(WeaponBean weapon:weaponList) {
				if(syoki.equals(weapon.getName())) {
			hero.setEquipment(weapon);

			}}}


		//heroのセッションを保存
		HttpSession session5 = request.getSession();
		session5.setAttribute("hero", hero);


		RequestDispatcher dispatcher = request.getRequestDispatcher("tolk.html");
		dispatcher.forward(request, response);

	}
}

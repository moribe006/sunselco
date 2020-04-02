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
import model.ManEnemyBean;

@WebServlet("/BossReady")
public class BossReady extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String text = request.getParameter("name");

		HttpSession session1 = request.getSession();
		List<ManEnemyBean> manEnemyList = (List<ManEnemyBean>)session1.getAttribute("manEnemyList");
		loop :for(ManEnemyBean e: manEnemyList) {
			if(text.equals(e.getName())) {
				//単体データの取得
				Enemy enemy= e;
				text=null;
				HttpSession request1 =request.getSession();
				request1.setAttribute("enemy",enemy );
				RequestDispatcher dispatcher1=request.getRequestDispatcher("BossBattleMain.jsp");
				dispatcher1.forward(request, response);
				break loop;
			}}
		//}else {
		//Listを取り出し敵の判定
		if(text!=(null)) {
		HttpSession session2 = request.getSession();
		List<FoodEnemyBean> foodEnemyList = (List<FoodEnemyBean>)session2.getAttribute("foodEnemyList");
		loop:for(FoodEnemyBean f: foodEnemyList) {
			if(text.equals(f.getName())) {
				//単体データの取得
				Enemy enemy=f;
				HttpSession request2 = request.getSession();
				//EnemyDataの名前の取り出し
				request2.setAttribute("enemy",enemy );
				RequestDispatcher dispatcher3=request.getRequestDispatcher("BossBattleMain.jsp");
				dispatcher3.forward(request, response);
				break loop;
			}}}}}
//		HttpSession request3 =request.getSession();
//		request3.setAttribute("Enemy.getName()",Enemy.getName() );
//		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/jsp/戦闘.jsp");
//		dispatcher.forward(request, response);

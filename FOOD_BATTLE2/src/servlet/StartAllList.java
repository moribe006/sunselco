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

import dao.FoodEnemyDao;
import dao.ManEnemyDao;
import model.FoodEnemyBean;
import model.ManEnemyBean;


@WebServlet("/StartAllList")
public class StartAllList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	FoodEnemyDao foodEnemyDao = new FoodEnemyDao();
	List<FoodEnemyBean> foodEnemyList = foodEnemyDao.findAll();
	HttpSession session1 = request.getSession();
	session1.setAttribute("foodEnemyList", foodEnemyList);

	ManEnemyDao manEnemyDao = new ManEnemyDao();
	List<ManEnemyBean> manEnemyList = manEnemyDao.findAll();
	HttpSession session2 = request.getSession();
	session2.setAttribute("manEnemyList", manEnemyList);


	RequestDispatcher dispatcher = request.getRequestDispatcher("map.jsp");
	dispatcher.forward(request, response);

	}
}

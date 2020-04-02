package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.HeroStatusBean;

/**
 * Servlet implementation class Toilet
 */
@WebServlet("/Toilet")
public class Toilet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");
		hero.setHp(hero.getMaxhp());
		hero.setMp(hero.getMinmp());
		HttpSession session5 = request.getSession();
		session5.setAttribute("hero", hero);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/toilet.jsp");
		dispatcher.forward(request, response);
	}}

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

@WebServlet("/Toilet")
public class Toilet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		HeroStatusBean hero = (HeroStatusBean)session.getAttribute("hero");
		//回復の為、マックスの値をセット
		hero.setHp(hero.getMaxhp());
		hero.setMp(hero.getMinmp());
		HttpSession session5 = request.getSession();
		session5.setAttribute("hero", hero);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/toilet.jsp");
		dispatcher.forward(request, response);
	}}

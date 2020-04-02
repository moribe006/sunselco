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
 * Servlet implementation class Heal
 */
@WebServlet("/Heal")
public class Heal extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Heal() {
        super();
       }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	String useitem=request.getParameter("name");
		HttpSession session1 = request.getSession();
		HeroStatusBean hero = (HeroStatusBean)session1.getAttribute("hero");
		hero.item(hero,useitem);
		HttpSession session2 = request.getSession();
		session2.setAttribute("hero", hero);

		RequestDispatcher dispatcher1 = request.getRequestDispatcher("map.jsp");
		dispatcher1.forward(request, response);
    	}
		}
